create procedure dbo.spUpd_Audit (
	@AuditId int
	,@ExtractRowCnt int
	,@InsertRowCnt int
	,@UpdateRowCnt int
	,@ErrorRowCnt int
	,@InitialTableRowCnt int
	,@FinalTableRowCnt int
	,@TableMaxDateTime datetime
)
as
UPDATE [dbo].[Audit]
   SET 
	  [ExtractRowCnt] = @ExtractRowCnt
	  ,[InsertRowCnt] = @InsertRowCnt
	  ,[UpdateRowCnt] = @UpdateRowCnt
	  ,[ErrorRowCnt] = @ErrorRowCnt
	  ,[InitialTableRowCnt] = @InitialTableRowCnt
	  ,[FinalTableRowCnt] = @FinalTableRowCnt
	  ,[TableMaxDateTime] = @TableMaxDateTime
	  ,[IsSuccessful] = 'Y'
 WHERE AuditId = @AuditId
GO