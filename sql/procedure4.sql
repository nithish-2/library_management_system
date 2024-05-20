--------Procedure 4 => Procedure which will add transaction a new book in the database----------------

-----creating or replacing procedure new_book-----
create or replace PROCEDURE new_book(
p_book_id IN book_master.book_id%type,
p_book_name IN book_master.book_name%type,
p_book_author IN book_master.book_author type,
p_book_publication_date IN book_master.book_publication_date %type,
p_book_type IN book_master.book_type%type,
p_book_price IN book_master.book_price%type,
p_book_description IN book_master.book_description%type
) AS

------creating cursor csr_book-----
CURSOR Csr_book IS
    SELECT book_id FROM book_master
    WHERE book_id=p_book_id;

-------declaring variable-------
l_book NUMBER;

BEGIN

-----opening cursor csr_book------
OPEN csr book;

------fetching cursor csr_book into a variable------
FETCH csr_book INTO I_book;

-----checking whether cursor csr_book is found or not found------
IF (csr_book%notfound) THEN

------when not found inserting values into book_master---------
    INSERT INTO book_master(book_id, book_name, book_author, book_publication_date, book_type, book_price, book_description)
    VALUES(p_book_id,p_book_name,p_book_author,p_book_publication_date,book_type,book_price.book_description);
ELSE

-----if found then displaing message-----
    dbms_output.put_line('Record already exists!');

END IF;

------closing cursor csr_book-------
CLOSE csr_book;
END;
/