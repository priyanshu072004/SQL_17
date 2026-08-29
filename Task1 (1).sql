/*SQL Practical Assignment — Data Analytics
Level 3 — Advanced Filtering & Business Analysis
Dataset: sales_transactions*/

use SalesAnalyticsDB;

create table transactions(
	transaction_id int primary key,
	customer_name varchar(50),
	product_name varchar(100),
	category varchar(50),
	quantity int,
	unit_price int,
	discount_percent int,
	city varchar(50),
	payment_mode varchar(50),
	salesperson varchar(50),
	customer_type varchar(50)
);

INSERT INTO transactions
(transaction_id, customer_name, product_name, category, quantity, unit_price,
 discount_percent, city, payment_mode, salesperson, customer_type)
VALUES
(1001, 'Aarav Mehta', 'Laptop Pro 15', 'Electronics', 2, 75000, 10, 'Ahmedabad', 'Online', 'Rahul', 'Premium'),
(1002, 'Priya Shah', 'Office Chair', 'Furniture', 5, 12000, 8, 'Mumbai', 'Card', 'Neha', 'Regular'),
(1003, 'Rohan Patel', 'Smartphone X', 'Electronics', 3, 45000, 12, 'Ahmedabad', 'UPI', 'Amit', 'Premium'),
(1004, 'Sneha Verma', 'Refrigerator', 'Appliances', 1, 68000, 15, 'Delhi', 'Card', 'Priya', 'VIP'),
(1005, 'Karan Joshi', 'Dining Table', 'Furniture', 4, 18000, 5, 'Pune', 'Cash', 'Rahul', 'Regular'),
(1006, 'Ananya Rao', 'Laptop Air 14', 'Electronics', 1, 62000, 7, 'Bangalore', 'Online', 'Neha', 'Premium'),
(1007, 'Vikram Singh', 'Washing Machine', 'Appliances', 2, 42000, 18, 'Jaipur', 'UPI', 'Amit', 'Regular'),
(1008, 'Meera Kapoor', 'Smartphone Pro', 'Electronics', 4, 55000, 20, 'Mumbai', 'Card', 'Priya', 'VIP'),
(1009, 'Aditya Shah', 'Sofa Set', 'Furniture', 3, 35000, 10, 'Ahmedabad', 'Online', 'Rahul', 'Premium'),
(1010, 'Ishita Patel', 'Air Conditioner', 'Appliances', 2, 58000, 12, 'Surat', 'UPI', 'Neha', 'Premium'),
(1011, 'Raj Malhotra', 'Gaming Laptop', 'Electronics', 2, 95000, 15, 'Delhi', 'Card', 'Amit', 'VIP'),
(1012, 'Kavya Desai', 'Bookshelf', 'Furniture', 6, 9000, 5, 'Pune', 'Cash', 'Priya', 'Regular'),
(1013, 'Arjun Mehta', 'Smart TV 55', 'Electronics', 2, 72000, 18, 'Bangalore', 'Online', 'Rahul', 'Premium'),
(1014, 'Nisha Sharma', 'Microwave Oven', 'Appliances', 3, 22000, 8, 'Ahmedabad', 'UPI', 'Neha', 'Regular'),
(1015, 'Yash Patel', 'Refrigerator Pro', 'Appliances', 1, 82000, 20, 'Mumbai', 'Card', 'Amit', 'VIP'),
(1016, 'Simran Kaur', 'Office Desk', 'Furniture', 5, 16000, 12, 'Delhi', 'Online', 'Priya', 'Regular'),
(1017, 'Dev Kumar', 'Smartphone Ultra', 'Electronics', 3, 68000, 10, 'Jaipur', 'UPI', 'Rahul', 'Premium'),
(1018, 'Riya Shah', 'Washing Machine Pro', 'Appliances', 4, 48000, 22, 'Surat', 'Card', 'Neha', 'Premium'),
(1019, 'Manav Joshi', 'Premium Sofa', 'Furniture', 2, 65000, 15, 'Ahmedabad', 'Online', 'Amit', 'VIP'),
(1020, 'Pooja Mehta', 'Tablet Pro', 'Electronics', 5, 32000, 8, 'Pune', 'UPI', 'Priya', 'Regular'),
(1021, 'Harsh Verma', 'Laptop Ultra', 'Electronics', 3, 88000, 25, 'Mumbai', 'Card', 'Rahul', 'VIP'),
(1022, 'Neel Shah', 'Air Conditioner Pro', 'Appliances', 2, 76000, 10, 'Delhi', 'Online', 'Neha', 'Premium'),
(1023, 'Tanvi Rao', 'Dining Set', 'Furniture', 4, 28000, 18, 'Bangalore', 'Cash', 'Amit', 'Regular'),
(1024, 'Siddharth Patel', 'Smart TV Pro', 'Electronics', 6, 60000, 12, 'Surat', 'UPI', 'Priya', 'Premium'),
(1025, 'Aisha Khan', 'Double Door Refrigerator', 'Appliances', 2, 92000, 20, 'Ahmedabad', 'Card', 'Rahul', 'VIP'),
(1026, 'Mohit Singh', 'Executive Chair', 'Furniture', 7, 14000, 10, 'Jaipur', 'Online', 'Neha', 'Regular'),
(1027, 'Diya Mehta', 'Gaming Monitor', 'Electronics', 3, 52000, 15, 'Delhi', 'UPI', 'Amit', 'Premium'),
(1028, 'Varun Shah', 'Washing Machine', 'Appliances', 5, 38000, 28, 'Mumbai', 'Cash', 'Priya', 'Regular'),
(1029, 'Isha Patel', 'Luxury Sofa', 'Furniture', 3, 78000, 12, 'Pune', 'Card', 'Rahul', 'VIP'),
(1030, 'Dhruv Sharma', 'Business Laptop', 'Electronics', 2, 110000, 18, 'Bangalore', 'Online', 'Neha', 'VIP');

select * from transactions;

--Q-1
select * from transactions order by unit_price desc , quantity desc;

--Q-2
select customer_name,product_name,category,quantity,unit_price,city from transactions where unit_price>50000 and quantity>1;

--Q-3
select * from transactions where customer_type='Premium' and unit_price>25000 order by unit_price desc;

--Q-4
select* from transactions where discount_percent>15 and quantity>3 order by discount_percent desc;

--Q-5
select customer_name,product_name,category,quantity,unit_price,city from transactions where city in ('Ahmedabad' , 'Mumbai' , 'Delhi') and unit_price>20000
order by city asc,unit_price desc;

--Q-6
select customer_name,product_name,quantity,unit_price,payment_mode from transactions where payment_mode in ('Online','Card') and quantity>2 
and unit_price>15000 order by quantity desc;

--Q-7
select * from transactions where category in ('Electronics','Furniture','Appliances') and discount_percent<10 
order by discount_percent asc;

--Q-8
select customer_name,customer_type,product_name,quantity,unit_price from transactions where customer_type in ('Premium','Regular') and 
unit_price>30000 and quantity>1 order by unit_price desc;

-- 9 no 
select * from transactions where salesperson !='Rahul' and quantity>4 and discount_percent<20 order by quantity desc;

--Q-10
select transaction_id,customer_name,product_name,quantity,unit_price,category from transactions 
where (quantity>5 and unit_price>10000) or (quantity between 2 and 5 and unit_price>50000) order by unit_price desc;

--Q-11
select * from transactions where city !='Ahmedabad' and quantity>2 and unit_price>20000 and payment_mode != 'Cash' 
order by unit_price desc;

--Q-12
select customer_name,product_name,quantity,unit_price,discount_percent,customer_type from transactions where category='Electronics' 
and unit_price>40000 and quantity>1 and discount_percent<15 order by unit_price desc;

--Q-13
select customer_name,product_name,quantity,unit_price,discount_percent,city from transactions where category='Furniture' 
and quantity>3 and unit_price>25000 order by quantity desc;

--Q-14
select * from transactions where customer_type='Premium' and payment_mode != 'Cash' and quantity>1 and unit_price>20000 
order by unit_price desc;

--Q-15
select customer_name,product_name,category,unit_price,discount_percent,payment_mode from transactions where unit_price>50000 and discount_percent>10
and payment_mode != 'cash' order by discount_percent desc;

--Q-16
select * from transactions where (category='Electronics' and quantity>2 and discount_percent<15 ) or 
(category='Furniture' and quantity>3 and unit_price>20000 ) or (category='Appliances' and unit_price>40000) order by unit_price desc;

--Q-17
select customer_name,customer_type,product_name,quantity,unit_price,city,payment_mode from transactions
where (customer_type='Premium' or customer_type='VIP') and city !='Ahemdabad' and (quantity>3 or unit_price>60000) 
order by unit_price desc;

--Q-18
select * from transactions where payment_mode != 'Cash' and city != 'Mumbai' and discount_percent>20 and quantity>2 and unit_price<50000
order by discount_percent desc;

--Q-19
select transaction_id,customer_name,product_name,category,quantity,unit_price,discount_percent,customer_type,payment_mode,city,salesperson from transactions
where (customer_type ='Premium' and category = 'Electronics' and unit_price>40000) or
(customer_type = 'VIP' and unit_price>50000) or
(customer_type='Regular' and quantity>5 and unit_price>10000) order by unit_price desc;

--Q-20
select * from transactions where ((customer_type='Premium' and category='Electronics' and unit_price>35000) or
(customer_type='VIP' and category='Furniture' and quantity>2) or 
(customer_type ='Regular' and unit_price>75000)) and discount_percent !>25 and payment_mode !='Cash' and city != 'Ahmedabad'
order by unit_price desc,quantity desc ,discount_percent desc;




--Lecture 6: SQL Clauses & Aggregate Functions
--3 PRACTICE TASKS
create table students (
	id int primary key,
	name varchar(50) not null,
	course varchar(50) not null,
	marks int
);

insert into students values 
(1,'Aman','BCA',75),
(2,'Neha','MCA',90),
(3,'Karan','BCA',65),
(4,'Riya','BBA',80),
(5,'Meena','MCA',88);

select * from students;

--Q-1
select count(*) as Total_Students from students;

--Q-2
select min(marks) as lowest_marks from students;

--Q-3
select max(marks) as highest_marks from students;

--Q-4
select course, sum(marks) as Totalmarks from students 
group by course;

--Q-5
select course, avg(marks) as Avg_Marks  from students 
group by course;

--Q-6
select course ,avg(marks) as Avg_Marks from students
group by course
having avg(marks)>80;

--Q-7
select top 2 * from students 
order by marks desc;

--Q-8
select * from students where marks between 70 and 90;

--Q-9
select * from students where course in ('BCA','MCA');

--Q-10
select count(distinct course)  as Totalcourse from students;

--Q-11
select * from students where name like ('N%');



/*Level 4 — CRUD, Aggregation & Business Performance Analysis*/

--Task-1 
select count(*) as Total_Transaction from transactions;
select sum(quantity) as Total_Quantity_Sold from transactions;
select sum(unit_price*quantity) as Total_Sales from transactions;
select avg(unit_price) as Avg_Unit_price from transactions;
select max(unit_price) as Highest_unit_price from transactions;
select min(unit_price) as lowest_unit_price from transactions;

--or 

select count(*) as Total_Transaction,
sum(quantity) as Total_Quantity_Sold,
sum(unit_price*quantity) as Total_Sales,
avg(unit_price) as Avg_Unit_price,
max(unit_price) as Highest_unit_price,
min(unit_price) as lowest_unit_price from transactions;

--Task-2 
select category,
count(*) as No_OF_Transaction ,
sum(quantity) as Total_Quantity_Sold ,
sum(quantity*unit_price) as Total_sum,
avg(unit_price) as Avg_unit_price from transactions
group by category
order by Total_sum desc;

--Task-3
select salesperson,
count(*) as no_of_transaction,
sum(quantity) as Total_quantity_sold,
sum(quantity*unit_price) as Total_Sales,
avg(unit_price) as Avg_of_unit_price 
from transactions
group by salesperson
order by Total_Sales desc;

--Task-4
select city,
count(*) as Number_of_transactions,
sum(quantity) as quantity_sold,
sum(quantity*unit_price) as Total_sales,
avg(unit_price) as Avg_unit_price from transactions
group by city
order by Total_sales ;

--Task-5
select customer_type,
count(*) as Number_of_transactions,
sum(quantity) as quantity_sold,
sum(unit_price*quantity)  as Total_sales,
avg(unit_price) as Avg_unit_price from transactions
group by customer_type
order by Total_sales desc;

--Task-6
select payment_mode,
count(*) as Number_of_transactions,
sum(quantity) as quantity_sold,
sum(unit_price*quantity) as Total_sales,
sum(unit_price) as Avg_unit_price from transactions
group by payment_mode
order by Total_sales desc;

--Task-7
select category,
sum(quantity) as quantity_sold,
sum(unit_price*quantity) as Total_sales,
avg(unit_price) as Avg_unit_price from transactions
group by category 
having sum(unit_price*quantity)>300000
order by Total_sales desc;

--Task-8
select salesperson,
count(*) as Number_of_transactions,
sum(quantity) as Total_quantity,
sum(quantity*unit_price) as Total_sales from transactions
group by salesperson
having sum(unit_price*quantity)>500000
order by Total_sales desc;

--Task-9
select product_name,
sum(quantity) as Total_quantity ,
sum(quantity*unit_price) as Total_Sales,
avg(unit_price) as Avg_unit_price from transactions
group by product_name
having sum(quantity)>5
order by Total_quantity desc;

select* from transactions;
--Task-10
select category,
count(*) as Number_of_transactions,
sum(quantity) as Total_quantity,
sum(unit_price*quantity) as Total_sales,
avg(unit_price) as Avg_unit_price
from transactions where customer_type='Premium'
group by category
having sum(unit_price*quantity)>200000
order by Total_sales desc;

--Task-11
select salesperson,
count(*) as Number_of_transactions,
sum(quantity) as Total_quantity,
sum(unit_price*quantity) as Total_sales
from transactions where customer_type='VIP'
group by salesperson
having sum(unit_price*quantity)>300000;

--Task-12
select city,
count (*) as Number_of_transactions,
sum(quantity) as Total_quantity,
sum(quantity*unit_price) as Total_sales
from transactions where payment_mode in('Cash','Card')
group by city
having sum(quantity*unit_price)>300000;

--Task-13
select discount_percent,
count(*) as Number_of_transactions,
sum(quantity) as Total_quantity,
sum(quantity*unit_price*(1-discount_percent/100)) as Total_sales,
avg(unit_price) as Avg_unit_price 
from transactions 
group by discount_percent
having count(*)>=2;

--Task-14
select salesperson,
count(*) as Number_of_transactions,
sum(quantity) as Total_quantity,
sum(unit_price*quantity) as Total_sales,
avg(unit_price) as avg_unit_price,
max(unit_price) as Highest_unit_price
from transactions where category='Electronics'
group by salesperson
having sum(unit_price*quantity)>250000;

--Task-15
select city,
count(*) as Number_of_transactions,
sum(quantity) as Total_quantity,
sum(unit_price*quantity) as Total_sales,
avg(unit_price) as avg_unit_price 
from transactions where category='Furniture' and quantity>2
group by city
having sum(unit_price*quantity) >50000;

--Task16
select salesperson,
count(*) as Number_of_transactions,
sum(quantity) as Total_quantity,
sum(unit_price*quantity) as Total_sales,
avg(unit_price) as avg_unitprice 
from transactions 
where category='Appliances' and 
payment_mode !='Cash' and 
discount_percent<20
group by salesperson
having sum(unit_price*quantity)>100000;

--Task-17
select customer_type,
count(*) as Number_of_transactions,
sum(quantity) as Total_quantity,
sum(unit_price*quantity) as Total_sales,
avg(unit_price) as Avg_unit_price,
max(unit_price) as Highest_unit_price
from transactions where customer_type in ('Premium',' VIP')
group by customer_type
order by Total_sales desc;

--Task-18
select salesperson,
count(*) as Number_of_transactions,
sum(quantity) as Total_quantity,
sum(unit_price*quantity*(1-discount_percent/100)) as Total_sales,
avg(discount_percent) as avg_discout_percent
from transactions where discount_percent>15 
group by salesperson
having count(*)>2;

--Task-19
insert into transactions values
(1031,'Raj Mehta','MacBook Pro','Electronics',2,125000,10,'Mumbai','Online','Rahul','Premium');
select * from transactions;

--Task-20
select salesperson,category,
count(*) as Number_of_transactions,
sum(quantity) as Total_quantity,
sum(unit_price*quantity*(1-discount_percent/100)) as Total_sales,
max(unit_price) as Max_unitprice,
min(unit_price) as min_unitprice,
avg(discount_percent) as discountpercent
from transactions where customer_type in ('Premium','VIP') and 
payment_mode != 'Cash' and 
quantity > 1 and 
discount_percent < 20
group by salesperson,category
having sum(unit_price*quantity*(1-discount_percent/100))>200000
order by Total_sales desc;