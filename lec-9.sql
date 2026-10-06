CREATE TABLE Employees
(
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department VARCHAR(50),
    city VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE
);

select * from Employees;
INSERT INTO Employees
(employee_id, employee_name, department, city, salary, joining_date)
VALUES
(1, 'Amit', 'IT', 'Ahmedabad', 65000, '2021-01-15'),
(2, 'Rahul', 'IT', 'Mumbai', 85000, '2020-06-10'),
(3, 'Priya', 'HR', 'Delhi', 55000, '2022-03-20'),
(4, 'Neha', 'HR', 'Ahmedabad', 75000, '2021-08-12'),
(5, 'Vikas', 'Finance', 'Mumbai', 90000, '2019-04-18'),
(6, 'Pooja', 'Finance', 'Delhi', 70000, '2022-01-05'),
(7, 'Karan', 'IT', 'Pune', 85000, '2021-11-22'),
(8, 'Sneha', 'HR', 'Pune', 60000, '2023-02-15'),
(9, 'Rohit', 'Finance', 'Ahmedabad', 90000, '2020-09-10'),
(10, 'Anjali', 'IT', 'Delhi', 70000, '2023-05-25');

/*65. Practical Exercise 1 — Basic Ranking
Find the salary rank of every employee.
Expected concepts:
RANK()
ORDER BY*/

select employee_name,salary,
rank() over (order by salary desc) as Salary_rank
from Employees;

/*66. Practical Exercise 2 — Department Ranking
Rank employees based on salary within each department.
Expected concepts:PARTITION BY RANK()*/

select 
    employee_name,
    department,
    salary,
    rank() over(
        partition by department 
        order by salary desc) as Salary_rank
from Employees;

/*67. Practical Exercise 3 — Compare Ranking Functions
Display:Employee
Salary
ROW_NUMBER()
RANK()
DENSE_RANK()
Sort by salary descending.*/

select 
    employee_id,
    employee_name,
    salary,

    ROW_NUMBER() over(
        order by salary desc) as row_num,
     rank() over(
        order by salary desc) as rank_salary,
    DENSE_RANK() over(
        order by salary desc) as dense_rank_salary
from Employees
order by salary desc;

/*68. Practical Exercise 4 — Department Average
Display every employee's:
Employee name
Department
Salary
Department average salary*/

select 
    employee_name,
    department,
    salary,
    avg(salary) over(
    partition by department) as dept_avg_salary
    from Employees;

/*69. Practical Exercise 5 — Salary Difference
Find the difference between:
Employee Salary-Department Average Salary*/

select
    employee_name,
    department,
    salary,
    avg(salary) over(
        partition by department) as dept_avg_salary,
    salary-avg(salary) over(
        partition by department) as saalry_diff
from Employees
order by department,salary desc;

/*70. Practical Exercise 6 — Department Total
Display every employee along with the total salary of their department.*/

select
    employee_name,
    department,
    salary,
    sum(salary) over(
        partition by department) as Dept_total_salary
from Employees
order by department,salary desc;

/*71. Practical Exercise 7 — Salary Contribution
Calculate each employee's percentage contribution to the total department salary.*/

select 
    employee_name,
    department,
    salary,
    sum(salary) over(
        partition by department) as total_department_salary,
    round(salary*100.0/sum(salary) over(
               partition by department),2 ) as dept_total_salary
from Employees;

/*72. Practical Exercise 8 — Top 2 Employees
Find the top 2 highest-paid employees from every department.
Use:ROW_NUMBER()*/

with rankedemployees as(
    select employee_name,
        department,
        salary,
        ROW_NUMBER() over(
            partition by department 
            order by salary desc
            ) as row_num
            from Employees)
select 
    employee_name,
    department,
    salary
    from rankedemployees
    where row_num<=2
    order by department,salary desc;


/*73. Practical Exercise 9 — Top 2 With Ties
Find the top 2 salary ranks in every department where employees with the same salary receive the same rank.
Think about whether:RANK()
or:DENSE_RANK()*/

with rankedemployees as (
    select employee_name,
    department,
    salary,
    DENSE_RANK() over(partition by department
    order by salary desc) as row_num
from Employees)
select 
    employee_name,
    department,
    salary,
    row_num
    from rankedemployees
        where row_num<=2
        order by department,salary desc;


/*74. Practical Exercise 10 — NTILE
Divide all employees into four salary groups.
Use:NTILE(4)
*/

select employee_name,
        department,
        salary,
        NTILE(4) over(
        order by salary desc) as salary_ranked
    from Employees
    order by salary desc;

/*75. Practical Exercise 11 — Running Total
Create an Orders table and calculate cumulative sales ordered by date.*/

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_name VARCHAR(50),
    sales_amount DECIMAL(10, 2)
);

INSERT INTO Orders (
    order_id,
    order_date,
    customer_name,
    sales_amount)
VALUES
    (1, '2026-01-01', 'Aisha', 1000.00),
    (2, '2026-01-02', 'Ravi', 1500.00),
    (3, '2026-01-03', 'Neha', 800.00),
    (4, '2026-01-04', 'Amit', 2200.00),
    (5, '2026-01-05', 'Priya', 1200.00);

select 
    order_id,
    order_date,
    customer_name,
    sales_amount,
    sum(sales_amount) over(
        order by order_date,order_id
        rows between unbounded preceding and current row) as running_total
    from Orders
    order by order_date,order_id;

/*
76. Practical Exercise 12 — Previous Order For every customer, display:
Current order date
Previous order date
Use:LAG()*/

select
    order_id,
    customer_name,
    order_date as current_order_date,
    lag(order_date) over(
        partition by customer_name
        order by order_date,order_id) as previous_orde_date
    from Orders
    order by customer_name,order_date,order_id;



/*77. Practical Exercise 13 — Next Order For every customer, display:
Current order date
Next order date
Use:LEAD()*/

select 
    order_id,
    customer_name,
    order_date as current_order_date,
    lead(order_date) over(
        partition by customer_name
        order by order_date,order_id) as next_order_date
    from Orders
    order by order_date,order_id;

/*78. Practical Exercise 14 — Sales Growth
CalculateCurrent Sales-Previous Sales
using LAG().*/

select
    order_id,
    customer_name,
    order_date,
    sales_amount as current_sales,
    lag(sales_amount) over(
        partition by customer_name
        order by order_date,order_id) as previous_sales,
    sales_amount-lag(sales_amount) over(
        partition by customer_name
        order by order_date,order_id) as Sales_growth
    from Orders
    order by customer_name,order_date,order_id;


/*79. Practical Exercise 15 — Moving Average
Calculate a 3-row moving average.
Use:ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
*/

select
    order_id,
    order_date,
    customer_name,
    sales_amount,
    avg(sales_amount) over(
        order by order_date,order_id
        rows between 2 preceding and current row) as Moving_avg
    from Orders 
    order by customer_name,order_date,order_id;



/*80. Practical Exercise 16 — First Order
Find the first order placed by every customer.
*/

select
    order_id,
    order_date,
    customer_name,
    sales_amount,
    first_value(order_id) over(
        partition by customer_name
        order by sales_amount desc) as First_order
    from Orders
    order by customer_name,order_date,order_id;

/*81. Practical Exercise 17 — Latest Order
Find the latest order for every customer.
*/
with cisutomersorders as(
    select 
    order_id,
    order_date,
    customer_name,
    sales_amount,
    ROW_NUMBER() over(
        partition by order_id 
        order by order_date desc) as rn
       from Orders)
    select * from cisutomersorders where rn=1;




/*82. Practical Exercise 18 — Product Contribution
Calculate every product's percentage contribution to total sales.*/




/*83. Practical Exercise 19 — Category Ranking
Rank products by sales within each category.*/


/*84. Practical Exercise 20 — Top 3 Products Per Category
Find the top 3 products in every category.
This is a must-practice interview problem.
*/