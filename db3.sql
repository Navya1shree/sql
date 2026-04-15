create database db3;
use db3;
CREATE TABLE vehicle_info (
    id INT,
    vehicle_name VARCHAR(50),
    brand VARCHAR(50),
    model VARCHAR(50),
    price INT,
    fuel_type VARCHAR(20),
    year INT,
    color VARCHAR(20),
    owner VARCHAR(50)
);

INSERT INTO vehicle_info VALUES
(1, 'City', 'Honda', 'ZX', 1200000, 'Petrol', 2023, 'White', 'Amit');

CREATE TABLE movie_info (
    id INT,
    movie_name VARCHAR(50),
    director VARCHAR(50),
    genre VARCHAR(50),
    rating INT,
    duration INT,
    language VARCHAR(20),
    release_year INT,
    hero VARCHAR(50)
);

INSERT INTO movie_info VALUES
(1, 'RRR', 'Rajamouli', 'Action', 5, 180, 'Telugu', 2022, 'NTR');

CREATE TABLE company_info (
    id INT,
    company_name VARCHAR(50),
    ceo VARCHAR(50),
    industry VARCHAR(50),
    employees INT,
    revenue INT,
    location VARCHAR(50),
    founded_year INT,
    email VARCHAR(100)
);

INSERT INTO company_info VALUES
(1, 'Infosys', 'Salil Parekh', 'IT Services', 300000, 1500000, 'Bangalore', 1981, 'info@infosys.com');


CREATE TABLE shop_info (
    id INT,
    shop_name VARCHAR(50),
    owner VARCHAR(50),
    category VARCHAR(50),
    city VARCHAR(50),
    phone VARCHAR(15),
    rating INT,
    opening_year INT,
    total_products INT
);

INSERT INTO shop_info VALUES
(1, 'Mega Store', 'Ramesh', 'Retail', 'Hyderabad', '9876501234', 5, 2015, 5000);

CREATE TABLE airline_info (
    id INT,
    airline_name VARCHAR(50),
    country VARCHAR(50),
    fleet_size INT,
    passengers INT,
    headquarters VARCHAR(50),
    rating INT,
    founded_year INT,
    email VARCHAR(100)
);

INSERT INTO airline_info VALUES
(1, 'IndiGo', 'India', 350, 1000000, 'Gurgaon', 4, 2006, 'support@indigo.com');

select*from vehicle_info;
select*from movie_info;
select*from vehicle_info;
select*from shop_info;
select*from airline_info;


