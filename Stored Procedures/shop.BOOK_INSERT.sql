CREATE PROCEDURE shop.BOOK_INSERT
@book_key int OUT,
@name nvarchar(100),
@author nvarchar(100),
@pages int,
@description nvarchar(1000),
@price numeric(7,2),
@quantity int
AS BEGIN
IF EXISTS (SELECT book_key from shop.books WHERE name = @name AND author = @author)
BEGIN
UPDATE shop.books SET quantity = quantity + @quantity, price = @price, pages = @pages, description = @description WHERE name = @name AND author = @author
END
ELSE
BEGIN
INSERT INTO shop.books (name, author, pages, description, price, quantity)
VALUES (@name,@author,@pages,@description,@price,@quantity)
END
END