CREATE PROCEDURE [dbo].[spIns_Audit] (
	@ParentAuditId [int] 
	,@ExecutionInstanceGUID [uniqueidentifier] = NULL
	,@MachineName [nvarchar] = NULL
	,@PackageId [uniqueidentifier] = NULL
	,@ServerExecutionId [uniqueidentifier] = NULL
	,@StartTime [datetime] = NULL
	,@UserName [nvarchar] = NULL
	,@VersionBuild [smallint] = NULL
	,@VersionGUID [uniqueidentifier] = NULL
	,@VersionMajor [smallint] = NULL
	,@VersionMinor [smallint] = NULL
	,@TableSchemaName [nvarchar] = NULL
	,@TableName [nvarchar] = NULL
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

INSERT INTO [dbo].[Audit]
		   (
		   [ParentAuditId]
		   ,[ExecutionInstanceGUID]
		   ,[MachineName]
		   ,[PackageId]
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
	 VALUES
		   (
			@ParentAuditId
			,@ExecutionInstanceGUID
			,@MachineName
			,@PackageId
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
GO

