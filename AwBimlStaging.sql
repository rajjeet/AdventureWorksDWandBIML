Use AwBimlStaging
go

/*
This script only contains the views for staging the load packages.
Other stage objects are created via SSIS - using "Generate Staging Schema.dtsx" created by BimlScript
*/

if object_id('stage.vDimProductCategory','V') is not null
	drop view stage.vDimProductCategory
go

create view stage.vDimProductCategory
as
SELECT 
      [ProductCategoryID]
      ,[Name]      
  FROM [stage].[ProductCategory]
GO


if object_id('stage.vDimProductSubcategory','V') is not null
	drop view stage.vDimProductSubcategory
go

create view stage.vDimProductSubcategory
as
SELECT 
      sc.[ProductSubcategoryID]
      ,c.[ProductCategoryKey]
      ,sc.[ProductCategoryID]
      ,sc.[Name]      
FROM [stage].[ProductSubcategory] sc
	JOIN [AwBimlEdw].[dw].[DimProductCategory] c on sc.ProductCategoryID = c.ProductCategoryKey
GO


if object_id('stage.vDimProduct','V') is not null
	drop view stage.vDimProduct
go

create view stage.vDimProduct as
SELECT p.[ProductID]
      ,sc.[ProductSubcategoryKey]      
      ,p.[Name]
      ,p.[ProductNumber]
      ,p.[MakeFlag]
      ,p.[FinishedGoodsFlag]
      ,p.[Color]
      ,p.[SafetyStockLevel]
      ,p.[ReorderPoint]
      ,p.[StandardCost]
      ,p.[ListPrice]
      ,p.[Size]
      ,p.[SizeUnitMeasureCode]
      ,p.[WeightUnitMeasureCode]
      ,p.[Weight]
      ,p.[DaysToManufacture]
      ,p.[ProductLine]
      ,p.[Class]
      ,p.[Style]
      ,p.[ProductSubcategoryID]
      ,p.[ProductModelID]
      ,p.[SellStartDate]
      ,p.[SellEndDate]
      ,p.[DiscontinuedDate]
	  ,getdate() as StartDate
	  ,cast(null as datetime) as EndDate
  FROM [stage].[Product] p
  JOIN [AwBimlEdw].dw.DimProductSubcategory sc on p.ProductSubcategoryID = sc.ProductSubcategoryKey
GO


if object_id('[stage].[vFactResellerSales]','V') is not null
	drop view [stage].[vFactResellerSales]
go

create view [stage].[vFactResellerSales]
as
SELECT 
	  sod.[SalesOrderID]
      ,sod.[SalesOrderDetailID]
	  ,p.ProductKey
      ,sod.[CarrierTrackingNumber]
      ,sod.[OrderQty]
      ,sod.[ProductID]
      ,sod.[SpecialOfferID]
      ,sod.[UnitPrice]
      ,sod.[UnitPriceDiscount]
      ,sod.[LineTotal]
      ,sod.[ModifiedDate]
      ,soh.[RevisionNumber]
      ,soh.[OrderDate]
      ,soh.[DueDate]
      ,soh.[ShipDate]
      ,soh.[Status]
      ,soh.[SalesOrderNumber]
      ,soh.[PurchaseOrderNumber]
      ,soh.[AccountNumber]
      ,soh.[CustomerID]
      ,soh.[SalesPersonID]
      ,soh.[TerritoryID]
      ,soh.[BillToAddressID]
      ,soh.[ShipToAddressID]
      ,soh.[ShipMethodID]
      ,soh.[CreditCardID]
      ,soh.[CreditCardApprovalCode]
      ,soh.[CurrencyRateID]
      ,soh.[SubTotal]
      ,soh.[TaxAmt]
      ,soh.[Freight]
      ,soh.[TotalDue]
      ,soh.[Comment]
  FROM [stage].[SalesOrderHeader] soh
  JOIN [stage].[SalesOrderDetail] sod ON soh.SalesOrderID = sod.SalesOrderID
  LEFT  JOIN (SELECT ProductKey, ProductId FROM AwBimlEdw.[dw].[DimProduct] WHERE EndDate IS NULL) p on sod.ProductID = p.ProductID
  WHERE soh.[OnlineOrderFlag] = 0
GO






