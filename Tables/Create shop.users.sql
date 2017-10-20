USE [Shop]
GO

/****** Object: Table [shop].[users] Script Date: 21-10-2017 00:08:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [shop].[users] (
    [user_key] INT           IDENTITY (1, 1) NOT NULL,
    [name]     NVARCHAR (20) NOT NULL,
    [type]     CHAR (1)      NOT NULL,
    [email]    VARCHAR (100) NOT NULL,
    [dob]      DATE          NOT NULL,
    [password] VARCHAR (50)  NOT NULL
);


