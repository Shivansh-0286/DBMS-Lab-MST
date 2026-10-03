-- Question 3: Banking Management System
-- A. Theory:
-- Explain the difference between WHERE, ORDER BY, and GROUP BY clauses in SQL. 
-- Explain the purpose of aggregate functions such as COUNT(), SUM(), AVG(), MAX(), and MIN(). 
-- Also explain how aliases are used with columns and tables in SQL.

-- B. Practical:
-- Create a Banking Management System using Customer and Account tables.
-- Create Customer and Account tables with suitable attributes.
-- Apply appropriate Primary Key and Foreign Key constraints.
-- Apply suitable NOT NULL, UNIQUE, DEFAULT, and CHECK constraints.
-- Insert at least 5 customers and 5 account records.
-- Display accounts having a balance greater than a given amount.
-- Display accounts in descending order of their balance.
-- Calculate the total balance of all accounts using an aggregate function.
-- Find the maximum and minimum account balance.
-- Update the balance of a particular account.
-- Delete an account based on a suitable condition.
-- Display the final account records.

Create database banking_system;
use banking_system;

create table customer (
customer_id int Primary Key auto_increment,
name varchar(20),
age int check (age >=18),
phone int not null default 0,
email varchar(20) unique
);

create table account (
account_id int unique auto_increment,
balance int,
status varchar(10) default "Active",
FOREIGN KEY (account_id) references customer(customer_id)
);

insert into customer (name, age, phone, email) values
("Aman", 20, 2589632, "aman1@gmail.com"),
("Tushar", 19, 5632146, "tushar2@gmail,com"),
("Rishika", 20, 852145, "rishi3@gmail,com"),
("Ritik", 25, 7896545, "ritik4@gmail,com"),
("Krish", 28, 4532187, "krish5@gmail,com");

insert into account (balance, status) values
(12302, default),
(25865, "Inactive"),
(55555, default),
(45654, "Inactive"),
(57894, "Inactive");

select* from account
where balance > 25000;

select* from account
order by balance;

select sum(balance) as TOTAL_Balance from account;

select 
max(balance) as MAX, 
min(balance) as MIN
from account;

Update account, customer 
set balance = 100 where account_id = 2;

delete FROM account 
where status = 'Inactive';

select* from account; 