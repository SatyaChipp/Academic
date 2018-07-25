CREATE TABLE [dbo].[OrderDetails] (
    [OrderId]   INT           NOT NULL,
    [ProductId] INT           NOT NULL,
    [Quantity]  INT           NOT NULL,
    [Price]     MONEY         NOT NULL,
    [CreatedAt] DATETIME2 (0) NOT NULL,
    CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED ([OrderId] ASC, [ProductId] ASC)
);