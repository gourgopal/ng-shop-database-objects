CREATE PROCEDURE shop.BUY_BOOK
@user_key nvarchar(50),
@book_key int,
@quantity int
AS BEGIN
WHILE(@quantity > 0)
BEGIN
UPDATE shop.books SET quantity = quantity - 1 WHERE book_key = @book_key;
INSERT INTO shop.transactions(user_key,book_key) VALUES (@user_key, @book_key);
SET @quantity = @quantity - 1;
END
EXEC shop.DeleteFromCart @user_key, @book_key
END