USE [Shop]
GO

/****** Object: Table [shop].[books] Script Date: 21-10-2017 00:08:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [shop].[books] (
    [book_key]    INT             IDENTITY (1, 1) NOT NULL,
    [name]        NVARCHAR (100)  NULL,
    [author]      NVARCHAR (100)  NULL,
    [pages]       INT             NULL,
    [description] NVARCHAR (1000) NULL,
    [price]       NUMERIC (7, 2)  NULL,
    [quantity]    INT             NULL
);


