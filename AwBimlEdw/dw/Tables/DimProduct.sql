CREATE TABLE [dw].[DimProduct] (
    [ProductKey]            INT            IDENTITY (1, 1) NOT NULL,
    [ProductSubcategoryKey] INT            NULL,
    [ProductID]             INT            NOT NULL,
    [Name]                  NVARCHAR (50)  NOT NULL,
    [ProductNumber]         NVARCHAR (25)  NOT NULL,
    [MakeFlag]              BIT            NOT NULL,
    [FinishedGoodsFlag]     BIT            NOT NULL,
    [Color]                 NVARCHAR (15)  NULL,
    [SafetyStockLevel]      SMALLINT       NOT NULL,
    [ReorderPoint]          SMALLINT       NOT NULL,
    [StandardCost]          MONEY          NOT NULL,
    [ListPrice]             MONEY          NOT NULL,
    [Size]                  NVARCHAR (5)   NULL,
    [SizeUnitMeasureCode]   NCHAR (3)      NULL,
    [WeightUnitMeasureCode] NCHAR (3)      NULL,
    [Weight]                DECIMAL (8, 2) NULL,
    [DaysToManufacture]     INT            NOT NULL,
    [ProductLine]           NCHAR (2)      NULL,
    [Class]                 NCHAR (2)      NULL,
    [Style]                 NCHAR (2)      NULL,
    [ProductSubcategoryID]  INT            NULL,
    [ProductModelID]        INT            NULL,
    [SellStartDate]         DATETIME       NOT NULL,
    [SellEndDate]           DATETIME       NULL,
    [DiscontinuedDate]      DATETIME       NULL,
    [StartDate]             DATETIME       NOT NULL,
    [EndDate]               DATETIME       NULL,
    [AuditId]               INT            NOT NULL,
    CONSTRAINT [PK_Product_ProductKey] PRIMARY KEY CLUSTERED ([ProductKey] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = '3', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProduct';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = '2', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProduct';


GO
EXECUTE sp_addextendedproperty @name = N'TableRole', @value = 'Dimension', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProduct';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'SK', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductKey';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'SCD2', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductSubcategoryKey';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'BK', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'SCD2', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'SCD1', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductNumber';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'SCD2', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'MakeFlag';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'SCD2', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'FinishedGoodsFlag';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'SCD2', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Color';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'SCD1', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SafetyStockLevel';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'SCD2', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ReorderPoint';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'SCD2', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'StandardCost';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'SCD2', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ListPrice';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'SCD1', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Size';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'SCD1', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SizeUnitMeasureCode';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'SCD1', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'WeightUnitMeasureCode';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'SCD1', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Weight';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'SCD2', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'DaysToManufacture';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'SCD1', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductLine';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'SCD1', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Class';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'SCD1', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'Style';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'SCD2', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductSubcategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'SCD1', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'ProductModelID';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'SCD2', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SellStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'SCD2', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'SellEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'SCD2', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'DiscontinuedDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'StartDate', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'EndDate', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'ColumnRole', @value = 'Audit', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'DimProduct', @level2type = N'COLUMN', @level2name = N'AuditId';

