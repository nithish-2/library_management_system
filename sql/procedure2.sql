--------Procedure 2 => Procedure which will return list of members whose book return date is expired and will show columns as member_id, member_name, book_id, book_name----------------

------creating or replacing procedure date_expired-----
CREATE OR REPLACE PROCEDURE date_expired AS
p_member_id book_issue_details.member_id%TYPE;
p_member_name member_master.MEMBER_NAME%TYPE;
p_book_id book_issue_details.book_id%TYPE;
p_book_name book_master.book_name%TYPE;


------creating cursor csr_exp--------
CURSOR csr_exp IS SELECT book_issue_details.member_id, MEMBER_NAME,book_issue_details.book_id, book_name
INTO p_member_id,p_member_name,p_book_id,p_book_name
FROM book_issue_details
INNER JOIN book_master
ON book_issue_details.book_id=book_master.book_id
INNER JOIN member_master
ON book_issue_details.member_id=member_master.member_id
WHERE issue_expiry<sysdate
ORDER BY member_id ASC;

BEGIN

-----opening cursor csr_exp------
    OPEN csr_exp;
    LOOP

--------fetching cursor csr_exp-----------
        FETCH csr_exp INTO p_member_id,p_member_name,p_book_id,p_book_name;
        EXIT WHEN csr_exp%notfound;
        dbms_output.put_line(p_member_id || ' || p_member_name || ' || p_book_id || '' || p_book_name);
        END LOOP;

-----closing cursor csr_exp-----
    CLOSE csr_exp;

EXCEPTION
WHEN no_data_found THEN 
dbms_output.put_line('No records found');

END;
/