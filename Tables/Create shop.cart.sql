USE [Shop]
GO

/****** Object: Table [shop].[cart] Script Date: 21-10-2017 00:08:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [shop].[cart] (
    [cart_key] INT IDENTITY (1, 1) NOT NULL,
    [user_key] INT NULL,
    [book_key] INT NULL,
    [quantity] INT NULL
);


