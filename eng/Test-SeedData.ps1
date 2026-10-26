#!/usr/bin/env pwsh
# SPDX-License-Identifier: Apache-2.0
# Licensed to the Ed-Fi Alliance under one or more agreements.
# The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
# See the LICENSE and NOTICES files in the project root for more information.

<#
.SYNOPSIS
    Validates state seed data XML files against the MetaEd-generated XSD files.

.DESCRIPTION
    Takes a state directory (for example eng/NMPED) that contains a mySchemas folder
    and a seedData folder. Finds every .xml file under seedData and validates it against the
    interchange schema that declares its root element (for example InterchangeDescriptors).
    The schema is chosen from the files in mySchemas, not from the
    xsi:schemaLocation hint in the seed file. When an extension interchange schema
    (EXTENSION-Interchange-*-Extension.xsd) declares the same root element as a core
    interchange schema, the extension schema is used.

    The mySchemas folder must contain the core and extension XSD files from the MetaEd
    build output in a single folder: Ed-Fi-Core.xsd, SchemaAnnotation.xsd,
    Interchange-*.xsd, EXTENSION-Ed-Fi-Extended-Core.xsd and
    EXTENSION-Interchange-*-Extension.xsd.

    Exits with code 1 when any file has validation errors, cannot be parsed, or has a
    root element that no schema declares.

.PARAMETER StateDirectory
    Required. The state's top-level folder, for example eng/NMPED. It must contain a
    mySchemas folder with the XSD files and a seedData folder, which is searched
    recursively for .xml files. Relative paths resolve from the current directory.

.PARAMETER MaxIssuesPerFile
    Maximum number of validation issues printed for each file. All issues are still
    counted. Defaults to 20.

.EXAMPLE
    ./eng/Test-SeedData.ps1 eng/NMPED

.EXAMPLE
    ./eng/Test-SeedData.ps1 -StateDirectory eng/MyState -Verbose
#>
[Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidUsingWriteHost', '', Justification = 'Validation script intentionally writes operator progress and results to the console.')]
[CmdletBinding()]
param(
    [Parameter(Mandatory = $true, Position = 0)]
    [string]$StateDirectory,

    [int]$MaxIssuesPerFile = 20
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

if (-not (Test-Path $StateDirectory -PathType Container)) {
    throw "State directory not found: $StateDirectory"
}

$statePath = (Resolve-Path $StateDirectory).Path

function Get-RelativeDisplayPath {
    param([string]$Path)

    if ($Path.StartsWith($statePath, [System.StringComparison]::OrdinalIgnoreCase)) {
        return $Path.Substring($statePath.Length).TrimStart('\', '/')
    }

    return $Path
}

<#
    Maps "{namespace}RootElement" to the interchange XSD that declares it, preferring
    extension interchange schemas over core ones.
#>
function Get-RootElementSchemaMap {
    param([string]$Directory)

    $map = @{}
    $xsNamespace = "http://www.w3.org/2001/XMLSchema"

    $schemaFiles = Get-ChildItem -Path $Directory -Filter "*.xsd" -File |
        Sort-Object { if ($_.Name -like "EXTENSION-*") { 1 } else { 0 } }, Name

    foreach ($schemaFile in $schemaFiles) {
        $document = New-Object System.Xml.XmlDocument
        $document.Load($schemaFile.FullName)

        $namespaceManager = New-Object System.Xml.XmlNamespaceManager($document.NameTable)
        $namespaceManager.AddNamespace("xs", $xsNamespace)

        $targetNamespace = $document.DocumentElement.GetAttribute("targetNamespace")
        $isExtension = $schemaFile.Name -like "EXTENSION-*"

        foreach ($element in $document.SelectNodes("/xs:schema/xs:element", $namespaceManager)) {
            $key = "{$targetNamespace}$($element.GetAttribute('name'))"

            if ($map.ContainsKey($key) -and $map[$key].IsExtension -and $isExtension) {
                throw "Root element $key is declared by both $($map[$key].Path) and $($schemaFile.FullName)."
            }

            # Files are processed core first, so an extension declaration replaces the core one.
            $map[$key] = [pscustomobject]@{
                Path        = $schemaFile.FullName
                IsExtension = $isExtension
            }
        }
    }

    return $map
}

function New-CompiledSchemaSet {
    param([string]$SchemaPath)

    $schemaSet = New-Object System.Xml.Schema.XmlSchemaSet
    $schemaSet.XmlResolver = New-Object System.Xml.XmlUrlResolver

    $schemaReader = [System.Xml.XmlReader]::Create($SchemaPath)
    try {
        $null = $schemaSet.Add([System.Xml.Schema.XmlSchema]::Read($schemaReader, $null))
    }
    finally {
        $schemaReader.Close()
    }

    $schemaSet.Compile()
    return $schemaSet
}

function Get-RootElementKey {
    param([string]$Path)

    $settings = New-Object System.Xml.XmlReaderSettings
    $settings.DtdProcessing = [System.Xml.DtdProcessing]::Prohibit

    $reader = [System.Xml.XmlReader]::Create($Path, $settings)
    try {
        $null = $reader.MoveToContent()
        return "{$($reader.NamespaceURI)}$($reader.LocalName)"
    }
    finally {
        $reader.Close()
    }
}

function Test-SeedDataFile {
    param(
        [string]$Path,
        [System.Xml.Schema.XmlSchemaSet]$SchemaSet
    )

    $issues = New-Object System.Collections.Generic.List[object]

    $settings = New-Object System.Xml.XmlReaderSettings
    $settings.DtdProcessing = [System.Xml.DtdProcessing]::Prohibit
    $settings.ValidationType = [System.Xml.ValidationType]::Schema
    $settings.ValidationFlags = $settings.ValidationFlags -bor [System.Xml.Schema.XmlSchemaValidationFlags]::ReportValidationWarnings
    $settings.Schemas = $SchemaSet
    $settings.add_ValidationEventHandler({
            param($sender, $eventArgs)
            $issues.Add([pscustomobject]@{
                    Severity = $eventArgs.Severity.ToString()
                    Line     = $eventArgs.Exception.LineNumber
                    Column   = $eventArgs.Exception.LinePosition
                    Message  = $eventArgs.Message
                })
        }.GetNewClosure())

    $reader = [System.Xml.XmlReader]::Create($Path, $settings)
    try {
        while ($reader.Read()) { }
    }
    catch [System.Xml.XmlException] {
        $issues.Add([pscustomobject]@{
                Severity = "Error"
                Line     = $_.Exception.LineNumber
                Column   = $_.Exception.LinePosition
                Message  = $_.Exception.Message
            })
    }
    finally {
        $reader.Close()
    }

    return , $issues
}

$schemaPath = Join-Path $statePath "mySchemas"
$seedDataPath = Join-Path $statePath "seedData"

if (-not (Test-Path $schemaPath -PathType Container)) {
    throw "Schema directory not found: $schemaPath. The state directory must contain a mySchemas folder."
}

if (-not (Test-Path $seedDataPath -PathType Container)) {
    throw "Seed data directory not found: $seedDataPath. The state directory must contain a seedData folder."
}

Write-Host "State directory:     $statePath"
Write-Host "Schema directory:    $schemaPath"
Write-Host "Seed data directory: $seedDataPath"

$rootElementSchemaMap = Get-RootElementSchemaMap -Directory $schemaPath
if ($rootElementSchemaMap.Count -eq 0) {
    throw "No root elements are declared by the XSD files in $schemaPath. Copy the Interchange XSD files from the MetaEd output into this folder."
}

$compiledSchemaSets = @{}
$seedFiles = @(Get-ChildItem -Path $seedDataPath -Filter "*.xml" -File -Recurse | Sort-Object FullName)

Write-Host "Validating $($seedFiles.Count) seed data file(s)..."
Write-Host ""

$failedFiles = 0
$errorCount = 0
$warningCount = 0
$filesBySchema = @{}

foreach ($seedFile in $seedFiles) {
    $displayPath = Get-RelativeDisplayPath $seedFile.FullName

    try {
        $rootKey = Get-RootElementKey -Path $seedFile.FullName
    }
    catch [System.Xml.XmlException] {
        Write-Host "FAIL $displayPath" -ForegroundColor Red
        Write-Host "    ($($_.Exception.LineNumber),$($_.Exception.LinePosition)) Error: $($_.Exception.Message)"
        $failedFiles++
        $errorCount++
        continue
    }

    if (-not $rootElementSchemaMap.ContainsKey($rootKey)) {
        Write-Host "FAIL $displayPath" -ForegroundColor Red
        Write-Host "    Error: No schema in $schemaPath declares root element $rootKey"
        $failedFiles++
        $errorCount++
        continue
    }

    $interchangeSchemaPath = $rootElementSchemaMap[$rootKey].Path
    if (-not $compiledSchemaSets.ContainsKey($interchangeSchemaPath)) {
        $compiledSchemaSets[$interchangeSchemaPath] = New-CompiledSchemaSet -SchemaPath $interchangeSchemaPath
    }

    $schemaName = Split-Path $interchangeSchemaPath -Leaf
    $filesBySchema[$schemaName] = 1 + $(if ($filesBySchema.ContainsKey($schemaName)) { $filesBySchema[$schemaName] } else { 0 })

    $issues = Test-SeedDataFile -Path $seedFile.FullName -SchemaSet $compiledSchemaSets[$interchangeSchemaPath]
    $fileErrors = @($issues | Where-Object { $_.Severity -eq "Error" }).Count
    $fileWarnings = $issues.Count - $fileErrors
    $errorCount += $fileErrors
    $warningCount += $fileWarnings

    if ($issues.Count -eq 0) {
        Write-Verbose "PASS $displayPath ($schemaName)"
        continue
    }

    if ($fileErrors -gt 0) {
        Write-Host "FAIL $displayPath ($schemaName)" -ForegroundColor Red
        $failedFiles++
    }
    else {
        Write-Host "WARN $displayPath ($schemaName)" -ForegroundColor Yellow
    }

    $issues | Select-Object -First $MaxIssuesPerFile | ForEach-Object {
        Write-Host "    ($($_.Line),$($_.Column)) $($_.Severity): $($_.Message)"
    }

    if ($issues.Count -gt $MaxIssuesPerFile) {
        Write-Host "    ... $($issues.Count - $MaxIssuesPerFile) more issue(s) not shown"
    }
}

Write-Host ""
Write-Host "Schemas used:"
$filesBySchema.GetEnumerator() | Sort-Object Name | ForEach-Object {
    Write-Host "  $($_.Name): $($_.Value) file(s)"
}

Write-Host ""
$summary = "$($seedFiles.Count) file(s) checked, $failedFiles failed, $errorCount error(s), $warningCount warning(s)."
if ($failedFiles -gt 0) {
    Write-Host $summary -ForegroundColor Red
    exit 1
}

Write-Host $summary -ForegroundColor Green
