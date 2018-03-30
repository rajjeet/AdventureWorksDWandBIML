CREATE PROCEDURE [dw].[spIns_Audit] (
	@ParentAuditId [int] 
	,@ExecutionInstanceGUID [uniqueidentifier] = NULL
	,@MachineName [nvarchar] (100) = NULL
	,@PackageID [uniqueidentifier] = NULL
	,@ServerExecutionId [nvarchar](100) = NULL
	,@StartTime [datetime] = NULL
	,@UserName [nvarchar] (100) = NULL
	,@VersionBuild [smallint] = NULL
	,@VersionGUID [uniqueidentifier] = NULL
	,@VersionMajor [smallint] = NULL
	,@VersionMinor [smallint] = NULL
	,@TableSchemaName [nvarchar] (15) = NULL
	,@TableName [nvarchar] (100) = NULL
	,@ExtractRowCnt [int] = NULL
	,@InsertRowCnt [int] = NULL
	,@UpdateRowCnt [int] = NULL
	,@ErrorRowCnt [int] = NULL
	,@InitialTableRowCnt [int] = NULL
	,@FinalTableRowCnt [int] = NULL
	,@TableMaxDateTime [datetime] = NULL
	,@IsSuccessful [nvarchar] = NULL
)
AS

INSERT INTO [dw].[DimAudit]
		   (
		   [ParentAuditId]
		   ,[ExecutionInstanceGUID]
		   ,[MachineName]
		   ,[PackageID]
		   ,[ServerExecutionId]
		   ,[StartTime]
		   ,[UserName]
		   ,[VersionBuild]
		   ,[VersionGUID]
		   ,[VersionMajor]
		   ,[VersionMinor]
		   ,[TableSchemaName]
		   ,[TableName]
		   ,[ExtractRowCnt]
		   ,[InsertRowCnt]
		   ,[UpdateRowCnt]
		   ,[ErrorRowCnt]
		   ,[InitialTableRowCnt]
		   ,[FinalTableRowCnt]
		   ,[TableMaxDateTime]
		   ,[IsSuccessful]
		   )
	OUTPUT inserted.AuditId
	 VALUES
		   (
			@ParentAuditId
			,@ExecutionInstanceGUID
			,@MachineName
			,@PackageID
			,@ServerExecutionId
			,@StartTime
			,@UserName
			,@VersionBuild
			,@VersionGUID
			,@VersionMajor
			,@VersionMinor
			,@TableSchemaName
			,@TableName
			,@ExtractRowCnt
			,@InsertRowCnt
			,@UpdateRowCnt
			,@ErrorRowCnt
			,@InitialTableRowCnt
			,@FinalTableRowCnt
			,@TableMaxDateTime
			,@IsSuccessful
		   )