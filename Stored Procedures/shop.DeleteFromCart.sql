CREATE PROCEDURE shop.DeleteFromCart
@user_key int,
@book_key int
AS BEGIN
DELETE shop.cart WHERE user_key = @user_key AND book_key = @book_key
END