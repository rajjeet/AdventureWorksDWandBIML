CREATE TABLE [stage].[tmp_scd_DimProductCategory] (
    [ProductCategoryKey] INT           IDENTITY (1, 1) NOT NULL,
    [ProductCategoryID]  INT           NOT NULL,
    [Name]               NVARCHAR (50) NOT NULL,
    [AuditId]            INT           NOT NULL
);

