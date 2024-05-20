--------Procedure 1 => Procedure which will return list of books drawn in a day and will show columns as member_id, member_name, book_id, book_name----------------
-------------Procedure 1 Name: book_drawn--------------

SET SERVEROUTPUT ON
BEGIN
book_drawn;
END;


--------Procedure 2 => Procedure which will return list of members whose book return date is expired and will show columns as member_id, member_name, book_id, book_name----------------
-------------Procedure 2 Name: date_expired--------------
SET SERVEROUTPUT ON
BEGIN
date_expired;
END;


--------Procedure 3 => Procedure which will do transaction processing when a book is issued to a member details must be stored in the respective tables----------------
-------------Procedure 3 Name: issue_book--------------
BEGIN
issue_book(1017, 3010, 2031, '10-11-2020', '09-12-2020', '10-12-2020', 'Book issued on November 10th 2020, can be renewed on December 9th 2020 and expires on Decemeber 10th 2020');
END;



--------Procedure 4 => Procedure which will add transaction a new book in the database----------------
-------------Procedure 4 Name: new_book--------------
BEGIN
new_book(1016, 'SQL', 'Corgg', '10-11-2020', 'Programming', 500, 'code');
END;


--------Procedure 5 => Procedure which will add transaction a new member in the database----------------
-------------Procedure 5 Name: new_member--------------
BEGIN
new_member(3011, 'Arjun', 8541256984, 'arjun@gmail.com', 'arjun85412', 'Arjun56984', 'M G Road');
END;
