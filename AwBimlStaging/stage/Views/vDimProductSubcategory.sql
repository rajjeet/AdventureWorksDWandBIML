
create view stage.vDimProductSubcategory
as
SELECT 
      sc.[ProductSubcategoryID]
      ,c.[ProductCategoryKey]
      ,sc.[ProductCategoryID]
      ,sc.[Name]      
FROM [stage].[ProductSubcategory] sc
	JOIN [AwBimlEdw].[dw].[DimProductCategory] c on sc.ProductCategoryID = c.ProductCategoryKey