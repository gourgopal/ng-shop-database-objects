CREATE PROCEDURE shop.AddToCart
@user_key int,
@book_key int,
@quantity int
AS BEGIN
IF EXISTS (SELECT book_key from shop.cart WHERE user_key = @user_key AND book_key = @book_key)
BEGIN
UPDATE shop.cart SET quantity = quantity + @quantity WHERE user_key = @user_key AND book_key = @book_key
END
ELSE
BEGIN
INSERT INTO shop.cart (user_key, book_key, quantity) VALUES (@user_key, @book_key, @quantity)
END
END