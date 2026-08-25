create database SalesAnalyticsDB;

use SalesAnalyticsDB;

create table customers(
id int primary key,
name varchar(50),
age int,
country varchar(50),
amt_spend int
);

insert into customers values 
(1,'Priyanshu',21,'India',30000),
(2,'Isha',22,'India',35000),
(3,'Ahmed',25,'UAE',40000),
(4,'Olivia',24,'Unites States',35000),
(5,'Sofia',26,'Canada',45000),
(6,'Emma',27,'Australia',60000),
(7,'Priya',26,'India',55000),
(8,'John',24,'United Kingdom',45000),
(9,'Aarav',28,'India',60000),
(10,'Chloe', 26, 'France', 19500),
(11,'Noah', 33, 'Canada', 32500),
(12,'Meera', 27, 'India', 70500),
(13,'Michael', 36, 'Germany', 36500),
(14,'Ananya', 25, 'India', 17500),
(15,'William', 41, 'Canada', 47000);

select * from customers;

select name,age,country from customers;

select name,country,amt_spend from customers;

select * from customers where amt_spend>50000 order by amt_spend desc;

select * from customers where age <30;

select * from customers where country='India';

select * from customers where amt_spend<20000;

select * from customers where age <30 and amt_spend>30000;

select * from customers where country='India' and amt_spend>40000;

select * from customers where country='India' or country='Canada';

select * from customers where country in ('India','Canada') and amt_spend>40000;

select * from customers where not country='India';

select * from customers order by amt_spend asc;

select * from customers order by amt_spend desc;

select * from customers order by age asc;

select * from customers where age between 25 and 30 and amt_spend>30000 and country in ('India','Canada')
order by amt_spend desc;

select * from customers where age >=30 and amt_spend>40000 and not country='India' 
order by amt_spend desc;