CREATE TABLE [dw].[DimProductSubcategory] (
    [ProductSubcategoryKey] INT           IDENTITY (1, 1) NOT NULL,
    [ProductSubcategoryID]  INT           NOT NULL,
    [ProductCategoryKey]    INT           NOT NULL,
    [ProductCategoryID]     INT           NOT NULL,
    [Name]                  NVARCHAR (50) NOT NULL,
    [AuditId]               INT           NOT NULL,
    CONSTRAINT [PK_ProductSubcategory_ProductSubcategoryKey] PRIMARY KEY CLUSTERED ([ProductSubcategoryKey] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = '2', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProductSubcategory';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = '1', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProductSubcategory';


GO
EXECUTE sp_addextendedproperty @name = N'TableRole', @value = 'Dimension', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProductSubcategory';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'SK', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProductSubcategory', @level2type = N'COLUMN', @level2name = N'ProductSubcategoryKey';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'BK', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProductSubcategory', @level2type = N'COLUMN', @level2name = N'ProductSubcategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'SCD1', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProductSubcategory', @level2type = N'COLUMN', @level2name = N'ProductCategoryKey';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'SCD1', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProductSubcategory', @level2type = N'COLUMN', @level2name = N'ProductCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'SCD1', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProductSubcategory', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'Audit', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProductSubcategory', @level2type = N'COLUMN', @level2name = N'AuditId';

