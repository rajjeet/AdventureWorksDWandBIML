
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

  