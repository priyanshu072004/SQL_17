Create DATABASE JoinPracticeDB;

USE JoinPracticeDB;

CREATE TABLE Customer
(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    country VARCHAR(50)
);

INSERT INTO Customer
(customer_id, customer_name, city, country)
VALUES
(1, 'Rahul Sharma', 'Ahmedabad', 'India'),
(2, 'Priya Patel', 'Mumbai', 'India'),
(3, 'Amit Shah', 'Delhi', 'India'),
(4, 'Neha Mehta', 'Pune', 'India'),
(5, 'Rohan Desai', 'Surat', 'India'),
(6, 'Karan Joshi', 'Jaipur', 'India'),
(7, 'Sneha Patel', 'Bangalore', 'India'),
(8, 'Vikas Shah', 'Vadodara', 'India'),
(9, 'Anjali Singh', 'Delhi', 'India'),
(10, 'Raj Malhotra', 'Chennai', 'India');

CREATE TABLE Orders
(
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(50),
    quantity INT,
    amount DECIMAL(10,2)
);

INSERT INTO Orders
(order_id, customer_id, product_name, quantity, amount)
VALUES
(101, 1, 'Laptop', 1, 55000.00),
(102, 2, 'Mobile', 2, 30000.00),
(103, 3, 'Keyboard', 3, 4500.00),
(104, 4, 'Monitor', 1, 18000.00),
(105, 5, 'Mouse', 5, 2500.00),
(106, 6, 'Printer', 1, 12000.00),
(107, 7, 'Laptop Bag', 2, 3000.00),
(108, 11, 'Tablet', 1, 25000.00),
(109, 12, 'Headphones', 2, 6000.00),
(110, 13, 'Smart Watch', 1, 8000.00);

SELECT * FROM Customer;

SELECT * FROM Orders;

--inner join
select * from Customer
inner join Orders
on Customer.customer_id=Orders.customer_id;

--left join
select
    c.customer_id,
    c.customer_name,
    o.order_id,
    o.customer_id,
    o.product_name,
    o.amount
from Customer as c
left join Orders as o 
on c.customer_id=o.customer_id;
--or
select
    c.customer_id,
    c.customer_name,
    o.order_id,
    o.product_name,
    o.amount
from Orders as o
left join Customer as c
on c.customer_id=o.customer_id;

--Right join
select
    c.customer_id,
    c.customer_name,
    o.order_id,
    o.product_name,
    o.amount
from Customer as c
right join Orders as o
on c.customer_id=o.customer_id
where o.amount>10000
order by o.amount desc;

--full join
select 
    c.customer_id,
    c.customer_name,
    o.order_id,
    o.product_name,
    o.amount
from Customer as c
full join Orders as o
on c.customer_id=o.customer_id;

select 
	c.customer_id,
	c.customer_name,
	o.order_id,
	o.product_name,
	o.amount
from Customer as c
Right join Orders as o
on c.customer_id = o.customer_id;

--union
select 
    c.customer_id,
    c.customer_name,
    o.order_id,
    o.product_name,
    o.amount
from Customer as c
left join Orders as o
on c.customer_id=o.customer_id

union

select 
    c.customer_id,
    c.customer_name,
    o.order_id,
    o.product_name,
    o.amount
from Customer as c
right join Orders as o
on c.customer_id=o.customer_id;

select customer_id,customer_name,city from customer where city='Delhi'
union
select customer_id,customer_name,city from Customer where customer_id<=5;

SELECT
    customer_id,
    customer_name,
    city
FROM Customer
WHERE city = 'Delhi'

UNION ALL

SELECT
    customer_id,
    customer_name,
    city
FROM Customer
WHERE customer_id <= 5;


--Task-1
select 
    c.customer_id,
    c.customer_name,
    c.city,
    o.order_id,
    o.product_name,
    o.amount
from Customer as c
inner join Orders as o
on c.customer_id=o.customer_id;

--Task-2
select
    c.customer_name,
    c.city,
    o.product_name,
    o.amount
from Customer as c
inner join Orders as o
on c.customer_id=o.customer_id;

--Task-3
select
    c.customer_id,
    c.customer_name,
    o.order_id,
    o.product_name,
    o.amount
from Customer as c
left join Orders as o
on c.customer_id=o.customer_id;

--Task-4
select
    c.customer_id,
    c.customer_name,
    c.city
from Customer as c
left join Orders as o
on c.customer_id=o.customer_id
where o.order_id is null ;

--Task-5
select
    o.order_id,
    c.customer_id,
    c.customer_name,
    o.product_name,
    o.amount
from Customer as c
right join Orders as o
on c.customer_id=o.customer_id;

--Task-6
select
    o.order_id,
    o.customer_id,
    o.product_name,
    o.amount
from Customer as c
right join Orders as o
on c.customer_id=o.customer_id
where c.customer_id is null;

--Task-7
select
    c.customer_id,
    c.customer_name,
    o.order_id,
    o.product_name,
    o.amount
from Customer as c
left join Orders as o
on c.customer_id=o.customer_id
union
select
    c.customer_id,
    c.customer_name,
    o.order_id,
    o.product_name,
    o.amount
from Customer as c
right join Orders as o
on c.customer_id=o.customer_id;

--or
select 
     c.customer_id,
    c.customer_name,
    o.order_id,
    o.product_name,
    o.amount
from Customer as c
full outer join Orders as o
on c.customer_id=o.customer_id;


--Task-8
select 
    c.customer_name,
    o.order_id,
    o.product_name,
    o.amount
from Customer as c
inner join Orders as o
on c.customer_id=o.customer_id
where o.amount>10000;

--Task-9
select 
    c.customer_name,
    c.city,
    o.order_id,
    o.product_name,
    o.amount
from Customer as c
inner join Orders as o
on c.customer_id=o.customer_id
where c.city='Delhi';

--Task-10
select
    c.customer_name,
    o.product_name,
    o.quantity,
    o.amount
from Customer as c
inner join Orders as o
on c.customer_id=o.customer_id
where o.quantity>2
order by o.quantity desc;

--Task-11
select
    c.customer_id,
    c.customer_name,
    sum(o.amount) as Total_amount
from Customer as c
left join Orders as o
on c.customer_id=o.customer_id
group by c.customer_name,c.customer_id;

--Task-12
select
    c.customer_id,
    c.customer_name,
    count(o.order_id) as Total_order
from Customer as c
left join Orders as o
on c.customer_id=o.customer_id
group by c.customer_id,c.customer_name;

--Task-13
select
    c.customer_name,
    avg(o.amount) as Avg_order_amt
from Customer as c
inner join Orders as o
on c.customer_id=o.customer_id
group by c.customer_name,c.customer_id;

--Task-14
select
     c.customer_name,
     o.order_id,
     o.product_name,
     o.amount
from Customer as c
inner join Orders as o
on c.customer_id=o.customer_id
where o.amount=(select max(amount) from Orders);

--Task-15

--Task-16
select
    c.customer_id,
    c.customer_name,
    count(o.order_id) as No_of_orders,
    sum(o.quantity) as Total_quantity,
    sum(o.amount) as Total_amount
from Customer as c
left join Orders as o
on c.customer_id=o.customer_id
group by c.customer_id,c.customer_name;

--Task-17
select
     c.customer_id,
     c.customer_name,
     sum(o.amount) as Total_amount
from Customer as c
left join Orders as o
on c.customer_id=o.customer_id
group by c.customer_id,c.customer_name
having sum(o.amount)>20000;

--Task-18
select
    c.customer_id,
    c.customer_name,
    count(o.order_id) as Total_orders
from Customer as c
join Orders as o
on c.customer_id=o.customer_id
group by c.customer_id,c.customer_name
having count(o.order_id)>1;

--Task-19

--Task-20
select
    c.customer_id,
    c.customer_name,
    c.city,
    o.order_id,
    o.product_name,
    o.quantity,
    o.amount,
    (o.quantity*o.amount) as Total_value
from Customer as c
inner join Orders as o
on c.customer_id=o.customer_id;