CREATE TABLE [dw].[FactResellerSales] (
    [FactResellerSalesKey]   INT             IDENTITY (1, 1) NOT NULL,
    [SalesOrderID]           INT             NOT NULL,
    [SalesOrderDetailID]     INT             NOT NULL,
    [CarrierTrackingNumber]  NVARCHAR (25)   NULL,
    [ProductID]              INT             NOT NULL,
    [ProductKey]             INT             NOT NULL,
    [UnitPrice]              MONEY           NOT NULL,
    [UnitPriceDiscount]      MONEY           NOT NULL,
    [LineTotal]              DECIMAL (38, 6) NOT NULL,
    [OrderDate]              DATETIME        NOT NULL,
    [DueDate]                DATETIME        NOT NULL,
    [ShipDate]               DATETIME        NULL,
    [Status]                 TINYINT         NOT NULL,
    [SalesOrderNumber]       NVARCHAR (25)   NOT NULL,
    [AccountNumber]          NVARCHAR (15)   NULL,
    [CreditCardApprovalCode] VARCHAR (15)    NULL,
    [CurrencyRateID]         INT             NULL,
    [OrderQty]               SMALLINT        NOT NULL,
    [SubTotal]               MONEY           NOT NULL,
    [TaxAmt]                 MONEY           NOT NULL,
    [Freight]                MONEY           NOT NULL,
    [TotalDue]               MONEY           NOT NULL,
    [Comment]                NVARCHAR (128)  NULL,
    [ModifiedDate]           DATETIME        NOT NULL,
    [AuditId]                INT             NULL,
    CONSTRAINT [PK_FactResellerSales] PRIMARY KEY CLUSTERED ([FactResellerSalesKey] ASC),
    CONSTRAINT [FK_DimProduct_ProductKey] FOREIGN KEY ([ProductKey]) REFERENCES [dw].[DimProduct] ([ProductKey])
);




GO
EXECUTE sp_addextendedproperty @name = N'TableRole', @value = 'Fact', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'FactResellerSales';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = '1', @level0type = N'SCHEMA', @level0name = N'dw', @level1type = N'TABLE', @level1name = N'FactResellerSales';

