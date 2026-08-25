create database db;
use db;

create table employee(
	id int primary key,
	name varchar(50),
	dept varchar(50),
	salary int,
	age int
);

insert into employee values
(1,'Amit','IT',60000,28),
(2,'Sneha','HR',45000,25),
(3,'Raj','Finance',70000,32),
(4,'Simran','IT',52000,27),
(5,'Karan','Marketing',40000,24);

select * from employee;

select * from employee where salary>40000;

select* from employee where dept='IT';

select * from employee where age between 25 and 30;

select * from employee where name like 'S%';

select top 3 * from employee order by salary desc;

select * from employee where not dept='HR';