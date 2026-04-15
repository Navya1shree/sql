create database db2;
use db2;
CREATE TABLE order_info (
    id INT,
    customer_name VARCHAR(50),
    product VARCHAR(50),
    quantity INT,
    price INT,
    total INT,
    city VARCHAR(50),
    status VARCHAR(20),
    order_date DATE
);

INSERT INTO order_info VALUES
(1, 'Amit', 'Laptop', 1, 55000, 55000, 'Pune', 'Delivered', '2024-03-10');

CREATE TABLE hospital_info (
    id INT,
    patient_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    disease VARCHAR(50),
    doctor VARCHAR(50),
    room_no INT,
    city VARCHAR(50),
    admission_date DATE
);

INSERT INTO hospital_info VALUES
(1, 'Rahul', 40, 'Male', 'Fever', 'Dr. Mehta', 101, 'Delhi', '2024-02-01');

CREATE TABLE library_info (
    id INT,
    book_name VARCHAR(50),
    author VARCHAR(50),
    category VARCHAR(50),
    pages INT,
    price INT,
    publisher VARCHAR(50),
    language VARCHAR(20),
    year INT
);

INSERT INTO library_info VALUES
(1, 'SQL Basics', 'John', 'Database', 250, 300, 'XYZ Pub', 'English', 2022);

CREATE TABLE bank_account (
    id INT,
    account_holder VARCHAR(50),
    account_no BIGINT,
    bank_name VARCHAR(50),
    balance INT,
    branch VARCHAR(50),
    city VARCHAR(50),
    account_type VARCHAR(20),
    email VARCHAR(100)
);

INSERT INTO bank_account VALUES
(1, 'Suresh', 1234567890, 'SBI', 50000, 'Main Branch', 'Mumbai', 'Savings', 'suresh@gmail.com');

CREATE TABLE school_info (
    id INT,
    school_name VARCHAR(50),
    city VARCHAR(50),
    principal VARCHAR(50),
    students INT,
    teachers INT,
    established INT,
    board VARCHAR(50),
    email VARCHAR(100)
);

INSERT INTO school_info VALUES
(1, 'ABC School', 'Bangalore', 'Mr. Sharma', 1200, 80, 1995, 'CBSE', 'abc@gmail.com');

select*from order_info;
select*from hospital_info;
select*from library_info;
select*from bank_account;
select*from school_info;

