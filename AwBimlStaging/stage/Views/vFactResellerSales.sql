
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