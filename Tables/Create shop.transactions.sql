USE [Shop]
GO

/****** Object: Table [shop].[transactions] Script Date: 21-10-2017 00:08:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [shop].[transactions] (
    [transactions_key] INT IDENTITY (1, 1) NOT NULL,
    [user_key]         INT NULL,
    [book_key]         INT NULL
);


