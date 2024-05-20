--Creating BOOK_MASTER table with primary key------
CREATE TABLE book_master(
    book_id INT NOT NULL PRIMARY KEY,
    book_name varchar2(50),
    book author VARCHAR(20),
    book_publication_date DATE,
    book_type VARCHAR2(20),
    book_price NUMBER(8, 2),
    book_description VARCHAR2(500)
);

----Creating BOOK_ISSUE_DETAILS table with primary key------
CREATE TABLE book_issue_details(
    issue_id INT NOT NULL PRIMARY KEY,
    book_id NUMBER(4),
    member_id NUMBER(4),
    issue date DATE,
    issue_renewal DATE,
    issue_expiry DATE,
    issue_description varchar2(500)
);

-----Creating ADDRESS_MASTER table with primary key------
CREATE TABLE address_master(
    address_id INT NOT NULL PRIMARY KEY,
    address_description VARCHAR2(50)
);

--Creating LIBRARIAN_MASTER table with primary key and foreign key------
CREATE TABLE librarian_master(
    librarian_id INT NOT NULL PRIMARY KEY,
    librarian_name VARCHAR2(20),
    librarian_mobile VARCHAR2(20),
    librarian_email VARCHAR2(25),
    librarian_username VARCHAR2(20),
    librarian_password VARCHAR2(10),
    librarian_address VARCHAR2(50),
    librarian_address_id INT NOT NULL REFERENCES address_master(address_id)
);

----Creating MEMBER_MASTER table with primary key and foreign key------
CREATE TABLE member_master(
    member_id INT NOT NULL PRIMARY KEY,
    member_name VARCHAR2(20),
    member_mobile VARCHAR2(20),
    member_email VARCHAR(64),
    member_username VARCHAR2(20),
    member_password varchar2(25),
    member_address_id INT REFERENCES address_master(address_id)
);

------Assigning foreign key in BOOK ISSUE_DETAILS table------
ALTER TABLE
    book_issue_details
MODIFY
    (
        member_id INT NOT NULL REFERENCES member_master(member_id)
    );

ALTER TABLE
    book_issue_details
MODIFY
    (
        book_id INT NOT NULL REFERENCES book_master(book_id)
    );

------Assigning foreign key in MEMBER_MASTER table....
ALTER TABLE
    member_master
ADD
    (
        member_address_id INT NOT NULL REFERENCES address_master(address_id)
    );

------Assigning foreign key in LIBRARIAN MASTER table------
ALTER TABLE
    librarian_master
ADD
    (
        librarian_address_id INT NOT NULL REFERENCES address_master(address_id)
    );



--INSERTING VALUES--

---Inserting values to BOOK MASTER table-----
INSERT ALL
INTO book_master(book_id,book_name,book_author,book_publication_date,book_type,book_price,book_description)
VALUES(1001, 'My Journey', 'Dr. APJ Abdul Kalam', '01-01-2013', 'Classic', 1000.00, 'From a small boy growing up in Rameswaram, to becoming the country''s eleventh President, A.P.J. Abdul Kalam''s life has been a tale of extraordinary determination and achievement.')
INTO book_master(book_id,book_name,book_author,book publication_date,book_type,book_price,book_description)

VALUES( 1002, 'Discovery of India', 'Jawaharlal Nehru', '14-11-1946', 'History', 1500.00, 'The Discovery of India was written by India''s first Prime Minister, Pandit Jawaharlal Nehru, during his imprisonment in 1942-1945 at Ahmednagar Fort.')
INTO book_master(book_id,book_name,book_author,book_publication_date,book_type,book_price_book_description)

INSERT INTO book_master (book_id, book_name, book_author, book_publication_date, book_type, book_price, book_description)
VALUES(1003, 'Normal People', 'Sally Rooney', '16-04-2019', 'Literary', 950.00, 'Normal People is a 2019 novel by Irish author Sally Rooney. It is her second novel to be published, after Conversations with Friends. It became a critically acclaimed bestseller, exploring the complexities of relationships and personal growth.');

VALUES(1004, 'Ramayana','C. Rajagopalachari','11-02-1957', 'Epic', 895.00, 'Ramayana is a retelling of the epic by C. Rajagopalachari. It was first published by Bharatiya Vidya Bhavan in 1957. This book is an abridged English version of the ancient Indian epic.')
INTO book_master (book_id,book_name,book_author,book_publication_date,book_type,book_price,book_description);

VALUES(1005, 'Jurassic Park', 'Michael Crichton','20-11-1990','Action',200.00, 'Jurassic Park is a 1990 science fiction novel written by Michael Crichton. A cautionary tale about genetic engineering, it presents the collapse of a theme park populated by cloned dinosaurs.')
INTO book_master (book_id,book_name,book_author,book_publication_date,book_type,book_price,book_description);

VALUES(1006, 'A Little Life', 'Hanya Yanagihara','10-03-2015', 'Literary',760.00, 'A Little Life is a 2015 novel by American novelist Hanya Yanagihara. The novel was written over the course of eighteen months. Despite the length, it has been praised for its emotional depth and character development.')
INTO book_master (book_id,book_name,book_author,book_publication_date,book_type,book_price,book_description);

VALUES(1007, 'Mahabharata','C. Rajagopalachari', '01-01-1951', 'Literary',995.00, 'Originally published in the year 1951, the huge popularity of the book has resulted in it being re-printed several times.')
INTO book_master (book_id,book_name,book_author,book_publication_date,book_type,book_price,book_description);

VALUES(1008, 'Pride and Prejudice', 'Jane Austen', '28-01-1813', 'Novel',499.00, 'Pride and Prejudice is a novel of manners written by Jane Austen in 1813.')
INTO book_master (book_id,book_name,book_author,book_publication_date,book_type,book_price,book_description);

VALUES(1009, 'A Study in Scarlet', 'Arthur Conan Doyle','01-10-1887', 'Mystery',515.00, 'A Study in Scarlet is an 1887 detective novel written by Arthur Conan Doyle. The story marks the first appearance of Sherlock Holmes and Dr. Watson.')
INTO book_master (book_id,book_name,book_author,book_publication_date,book_type,book_price,book_description);

VALUES(1010, 'Seven Pillars of Wisdom','T.E. Lawrence', '01-12-1926', 'Classic', 300.00, 'An autobiographical account of the experiences of British soldier T. E. Lawrence, while serving as a liaison officer with rebel forces during the Arab Revolt.')
INTO book_master (book_id,book_name,book_author,book_publication_date,book_type,book_price,book_description);

VALUES(1011, 'India after Gandhi', 'Ramachandra Guha', '24-08-2007', 'History', 449.00, 'India after Gandhi: The History of the World''s Largest Democracy is a non-fiction book by Indian historian Ramachandra Guha first published in 2007.')
INTO book_master (book_id,book_name,book_author,book_publication_date,book_type,book_price,book_description);

VALUES(1012, 'Bitter Lemons', 'Lawrence Durrell', '01-07-1957', 'Classic', 500.00, 'Bitter Lemons is an autobiographical work by writer Lawrence Durrell, describing the three years he spent on the island of Cyprus. The book provides a vivid portrait of the island and its people.'),
INTO book_master (book_id,book_name,book_author,book publication_date,book_type,book_price,book_description)

VALUES(1013, 'Three Men in a Boat', 'Jerome K. Jerome', '11-01-1889', 'Novel', 350.00, 'Three Men in a Boat, published in 1889, is a humorous account by English writer Jerome K. Jerome of a two-week boating holiday on the Thames.')
INTO book_master (book_id,book_name,book_author,book publication_date,book_type,book_price,book_description)

VALUES(1014, 'Hiroshima', 'John Hersey', '04-03-1989', 'History', 795.0, 'On August 6, 1945, Hiroshima was destroyed by the first atom bomb ever dropped on a city. This book, John Hersey''s journalistic masterpiece, tells the harrowing stories of six survivors.'),
INTO book_master (book_id,book_name,book_author,book publication_date,book_type,book_price,book_description)

VALUES(1015, 'Wings of Fire', 'Dr. APJ Abdul Kalam', '15-10-1999', 'History', 995.00, 'An Autobiography of APJ Abdul Kalam, former President of India. It was written by Dr. Abdul Kalam. Dr. Kalam examines his early life, efforts, hardship, fortitude, luck and chance that eventually led him to lead Indian Space Research, nuclear and missile programs.')
INTO book_master (book_id,book_name,book_author,book publication_date,book_type,book_price,book_description)

SELECT * FROM dual;


---------Inserting values to LIBRARIAN MASTER table--------
INSERT ALL
INTO librarian_master(librarian,_id,librarian_name librarian_mobile,librarian_email,librarian_username,librarian_password,librarian_address_id)

VALUES(5001, 'John',7927552816, 'john@gmail.com','john79275', 'John52816',6001)
INTO librarian_master(librarian,_id,librarian_name librarian_mobile,librarian_email,librarian_username,librarian_password,librarian_address_id)

VALUES(5002, 'Albert',4424983839,'albert@yahoo.com','albert44249','Albert83839',6002)
INTO librarian_master(librarian,_id,librarian_name librarian_mobile,librarian_email,librarian_username,librarian_password,librarian_address_id)

VALUES(5003, 'Mathew', 2223775602,'mathew@outlook.com', 'mathew22237','Mathew75602',6003)
INTO librarian_master(librarian,_id,librarian_name librarian_mobile,librarian_email,librarian_username,librarian_password,librarian_address_id)

VALUES(5004, 'Richard', 2228750452,'richard@rediffmail.com', 'richard22287', 'Richard50452',5004)
INTO librarian_master(librarian,_id,librarian_name librarian_mobile,librarian_email,librarian_username,librarian_password,librarian_address_id)

VALUES(5005, 'Nilesh', 5560329640,'nilesh@gmail.com', 'nilesh55603', 'Nilesh29640',6005)
INTO librarian_master(librarian,_id,librarian_name librarian_mobile,librarian_email,librarian_username,librarian_password,librarian_address_id)

VALUES(5006, 'Sachin', 2225360561,'sachin@gmail.com','sachin22253', 'Sachin60561',6006)
INTO librarian_master(librarian,_id,librarian_name librarian_mobile,librarian_email,librarian_username,librarian_password,librarian_address_id)

VALUES(5007, 'James',6518423548, 'james@outlook.com','james65184', 'James23548',6007)
INTO librarian_master(librarian,_id,librarian_name librarian_mobile,librarian_email,librarian_username,librarian_password,librarian_address_id)

VALUES/5008, 'Peter', 8745156349,'peter@rediffmail.com','peter87451', 'Peter56349',6008)
INTO librarian_master(librarian,_id,librarian_name librarian_mobile,librarian_email,librarian_username,librarian_password,librarian_address_id)

VALUES(5009, 'Suraj',7546925486,'suraj@yahoo.com','suraj75469', 'Suraj25486',6009)
INTO librarian_master(librarian,_id,librarian_name librarian_mobile,librarian_email,librarian_username,librarian_password,librarian_address_id)

VALUES(5010, 'Rajat',9584625487, 'rajat@gmail.com','rajat95846', 'Rajat25487',6010)
INTO librarian_master(librarian,_id,librarian_name librarian_mobile,librarian_email,librarian_username,librarian_password,librarian_address_id)

SELECT * FROM dual;


---Inserting values to ADDRESS_MASTER table-------
INSERT ALL
INTO address_master(address_id,address_description)
VALUES(4001, '66 M I Road')
INTO address_master(address_id,address_description)
VALUES(4002, '19 Sunder Nagar')
INTO address_master(address_id,address_description)
VALUES(4003, '111 Krishna Tower')
INTO address_master(address_id,address_description)
VALUES(4004,'29 Central Market')
INTO address_master(address_id,address_description)
VALUES(4005,'7 H D Municipal Market')
INTO address_master(address_id,address_description)
VALUES(4006,'71 N R Road')
INTO address_master(address_id,address_description)
VALUES(4007, '25 S P Road')
INTO address_master(address_id,address_description)
VALUES(4008, '80 Motilal Nagar')
INTO address_master(address_id,address_description)
VALUES(4009, '47 S V Road')
INTO address_master(address_id,address_description)
VALUES(4010,'98 Hospital Road')
INTO address_master(address_id,address_description)
VALUES(6001, '14 Station Road')
INTO address_master(address_id,address_description)
VALUES(6002,'39 Hospital Road')
INTO address_master(address_id,address_description)
VALUES(6003,'5 M G Road')
INTO address_master(address_id,address_description)

VALUES(6004,'11 SV Road')
INTO address_master(address_id,address_description)

VALUES(6005,'7 Shashtri Nagar')
INTO address_master(address_id,address_description)
VALUES(6006, '521 Dr Ambedker Road')
INTO address_master(address_id,address_description)
VALUES(6007, '281 Gandhi Road')
INTO address_master(address_id,address_description)
VALUES(6008, '45 SV Road')
INTO address_master(address_id,address_description)
VALUES(6009, '81 Station Road')
INTO address_master(address_id,address_description)
VALUES(6010, '584 Dr Ambedker Road')
SELECT FROM dual;

-------Inserting values to MEMBER_MASTER table-----------
INSERT ALL
INTO member_master(member_id,member_name,member_mobile,member_email,member_username,member_password,member_address_id)
VALUES(3001, 'Arun',6587425698,'arun@gmail.com', 'arun65874', 'Arun25698',4001)

INTO member_master(member_id,member_name,member_mobile,member_email,member_username,member_password,member_address_id)
VALUES(3002, 'David',8569745213,'david@rediffmail.com', 'david85697','David45213',4002)

INTO member_master(member_id,member_name,member_mobile,member_email,member_username,member_password,member_address_id)
VALUES(3003, 'Ramesh',3875695412,'ramesh@yahoo.com', 'ramesh38756','Ramesh95412',4003)

INTO member_master(member_id,member_name,member_mobile,member_email,member_username,member_password,member_address_id)
VALUES(3004, 'Sharma',6235415874, 'sharma@outlook.com', 'sharma62354','Sharma15874',4004)

INTO member_master(member_id,member_name,member_mobile,member_email,member_username,member_password,member_address_id)
VALUES(3005, 'Manoj',2496358741,'manoj@gmail.com','manoj24963','Manoj58741',4005)

INTO member_master(member_id,member_name,member_mobile,member_email,member_username,member_password,member_address_id)
VALUES(3006, 'Rahul', 4102389578, 'rahul@outlook.com', 'rahul41023','Rahul89578',4006)

INTO member_master(member_id,member_name,member_mobile,member_email,member_username,member_password,member_address_id)
VALUES(3007, 'Priyanka',8459674120,'priyanka@yahoo.com','priyanka84596', 'Priyanka74120',4007)

INTO member_master(member_id,member_name,member_mobile,member_email,member_username,member_password,member_address_id)
VALUES(3008, 'Neha',7541263596,'heha@gmail.com', 'neha75412', 'Neha63596',4008)

INTO member_master(member_id,member_name,member_mobile,member_email,member_username,member_password,member_address_id)
VALUES(3009, 'Sara', 9652014530,'sara@rediffmail.com','sara96520','Sara14530',4009)

INTO member_master(member_id,member_name,member_mobile,member_email,member_username,member_password,member_address_id)
VALUES(3010, 'Kirti',5432096587,'kirti@gmail.com','kirti54320', 'Kirti96587',4010)

SELECT * FROM dual;

--------Inserting values to BOOK_ISSUE_DETAILS table-----------------
INSERT ALL
INTO book_issue_details(issue_id,book_id,member_id,issue_date,issue_renewal,issue_expiry,issue_description)
VALUES(2001,1002,3001,'09-11-2020', '08-12-2020', '09-12-2020', 'Book issued on November 9th 2020, can be renewed on December 8th 2020 and expires on December 9th 2020')

INTO book_issue_details(issue_id,book_id_member_id_issue_date,issue_renewal_issue_expiry,issue_description)
VALUES(2002,1005,3004, '28-10-2020','27-11-2020', '28-11-2020', 'Book issued on October 28th 2020, can be renewed on November 27th 2020 and expires on November 28th 2020')

INTO book_issue_details(issue_id,book_id,member_id,issue_date,issue_renewal issue_expiry,issue_description)
VALUES(2003,1008,3008,'15-10-2020','14-11-2020', '15-11-2020','Book issued on October 15th 2020, can be renewed on November 14th 2020 and expires on November 15th 2020')

INTO book_issue_details(issue_id,book_id_member_id,issue_date,issue_renewal_issue_expiry,issue_description)
VALUES(2004,1011,3010,'30-06-2020','29-07-2020','30-06-2020', 'Book issued on June 30th 2020, can be renewed on July 29th 2020 and expires on July 30th 2020')

INTO book_issue_details(issue_id,book_id_member_id_issue_date,issue_renewal_issue_expiry,issue_description)
VALUES(2005,1015,3002,'01-09-2020','30-09-2020', '01-10-2020','Book issued on September 1st 2020, can be renewed on September 30th 2020 and expires on October 1st 2020')

INTO book_issue_details(issue_id,book_id,member_id,issue_date,issue_renewal issue_expiry,issue_description)
VALUES(2006,1001,3009, '30-10-2020','29-11-2020', '30-11-2020','Book issued on October 30th 2020, can be renewed on November 29th 2020 and expires on November 30th 2020')

INTO book_issue_details(issue_id,book_id_member_id,issue_date,issue_renewal_issue_expiry,issue_description)
VALUES(2007,1004, 3007, '09-10-2020', '08-11-2020', '09-11-2020','Book issued on October 9th 2020, can be renewed on November 8th 2020 and expires on November 9th 2020')

INTO book_issue_details(issue_id,book_id_member_id,issue_date,issue_renewal_issue_expiry,issue_description)
VALUES(2008,1007,3001, '08-10-2020', '07-11-2020', '08-11-2020', 'Book issued on October 8th 2020, can be renewed on November 7th 2020 and expires on November 8th 2020')

INTO book_issue_details(issue_id,book_id_member_id,issue_date,issue_renewal_issue_expiry,issue_description)
VALUES(2009,1010,3003,'19-10-2020','18-11-2020','19-11-2020', 'Book issued on October 19th 2020, can be renewed on November 18th 2020 and expires on November 19th 2020')

INTO book_issue_details(issue_id,book_id_member_id,issue_date,issue_renewal_issue_expiry,issue_description)
VALUES(2010,1013,3005, '31-10-2020', '29-11-2020', '30-11-2020', 'Book issued on October 31st 2020, can be renewed on November 29th 2020 and expires on November 30th 2020')

INTO book_issue_details(issue_id,book_id_member_id,issue_date,issue_renewal_issue_expiry,issue_description)
VALUES(2011,1003,3009,'22-06-2020','21-07-2020','22-07-2020','Book issued on June 22nd 2020, can be renewed on July 21st 2020 and expires on July 22nd 2020')

INTO book_issue_details(issue_id,book_id_member_id,issue_date,issue_renewal_issue_expiry,issue_description)
VALUES(2012,1006,3006, '01-11-2020', '30-11-2020', '01-12-2020', 'Book issued on November 1st 2020, can be renewed on November 30th 2020 and expires on December 1st 2020')

INTO book_issue_details(issue_id,book_id_member_id,issue_date,issue_renewal_issue_expiry,issue_description)
VALUES(2013,1009,3008, '31-10-2020', '29-11-2020', '30-11-2020','Book issued on October 31st 2020, can be renewed on November 29th 2020 and expires on November 30th 2020')

INTO book_issue_details(issue_id,book_id_member_id,issue_date,issue_renewal_issue_expiry,issue_description)
VALUES(2014,1012,3005, '24-10-2020','23-11-2020','24-11-2020', 'Book issued on October 24th 2020, can be renewed on November 23th 2020 and expires on November 24th 2020')

INTO book_issue_details(issue_id,book_id_member_id,issue_date,issue_renewal_issue_expiry,issue_description)
VALUES(2015,1015,3010, '05-10-2020', '04-11-2020', '05-11-2020','Book issued on October 5th 2020, can be renewed on November 4th 2020 and expires on November 5th 2020')

INTO book_issue_details(issue_id,book_id_member_id,issue_date,issue_renewal_issue_expiry,issue_description)
VALUES(2016,1004,3002, '11-10-2020','10-11-2020','11-11-2020','Book issued on October 11th 2020, can be renewed on November 10th 2020 and expires on November 11th 2020')

INTO book_issue_details(issue_id,book_id_member_id,issue_date,issue_renewal_issue_expiry,issue_description)
VALUES(2017,1007, 3009, '01-10-2020', '31-10-2020', '01-11-2020', 'Book issued on October 1st 2020, can be renewed on October 31st 2020 and expires on November 1st 2020')

INTO book_issue_details(issue_id,book_id_member_id,issue_date,issue_renewal_issue_expiry,issue_description)
VALUES(2018,1010,3003, '27-09-2020','26-10-2020','27-10-2020','Book issued on September 27th 2020, can be renewed on October 26th 2020 and expires on October 27th 2020')

INTO book_issue_details(issue_id,book_id_member_id,issue_date,issue_renewal_issue_expiry,issue_description)
VALUES(2019,1001,3008, '09-11-2020', '08-12-2020', '09-12-2020','Book issued on November 9th 2020, can be renewed on December 8th 2020 and expires on December 9th 2020')

INTO book_issue_details(issue_id,book_id_member_id,issue_date,issue_renewal_issue_expiry,issue_description)
VALUES(2020,1010,3002, '11-10-2020','10-11-2020', '11-11-2020', 'Book issued on October 11th 2020, can be renewed on November 10th 2020 and expires on November 11th 2020')

INTO book_issue_details(issue_id,book_id_member_id,issue_date,issue_renewal_issue_expiry,issue_description)
VALUES(2021,1003,3007, '22-06-2020','21-07-2020','22-07-2020', 'Book issued on June 22nd 2020, can be renewed on July 21st 2020 and expires on July 22nd 2020')

INTO book_issue_details(issue_id,book_id_member_id,issue_date,issue_renewal_issue_expiry,issue_description)
VALUES(2022,1008,3010,'11-10-2020','10-11-2020','11-11-2020','Book issued on October 11th 2020, can be renewed on November 10th 2020 and expires on November 11th 2020')

INTO book_issue_details(issue_id,book_id,member_id,issue_date,issue_renewal,issue_expiry,issue_description)
VALUES(2023,1014,3001,'30-06-2020','29-07-2020','30-07-2020', 'Book issued on June 30th 2020, can be renewed on July 29th 2020 and expires on July 30th 2020')

INTO book_issue_details(issue_id,book_id,member_id,issue_date_issue_renewal,issue_expiry,issue_description)
VALUES(2024,1006,3005,'09-10-2020', '08-11-2020','09-11-2020', 'Book issued on October 9th 2020, can be renewed on November 8th 2020 and expires on November 9th 2020')

INTO book_issue_details(issue_id,book_id,member_id,issue_date_issue_renewal_issue_expiry,issue_description)
VALUES(2025,1002,3004, '11-10-2020','10-11-2020','11-11-2020','Book issued on October 11th 2020, can be renewed on November 10th 2020 and expires on November 11th 2020')

INTO book_issue_details(issue_id,book_id,member_id,issue_date,issue_renewal issue_expiry,issue_description)
VALUES(2026,1008,3009,'02-01-2020', '01-02-2020', '02-02-2020', 'Book issued on January 2nd 2020, can be renewed on February 1st 2020 and expires on February 2nd 2020')

INTO book_issue_details(issue_id,book_id,member_id,issue_date_issue_renewal_issue_expiry,issue_description)
VALUES(2027,1001,3007,'11-10-2020','10-11-2020','11-11-2020','Book issued on October 11th 2020, can be renewed on November 10th 2020 and expires on November 11th 2020')

INTO book_issue_details(issue_id,book_id,member_id,issue_date_issue_renewal_issue_expiry,issue_description)
VALUES(2028,1006,3004,'25-03-2020','24-04-2020','25-04-2020', 'Book issued on March 25th 2020, can be renewed on April 24th 2020 and expires on April 25th 2020')

INTO book_issue_details(issue_id,book_id,member_id,issue_date,issue_renewal,issue_expiry,issue_description)
VALUES(2029,1002,3003,'11-10-2020','10-11-2020','11-11-2020','Book issued on October 11th 2020, can be renewed on November 10th 2020 and expires on November 11th 2020')

INTO book_issue_details(issue_id,book_id,member_id,issue_date_issue_renewal_issue_expiry,jissue_description)
VALUES(2030,1003,3001,'02-01-2020', '01-02-2020', '02-02-2020','Book issued on January 2nd 2020, can be renewed on February 1st 2020 and expires on February 2nd 2020')

SELECT * FROM dual;