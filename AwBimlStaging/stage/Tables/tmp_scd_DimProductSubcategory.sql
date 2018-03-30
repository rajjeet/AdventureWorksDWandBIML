CREATE TABLE [stage].[tmp_scd_DimProductSubcategory] (
    [ProductSubcategoryKey] INT           IDENTITY (1, 1) NOT NULL,
    [ProductSubcategoryID]  INT           NOT NULL,
    [ProductCategoryKey]    INT           NOT NULL,
    [ProductCategoryID]     INT           NOT NULL,
    [Name]                  NVARCHAR (50) NOT NULL,
    [AuditId]               INT           NOT NULL
);

