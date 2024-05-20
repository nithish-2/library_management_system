--------Procedure 1 => Procedure which will return list of books drawn in a day and will show columns as member_id, member_name, book_id, book_name----------------

-----creating or replacing procedure book_drawn-----
CREATE OR REPLACE PROCEDURE book_drawn AS
m_id NUMBER(5);
m_name VARCHAR2(20);
b_id NUMBER(5);
b_name VARCHAR2(50);


-------creating cursor csr_book-------
CURSOR Csr_book IS SELECT book_issue_details.member_id, MEMBER_NAME,book_issue_details.book_id, book_name
FROM book_issue_details
INNER JOIN book_master
ON book_issue_details.book_id=book_master.book_id
INNER JOIN member_master
ON book_issue_details.member_id=member_master.member_id
WHERE book_issue_details.issue_date='&date'
ORDER BY book_id ASC;

BEGIN
-------opening cursor csr_book--
OPEN csr_book;
LOOP
----fetching cursor csr_book--
FETCH csr_book INTO m_id,m_name,b_id,b_name;

EXIT WHEN csr_book%notfound;
dbms_output.put_line(m_id ||'-'||m_name||' '||b_id||' '||b_name);
END LOOP;

--closing cursor csr_book--
CLOSE csr_book;

EXCEPTION
        WHEN others then
            DBMS_OUTPUT.PUT_LINE('Sorry no records found');

END;
