CREATE TABLE [dbo].[Audit]
(
	[AuditId] INT NOT NULL Identity(1,1)
	,[ParentAuditId] int
	,[ExecutionInstanceGUID] uniqueidentifier
	,[MachineName] nvarchar(100)
	,[PackageID] uniqueidentifier
	,[ServerExecutionId] nvarchar(100)
	,[StartTime] datetime
	,[UserName] nvarchar(100)
	,[VersionBuild] smallint
	,[VersionGUID] uniqueidentifier
	,[VersionMajor] smallint
	,[VersionMinor] smallint
	,[TableSchemaName] nvarchar(15)
	,[TableName] nvarchar(100)
	,[ExtractRowCnt] int
	,[InsertRowCnt] int
	,[UpdateRowCnt] int
	,[ErrorRowCnt] int
	,[InitialTableRowCnt] int
	,[FinalTableRowCnt] int
	,[TableMaxDateTime] datetime
	,[IsSuccessful] nvarchar(1) default 'N'
	,CONSTRAINT PK_AuditId primary key clustered (AuditId)
)
