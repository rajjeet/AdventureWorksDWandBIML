CREATE TABLE [dw].[DimProductCategory] (
    [ProductCategoryKey] INT           IDENTITY (1, 1) NOT NULL,
    [ProductCategoryID]  INT           NOT NULL,
    [Name]               NVARCHAR (50) NOT NULL,
    [AuditId]            INT           NOT NULL,
    CONSTRAINT [PK_ProductCategory_ProductCategoryKey] PRIMARY KEY CLUSTERED ([ProductCategoryKey] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = '1', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProductCategory';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = '1', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProductCategory';


GO
EXECUTE sp_addextendedproperty @name = N'TableRole', @value = 'Dimension', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProductCategory';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'SK', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProductCategory', @level2type = N'COLUMN', @level2name = N'ProductCategoryKey';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'BK', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProductCategory', @level2type = N'COLUMN', @level2name = N'ProductCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'SCD1', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProductCategory', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'Audit', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProductCategory', @level2type = N'COLUMN', @level2name = N'AuditId';

