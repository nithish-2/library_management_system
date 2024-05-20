--------Procedure 3 => Procedure which will do transaction processing when a book is issued to a member details must be stored in the respective tables----------------

------creating or replacing procedure issue_book------
CREATE OR REPLACE PROCEDURE issue_book
(
p_book_id IN number,
p_member_id IN number,
p_issue_date IN DATE,
p_issue_renewal IN DATE,
p_issue_expiry IN DATE,
p_issue_description IN book_issue_details.issue_description%TYPE)
AS

------declaring variable-----
seq1 NUMBER;

BEGIN

----assigning sequence to respective variable-----
seq1: seq_issue_id.NEXTVAL;

-----inserting values into book_issue_details----
INSERT INTO book_issue_details(book_id,member_id,issue_id,issue_date,issue_renewal,issue_expiry,issue_description)
VALUES(p_book_id,p_member_id,seq1,p_issue_date,p_issue_renewal,p_issue_expiry,p_issue_description);
END;
