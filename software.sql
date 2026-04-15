create database software;
use software;

CREATE TABLE Software (
    software_id INT,
    software_name VARCHAR(50),
    version VARCHAR(20)
);
desc Software;




ALTER TABLE Software ADD release_date DATE;
ALTER TABLE Software ADD license VARCHAR(50);
ALTER TABLE Software ADD price INT;
desc software;

ALTER TABLE Software DROP version;
desc software;


ALTER TABLE Software RENAME COLUMN software_id TO sid;
ALTER TABLE Software RENAME COLUMN software_name TO sname;
desc software;
ALTER TABLE Software ADD PRIMARY KEY (sid);

ALTER TABLE Software MODIFY license TEXT;
ALTER TABLE Software MODIFY price BIGINT;
desc software;






INSERT INTO Software VALUES (1, 'AppX', '2024-01-01', 'Paid', 5000);
INSERT INTO Software VALUES (2, 'AppY', '2024-02-01', 'Free', 0);
INSERT INTO Software VALUES (3, 'AppZ', '2024-03-01', 'Trial', 2000);


INSERT INTO Software (sid, sname, license) VALUES (4, 'AppA', 'Paid');
INSERT INTO Software (sid, sname, license) VALUES (5, 'AppB', 'Free');
INSERT INTO Software (sid, sname, license) VALUES (6, 'AppC', 'Trial');

INSERT INTO Software (sid, sname, release_date, license, price)
VALUES
(7, 'AppD', '2024-04-01', 'Paid', 6000),
(8, 'AppE', '2024-05-01', 'Free', 0),
(9, 'AppF', '2024-06-01', 'Trial', 1500);

INSERT INTO Software (sid, sname)
SELECT sid+10, sname FROM Software WHERE sid <= 3;

INSERT INTO Software (sid, sname, license)
VALUES
(13, 'AppG', 'Paid'),
(14, 'AppH', 'Free'),
(15, 'AppI', 'Trial');




UPDATE Software
SET sname='AppUpdated',
    release_date='2025-01-01',
    license='Premium',
    price=9000
WHERE sid=1;



DELETE FROM Software WHERE sid=2;

DELETE FROM Software WHERE price=0;

DELETE FROM Software;

select*from software;


CREATE TABLE Developers (
    dev_id INT,
    dev_name VARCHAR(50),
    experience INT
);


ALTER TABLE Developers ADD email VARCHAR(50);
ALTER TABLE Developers ADD phone VARCHAR(15);
ALTER TABLE Developers ADD role VARCHAR(50);
desc Developers;
 
ALTER TABLE Developers DROP experience;

desc Developers;

ALTER TABLE Developers RENAME COLUMN dev_id TO did;
ALTER TABLE Developers RENAME COLUMN dev_name TO dname;
desc Developers;

ALTER TABLE Developers MODIFY phone BIGINT;
ALTER TABLE Developers MODIFY email TEXT;

desc Developers;


INSERT INTO Developers VALUES (1, 'Ravi', 'ravi@gmail.com', 9876543210, 'Backend');
INSERT INTO Developers VALUES (2, 'Neha', 'neha@gmail.com', 9876543211, 'Frontend');
INSERT INTO Developers VALUES (3, 'Kiran', 'kiran@gmail.com', 9876543212, 'Tester');
INSERT INTO Developers (did, dname, role) VALUES (4, 'Asha', 'Backend');
INSERT INTO Developers (did, dname, role) VALUES (5, 'Rohit', 'Frontend');
INSERT INTO Developers (did, dname, role) VALUES (6, 'Meena', 'Tester');


INSERT INTO Developers (did, dname, email, phone, role)
VALUES
(7, 'Arjun', 'a@gmail.com', 9000000001, 'Backend'),
(8, 'Sneha', 's@gmail.com', 9000000002, 'Frontend'),
(9, 'Pooja', 'p@gmail.com', 9000000003, 'Tester');


INSERT INTO Developers (did, dname)
SELECT did+10, dname FROM Developers WHERE did<=3;


INSERT INTO Developers (did, dname, role)
VALUES (13, 'Deepa', 'Backend'),
       (14, 'Varun', 'Frontend'),
       (15, 'Nikhil', 'Tester');


UPDATE Developers
SET dname='Rahul',
    email='rahul@gmail.com',
    phone=9999999999,
    role='FullStack'
WHERE did=1;


DELETE FROM Developers WHERE did=2;
DELETE FROM Developers WHERE role='Tester';
DELETE FROM Developers;
select*from Developers;



CREATE TABLE Projects (
    project_id INT,
    project_name VARCHAR(50),
    budget INT
);


ALTER TABLE Projects ADD deadline DATE;
ALTER TABLE Projects ADD status VARCHAR(20);
ALTER TABLE Projects ADD team_size INT;
desc Projects;

ALTER TABLE Projects DROP budget;
desc Projects;

ALTER TABLE Projects RENAME COLUMN project_id TO pid;
ALTER TABLE Projects RENAME COLUMN project_name TO pname;
desc Projects;

ALTER TABLE Projects MODIFY status TEXT;
ALTER TABLE Projects MODIFY team_size BIGINT;
desc Projects;




INSERT INTO Projects VALUES (1, 'ProjA', '2024-01-01', 'Ongoing', 5);
INSERT INTO Projects VALUES (2, 'ProjB', '2024-02-01', 'Completed', 3);
INSERT INTO Projects VALUES (3, 'ProjC', '2024-03-01', 'Pending', 4);

INSERT INTO Projects (pid, pname, status) VALUES (4, 'ProjD', 'Ongoing');
INSERT INTO Projects (pid, pname, status) VALUES (5, 'ProjE', 'Completed');
INSERT INTO Projects (pid, pname, status) VALUES (6, 'ProjF', 'Pending');

INSERT INTO Projects (pid, pname, deadline, status, team_size)
VALUES
(7, 'ProjG', '2024-04-01', 'Ongoing', 6),
(8, 'ProjH', '2024-05-01', 'Completed', 2),
(9, 'ProjI', '2024-06-01', 'Pending', 3);

INSERT INTO Projects (pid, pname)
SELECT pid+10, pname FROM Projects WHERE pid<=3;

INSERT INTO Projects (pid, pname, status)
VALUES (13, 'ProjJ', 'Ongoing'),
       (14, 'ProjK', 'Completed'),
       (15, 'ProjL', 'Pending');

UPDATE Projects
SET pname='UpdatedProj',
    status='Completed',
    team_size=10
WHERE pid=1;

DELETE FROM Projects WHERE pid=2;
DELETE FROM Projects WHERE status='Pending';
DELETE FROM Projects;
select*from Projects;


CREATE TABLE Clients (
    client_id INT,
    client_name VARCHAR(50),
    location VARCHAR(50)
);


ALTER TABLE Clients ADD email VARCHAR(50);
ALTER TABLE Clients ADD phone VARCHAR(15);
ALTER TABLE Clients ADD company VARCHAR(50);
desc Clients;
ALTER TABLE Clients DROP location;
desc Clients;

ALTER TABLE Clients RENAME COLUMN client_id TO cid;
ALTER TABLE Clients RENAME COLUMN client_name TO cname;
desc Clients;

ALTER TABLE Clients MODIFY phone BIGINT;
ALTER TABLE Clients MODIFY email TEXT;
desc Clients;



INSERT INTO Clients VALUES (1, 'ABC', 'abc@gmail.com', 9876543210, 'Tech');
INSERT INTO Clients VALUES (2, 'XYZ', 'xyz@gmail.com', 9876543211, 'Finance');
INSERT INTO Clients VALUES (3, 'PQR', 'pqr@gmail.com', 9876543212, 'Retail');

INSERT INTO Clients (cid, cname, company) VALUES (4, 'LMN', 'Tech');
INSERT INTO Clients (cid, cname, company) VALUES (5, 'OPQ', 'Finance');
INSERT INTO Clients (cid, cname, company) VALUES (6, 'RST', 'Retail');

INSERT INTO Clients (cid, cname, email, phone, company)
VALUES
(7, 'AAA', 'a@gmail.com', 9000000001, 'Tech'),
(8, 'BBB', 'b@gmail.com', 9000000002, 'Finance'),
(9, 'CCC', 'c@gmail.com', 9000000003, 'Retail');

INSERT INTO Clients (cid, cname)
SELECT cid+10, cname FROM Clients WHERE cid<=3;

INSERT INTO Clients (cid, cname, company)
VALUES (13, 'DDD', 'Tech'),
       (14, 'EEE', 'Finance'),
       (15, 'FFF', 'Retail');

UPDATE Clients
SET cname='UpdatedClient',
    email='client@gmail.com',
    phone=9999999999,
    company='IT'
WHERE cid=1;

DELETE FROM Clients WHERE cid=2;
DELETE FROM Clients WHERE company='Retail';
DELETE FROM Clients;
select*from Clients;

CREATE TABLE Bugs (
    bug_id INT,
    bug_name VARCHAR(50),
    severity VARCHAR(20)
);

ALTER TABLE Bugs ADD reported_date DATE;
ALTER TABLE Bugs ADD status VARCHAR(20);
ALTER TABLE Bugs ADD priority VARCHAR(20);
desc Bugs;

ALTER TABLE Bugs DROP severity;
desc Clients;

ALTER TABLE Bugs RENAME COLUMN bug_id TO bid;
ALTER TABLE Bugs RENAME COLUMN bug_name TO bname;
desc Clients;

ALTER TABLE Bugs MODIFY status TEXT;

ALTER TABLE Bugs MODIFY priority TEXT;
desc Clients;



INSERT INTO Bugs VALUES (1, 'Login Error', '2024-01-01', 'Open', 'High');
INSERT INTO Bugs VALUES (2, 'Crash', '2024-01-02', 'Closed', 'Medium');
INSERT INTO Bugs VALUES (3, 'UI Bug', '2024-01-03', 'Open', 'Low');
INSERT INTO Bugs (bid, bname, priority) VALUES (4, 'Payment Error', 'High');
INSERT INTO Bugs (bid, bname, priority) VALUES (5, 'Slow Response', 'Medium');
INSERT INTO Bugs (bid, bname, priority) VALUES (6, 'API Fail', 'Low');

INSERT INTO Bugs (bid, bname, reported_date, status, priority)
VALUES
(7, 'Error1', '2024-02-01', 'Open', 'High'),
(8, 'Error2', '2024-02-02', 'Closed', 'Medium'),
(9, 'Error3', '2024-02-03', 'Open', 'Low');

INSERT INTO Bugs (bid, bname)
SELECT bid+10, bname FROM Bugs WHERE bid<=3;

INSERT INTO Bugs (bid, bname, priority)
VALUES (13, 'Error4', 'High'),
       (14, 'Error5', 'Medium'),
       (15, 'Error6', 'Low');

UPDATE Bugs
SET bname='Critical Bug',
    status='Closed',
    priority='High'
WHERE bid=1;

DELETE FROM Bugs WHERE bid=2;
DELETE FROM Bugs WHERE priority='Low';
DELETE FROM Bugs;
select*from Bugs;