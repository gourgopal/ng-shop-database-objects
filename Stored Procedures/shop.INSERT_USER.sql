CREATE PROCEDURE shop.INSERT_USER
    @user_key NVARCHAR(20) OUT,
    @name NVARCHAR(20),
    @type CHAR,
    @email VARCHAR(100),
    @dob DATE,
    @password VARCHAR(50)
	AS BEGIN
		INSERT INTO [shop].[users] ([name],[type],[email],[dob],[password]) VALUES(@name,@type,@email,@dob,@password)
		SET @user_key = SCOPE_IDENTITY()
	END