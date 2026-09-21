CREATE SEQUENCE [nmped].[StaffDevelopment_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [nmped].[StaffDevelopment] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [nmped].[StaffDevelopment_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_StaffDevelopment_AggregateId] ON [nmped].[StaffDevelopment] (AggregateId);

CREATE SEQUENCE [nmped].[StudentCTEProgramAssociationCredential_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [nmped].[StudentCTEProgramAssociationCredential] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [nmped].[StudentCTEProgramAssociationCredential_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_StudentCTEProgramAssociationCredential_AggregateId] ON [nmped].[StudentCTEProgramAssociationCredential] (AggregateId);

CREATE SEQUENCE [nmped].[StudentEducationOrganizationAward_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [nmped].[StudentEducationOrganizationAward] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [nmped].[StudentEducationOrganizationAward_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_StudentEducationOrganizationAward_AggregateId] ON [nmped].[StudentEducationOrganizationAward] (AggregateId);

