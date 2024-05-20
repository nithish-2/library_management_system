--------Procedure 5 => Procedure which will add transaction a new member in the database----------------

-----creating or replacing procedure new_member-----
CREATE OR REPLACE PROCEDURE new_member(
p_member_id IN NUMBER,
p_member_name IN VARCHAR2,
p_member_mobile IN NUMBER,
p_member_email IN VARCHAR2,
p_member_username IN VARCHAR2,
p_member_password IN VARCHAR2,
p_member_address IN varchar2
) AS


-----creating cursor csr_mem-----
CURSOR Csr_mem IS
    SELECT member_id
    FROM member_master
    WHERE member_id=p_member_id
        AND MEMBER_NAME-p_member_name
        AND member_username=p_member_username;


------declaring variables-------
I_mem_id NUMBER;
seq NUMBER;

BEGIN

-----assigning sequence to a variable-----
seq: seq_address_id.NEXTVAL;

------opening cursor csr_mem------
OPEN csr_mem;

------fetching cursor csr_mem into a variable------
FETCH csr_mem INTO I_mem_id;

-------checking whether cursor csr_mem is found or not found-----
IF (csr_mem%notfound) THEN

-------when not found inserting values into address_master and member_master----------
    INSERT INTO address_master(address_id,address_description) VALUES (seq,p_member_address);
    INSERT INTO member_master(member_id,MEMBER_NAME,member_mobile,member_email,member_username,member_password,member_address_id)
    VALUES (p_member_id,p_member_name,p_member_mobile,p_member_email,p_member_username,p_member_password,seq);
ELSE

--------if found then displaying message----------
    dbms_output.put_line('Record already exists!');

END IF;

---------closing cursor csr_mem-------
CLOSE Csr_mem;
END;