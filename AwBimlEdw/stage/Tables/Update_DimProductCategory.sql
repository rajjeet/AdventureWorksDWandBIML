CREATE TABLE [stage].[Update_DimProductCategory] (
    [ProductCategoryKey] INT           IDENTITY (1, 1) NOT NULL,
    [ProductCategoryID]  INT           NOT NULL,
    [Name]               NVARCHAR (50) NOT NULL,
    [AuditId]            INT           NULL
);



