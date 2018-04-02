use master
go

/*
Run this script on the data warehouse database server. This will create all the dimensions, facts, update, and other auxillary tables.
Everytime this script runs, it will drop all existing tables with same name. 

Note: metadata is added (extended properties) to auto-generate biml code. 
*/

if db_id('AwBimlEdw') is not null
	alter database AwBimlEdw set single_user with rollback immediate
	drop database AwBimlEdw
go

create database AwBimlEdw
go

use AwBimlEdw
go

create schema dw
go

CREATE TABLE [dw].[DimProduct](
	[ProductKey] int identity(1,1) not null,
	[ProductSubcategoryKey] int null,
	[ProductID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ProductNumber] [nvarchar](25) NOT NULL,
	[MakeFlag] [bit] NOT NULL,
	[FinishedGoodsFlag] [bit] NOT NULL,
	[Color] [nvarchar](15) NULL,
	[SafetyStockLevel] [smallint] NOT NULL,
	[ReorderPoint] [smallint] NOT NULL,
	[StandardCost] [money] NOT NULL,
	[ListPrice] [money] NOT NULL,
	[Size] [nvarchar](5) NULL,
	[SizeUnitMeasureCode] [nchar](3) NULL,
	[WeightUnitMeasureCode] [nchar](3) NULL,
	[Weight] [decimal](8, 2) NULL,
	[DaysToManufacture] [int] NOT NULL,
	[ProductLine] [nchar](2) NULL,
	[Class] [nchar](2) NULL,
	[Style] [nchar](2) NULL,
	[ProductSubcategoryID] [int] NULL,
	[ProductModelID] [int] NULL,
	[SellStartDate] [datetime] NOT NULL,
	[SellEndDate] [datetime] NULL,
	[DiscontinuedDate] [datetime] NULL,
	[StartDate] datetime not null,
	[EndDate] datetime null,
	AuditId int not null
	CONSTRAINT PK_Product_ProductKey Primary key clustered (ProductKey)
) ON [PRIMARY]
GO

exec sp_addextendedproperty @name='TableRole', @value='Dimension', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProduct'
exec sp_addextendedproperty @name='LoadOrder', @value='3', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProduct'
exec sp_addextendedproperty @name='SCDType', @value='2', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProduct'

exec sp_addextendedproperty @name='ColumnRole', @value='SK', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProduct', @level2type='COLUMN', @level2name='ProductKey'
exec sp_addextendedproperty @name='ColumnRole', @value='SCD2', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProduct', @level2type='COLUMN', @level2name='ProductSubcategoryKey'
exec sp_addextendedproperty @name='ColumnRole', @value='BK', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProduct', @level2type='COLUMN', @level2name='ProductID'
exec sp_addextendedproperty @name='ColumnRole', @value='SCD2', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProduct', @level2type='COLUMN', @level2name='Name'
exec sp_addextendedproperty @name='ColumnRole', @value='SCD1', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProduct', @level2type='COLUMN', @level2name='ProductNumber'
exec sp_addextendedproperty @name='ColumnRole', @value='SCD2', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProduct', @level2type='COLUMN', @level2name='MakeFlag'
exec sp_addextendedproperty @name='ColumnRole', @value='SCD2', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProduct', @level2type='COLUMN', @level2name='FinishedGoodsFlag'
exec sp_addextendedproperty @name='ColumnRole', @value='SCD2', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProduct', @level2type='COLUMN', @level2name='Color'
exec sp_addextendedproperty @name='ColumnRole', @value='SCD1', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProduct', @level2type='COLUMN', @level2name='SafetyStockLevel'
exec sp_addextendedproperty @name='ColumnRole', @value='SCD2', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProduct', @level2type='COLUMN', @level2name='ReorderPoint'
exec sp_addextendedproperty @name='ColumnRole', @value='SCD2', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProduct', @level2type='COLUMN', @level2name='StandardCost'
exec sp_addextendedproperty @name='ColumnRole', @value='SCD2', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProduct', @level2type='COLUMN', @level2name='ListPrice'
exec sp_addextendedproperty @name='ColumnRole', @value='SCD1', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProduct', @level2type='COLUMN', @level2name='Size'
exec sp_addextendedproperty @name='ColumnRole', @value='SCD1', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProduct', @level2type='COLUMN', @level2name='SizeUnitMeasureCode'
exec sp_addextendedproperty @name='ColumnRole', @value='SCD1', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProduct', @level2type='COLUMN', @level2name='WeightUnitMeasureCode'
exec sp_addextendedproperty @name='ColumnRole', @value='SCD1', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProduct', @level2type='COLUMN', @level2name='Weight'
exec sp_addextendedproperty @name='ColumnRole', @value='SCD2', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProduct', @level2type='COLUMN', @level2name='DaysToManufacture'
exec sp_addextendedproperty @name='ColumnRole', @value='SCD1', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProduct', @level2type='COLUMN', @level2name='ProductLine'
exec sp_addextendedproperty @name='ColumnRole', @value='SCD1', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProduct', @level2type='COLUMN', @level2name='Class'
exec sp_addextendedproperty @name='ColumnRole', @value='SCD1', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProduct', @level2type='COLUMN', @level2name='Style'
exec sp_addextendedproperty @name='ColumnRole', @value='SCD2', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProduct', @level2type='COLUMN', @level2name='ProductSubcategoryID'
exec sp_addextendedproperty @name='ColumnRole', @value='SCD1', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProduct', @level2type='COLUMN', @level2name='ProductModelID'
exec sp_addextendedproperty @name='ColumnRole', @value='SCD2', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProduct', @level2type='COLUMN', @level2name='SellStartDate'
exec sp_addextendedproperty @name='ColumnRole', @value='SCD2', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProduct', @level2type='COLUMN', @level2name='SellEndDate'
exec sp_addextendedproperty @name='ColumnRole', @value='SCD2', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProduct', @level2type='COLUMN', @level2name='DiscontinuedDate'
exec sp_addextendedproperty @name='ColumnRole', @value='StartDate', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProduct', @level2type='COLUMN', @level2name='StartDate'
exec sp_addextendedproperty @name='ColumnRole', @value='EndDate', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProduct', @level2type='COLUMN', @level2name='EndDate'
exec sp_addextendedproperty @name='ColumnRole', @value='Audit', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProduct', @level2type='COLUMN', @level2name='AuditId'


CREATE TABLE [dw].[DimProductSubcategory](
	[ProductSubcategoryKey] int identity(1,1) not null,
	[ProductSubcategoryID] [int] NOT NULL,
	[ProductCategoryKey] [int] NOT NULL,
	[ProductCategoryID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	AuditId int not null
	CONSTRAINT PK_ProductSubcategory_ProductSubcategoryKey PRIMARY KEY CLUSTERED (ProductSubcategoryKey)
) ON [PRIMARY]
GO

exec sp_addextendedproperty @name='TableRole', @value='Dimension', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProductSubcategory'
exec sp_addextendedproperty @name='LoadOrder', @value='2', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProductSubcategory'
exec sp_addextendedproperty @name='SCDType', @value='1', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProductSubcategory'

exec sp_addextendedproperty @name='ColumnRole', @value='SK', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProductSubcategory', @level2type='COLUMN', @level2name='ProductSubcategoryKey'
exec sp_addextendedproperty @name='ColumnRole', @value='BK', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProductSubcategory', @level2type='COLUMN', @level2name='ProductSubcategoryID'
exec sp_addextendedproperty @name='ColumnRole', @value='SCD1', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProductSubcategory', @level2type='COLUMN', @level2name='ProductCategoryKey'
exec sp_addextendedproperty @name='ColumnRole', @value='SCD1', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProductSubcategory', @level2type='COLUMN', @level2name='ProductCategoryID'
exec sp_addextendedproperty @name='ColumnRole', @value='SCD1', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProductSubcategory', @level2type='COLUMN', @level2name='Name'
exec sp_addextendedproperty @name='ColumnRole', @value='Audit', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProductSubcategory', @level2type='COLUMN', @level2name='AuditId'


CREATE TABLE [dw].[DimProductCategory](
	[ProductCategoryKey] int  identity(1,1) not null,
	[ProductCategoryID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	AuditId int not null
	CONSTRAINT PK_ProductCategory_ProductCategoryKey PRIMARY KEY CLUSTERED (ProductCategoryKey)
) ON [PRIMARY]
GO

exec sp_addextendedproperty @name='TableRole', @value='Dimension', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProductCategory'
exec sp_addextendedproperty @name='LoadOrder', @value='1', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProductCategory'
exec sp_addextendedproperty @name='SCDType', @value='1', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProductCategory'

exec sp_addextendedproperty @name='ColumnRole', @value='SK', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProductCategory', @level2type='COLUMN', @level2name='ProductCategoryKey'
exec sp_addextendedproperty @name='ColumnRole', @value='BK', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProductCategory', @level2type='COLUMN', @level2name='ProductCategoryID'
exec sp_addextendedproperty @name='ColumnRole', @value='SCD1', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProductCategory', @level2type='COLUMN', @level2name='Name'
exec sp_addextendedproperty @name='ColumnRole', @value='Audit', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='DimProductCategory', @level2type='COLUMN', @level2name='AuditId'


if object_id('[dw].[FactResellerSales]') is not null
	drop table [dw].[FactResellerSales]
go

CREATE TABLE [dw].[FactResellerSales](
	FactResellerSalesKey [int] identity(1,1) not null,
	[SalesOrderID] [int] NOT NULL,
	[SalesOrderDetailID] [int] NOT NULL,
	[CarrierTrackingNumber] [nvarchar](25) NULL,	
	[ProductID] [int] NOT NULL,
	[ProductKey] [int] not null,
	[UnitPrice] [money] NOT NULL,
	[UnitPriceDiscount] [money] NOT NULL,
	[LineTotal] [decimal](38, 6) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[DueDate] [datetime] NOT NULL,
	[ShipDate] [datetime] NULL,
	[Status] [tinyint] NOT NULL,	
	[SalesOrderNumber] [nvarchar](25) NOT NULL,
	[AccountNumber] [nvarchar](15) NULL,	
	[CreditCardApprovalCode] [varchar](15) NULL,
	[CurrencyRateID] [int] NULL,
	[OrderQty] [smallint] NOT NULL,
	[SubTotal] [money] NOT NULL,
	[TaxAmt] [money] NOT NULL,
	[Freight] [money] NOT NULL,
	[TotalDue] [money] NOT NULL,
	[Comment] [nvarchar](128) NULL,	
	[ModifiedDate] [datetime] NOT NULL,
	[AuditId] int null,
	CONSTRAINT PK_FactResellerSales primary key clustered (FactResellerSalesKey),
	CONSTRAINT FK_DimProduct_ProductKey foreign key (ProductKey) references dw.DimProduct(ProductKey)
) ON [PRIMARY]
GO

exec sp_addextendedproperty @name='TableRole', @value='Fact', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='FactResellerSales'
exec sp_addextendedproperty @name='LoadOrder', @value='1', @level0type='SCHEMA', @level0name='dw', @level1type='TABLE', @level1name='FactResellerSales'
go


if object_id('[dw].[Audit]','U') is not null
	drop table [dw].[Audit]
go

CREATE TABLE [dw].[DimAudit](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[ParentAuditId] [int] NULL,
	[ExecutionInstanceGUID] [uniqueidentifier] NULL,
	[MachineName] [nvarchar](100) NULL,
	[PackageId] [uniqueidentifier] NULL,
	[ServerExecutionId] [nvarchar](100) NULL,
	[StartTime] [datetime] NULL,
	[UserName] [nvarchar](100) NULL,
	[VersionBuild] [smallint] NULL,
	[VersionGUID] [uniqueidentifier] NULL,
	[VersionMajor] [smallint] NULL,
	[VersionMinor] [smallint] NULL,
	[TableSchemaName] [nvarchar](15) NULL,
	[TableName] [nvarchar](100) NULL,
	[ExtractRowCnt] [int] NULL,
	[InsertRowCnt] [int] NULL,
	[UpdateRowCnt] [int] NULL,
	[ErrorRowCnt] [int] NULL,
	[InitialTableRowCnt] [int] NULL,
	[FinalTableRowCnt] [int] NULL,
	[TableMaxDateTime] [datetime] NULL,
	[IsSuccessful] [nvarchar](1) NULL,
 CONSTRAINT [PK_AuditId] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dw].[DimAudit] ADD  DEFAULT ('N') FOR [IsSuccessful]
GO


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
			,@IsSuccessful
		   )
GO


CREATE procedure [dw].[spUpd_Audit] (
	@AuditId int
	,@ExtractRowCnt int
	,@InsertRowCnt int
	,@UpdateRowCnt int
	,@ErrorRowCnt int
	,@InitialTableRowCnt int
	,@FinalTableRowCnt int
)
as
UPDATE [dw].[DimAudit]
   SET 
	  [ExtractRowCnt] = @ExtractRowCnt
	  ,[InsertRowCnt] = @InsertRowCnt
	  ,[UpdateRowCnt] = @UpdateRowCnt
	  ,[ErrorRowCnt] = @ErrorRowCnt
	  ,[InitialTableRowCnt] = @InitialTableRowCnt
	  ,[FinalTableRowCnt] = @FinalTableRowCnt
	  ,[IsSuccessful] = 'Y'
 WHERE AuditId = @AuditId
GO

create schema stage
go


if object_id('[stage].[Update_DimProduct]','U') is not null
	drop table [stage].[Update_DimProduct]
go

CREATE TABLE [stage].[Update_DimProduct](
	[ProductKey] int identity(1,1) not null,
	[ProductSubcategoryKey] int null,
	[ProductID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ProductNumber] [nvarchar](25) NOT NULL,
	[MakeFlag] [bit] NOT NULL,
	[FinishedGoodsFlag] [bit] NOT NULL,
	[Color] [nvarchar](15) NULL,
	[SafetyStockLevel] [smallint] NOT NULL,
	[ReorderPoint] [smallint] NOT NULL,
	[StandardCost] [money] NOT NULL,
	[ListPrice] [money] NOT NULL,
	[Size] [nvarchar](5) NULL,
	[SizeUnitMeasureCode] [nchar](3) NULL,
	[WeightUnitMeasureCode] [nchar](3) NULL,
	[Weight] [decimal](8, 2) NULL,
	[DaysToManufacture] [int] NOT NULL,
	[ProductLine] [nchar](2) NULL,
	[Class] [nchar](2) NULL,
	[Style] [nchar](2) NULL,
	[ProductSubcategoryID] [int] NULL,
	[ProductModelID] [int] NULL,
	[SellStartDate] [datetime] NOT NULL,
	[SellEndDate] [datetime] NULL,
	[DiscontinuedDate] [datetime] NULL,
	[StartDate] datetime null,
	[EndDate] datetime null,
	AuditId int null
) ON [PRIMARY]
GO

if object_id('[stage].[Update_DimProductSubcategory]') is not null
	drop table [stage].[Update_DimProductSubcategory]
go

CREATE TABLE [stage].[Update_DimProductSubcategory](
	[ProductSubcategoryKey] int identity(1,1) not null,
	[ProductSubcategoryID] [int] NOT NULL,
	[ProductCategoryKey] [int] NOT NULL,
	[ProductCategoryID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	AuditId int null	
) ON [PRIMARY]
GO


if object_id('[stage].[Update_DimProductCategory]') is not null
	drop table [stage].[Update_DimProductCategory]
go

CREATE TABLE [stage].[Update_DimProductCategory](
	[ProductCategoryKey] int  identity(1,1) not null,
	[ProductCategoryID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	AuditId int null	
) ON [PRIMARY]
GO

if object_id('[stage].[SourceTargetFactMapping]') is not null
	drop table [stage].[SourceTargetFactMapping]
go

create table [stage].[SourceTargetFactMapping] (
	SourceSchemaName nvarchar(100),
	SourceTableName nvarchar(50),
	TargetSchemaName nvarchar(100),
	TargetTableName nvarchar(50)
)

insert [stage].[SourceTargetFactMapping] values
('Sales','SalesOrderHeader','dw','FactResellerSales'),
('Sales','SalesOrderDetail','dw','FactResellerSales')