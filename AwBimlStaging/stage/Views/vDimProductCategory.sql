
create view stage.vDimProductCategory
as
SELECT 
      [ProductCategoryID]
      ,[Name]      
  FROM [stage].[ProductCategory]