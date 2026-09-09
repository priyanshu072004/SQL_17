-- SQL TEST DATABASE SETUP
CREATE DATABASE SQL_Advanced_Joins_Test;


USE SQL_Advanced_Joins_Test;


CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    registration_date DATE NOT NULL,
    customer_segment VARCHAR(20) NOT NULL
);

CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    unit_price DECIMAL(12,2) NOT NULL,
    stock_quantity INT NOT NULL
);

CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department VARCHAR(50) NOT NULL,
    salary DECIMAL(12,2) NOT NULL,
    joining_date DATE NOT NULL
);

CREATE TABLE Orderss(
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    order_date DATE NOT NULL,
    order_status VARCHAR(20) NOT NULL,
    sales_employee_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id),
    FOREIGN KEY (sales_employee_id) REFERENCES Employee(employee_id)
);

CREATE TABLE Payment (
    payment_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    paid_amount DECIMAL(12,2) NOT NULL,
    payment_status VARCHAR(20) NOT NULL,
    payment_date DATE NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orderss(order_id)
);

CREATE TABLE SupportTicket (
    ticket_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    employee_id INT NOT NULL,
    ticket_date DATE NOT NULL,
    ticket_status VARCHAR(20) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

INSERT INTO Customer VALUES (1, 'Aarav Mehta', 'Ahmedabad', 'Gujarat', '2025-01-15', 'Enterprise');
INSERT INTO Customer VALUES (2, 'Diya Shah', 'Mumbai', 'Maharashtra', '2025-01-20', 'Premium');
INSERT INTO Customer VALUES (3, 'Rohan Patel', 'Ahmedabad', 'Gujarat', '2025-02-03', 'Standard');
INSERT INTO Customer VALUES (4, 'Ananya Iyer', 'Bengaluru', 'Karnataka', '2025-02-10', 'Premium');
INSERT INTO Customer VALUES (5, 'Kabir Joshi', 'Pune', 'Maharashtra', '2025-02-18', 'Standard');
INSERT INTO Customer VALUES (6, 'Meera Desai', 'Surat', 'Gujarat', '2025-03-01', 'Premium');
INSERT INTO Customer VALUES (7, 'Vivaan Kapoor', 'Delhi', 'Delhi', '2025-03-08', 'Enterprise');
INSERT INTO Customer VALUES (8, 'Ishita Rao', 'Hyderabad', 'Telangana', '2025-03-15', 'Standard');
INSERT INTO Customer VALUES (9, 'Aditya Singh', 'Jaipur', 'Rajasthan', '2025-03-21', 'Premium');
INSERT INTO Customer VALUES (10, 'Sara Khan', 'Lucknow', 'Uttar Pradesh', '2025-04-02', 'Standard');
INSERT INTO Customer VALUES (11, 'Arjun Verma', 'Noida', 'Uttar Pradesh', '2025-04-11', 'Enterprise');
INSERT INTO Customer VALUES (12, 'Nisha Shah', 'Vadodara', 'Gujarat', '2025-04-18', 'Premium');
INSERT INTO Customer VALUES (13, 'Kunal Shah', 'Rajkot', 'Gujarat', '2025-05-03', 'Standard');
INSERT INTO Customer VALUES (14, 'Tanya Malhotra', 'Chandigarh', 'Chandigarh', '2025-05-14', 'Premium');
INSERT INTO Customer VALUES (15, 'Dev Agarwal', 'Indore', 'Madhya Pradesh', '2025-05-22', 'Standard');
INSERT INTO Customer VALUES (16, 'Pooja Nair', 'Kochi', 'Kerala', '2025-06-05', 'Premium');
INSERT INTO Customer VALUES (17, 'Manav Gupta', 'Gurugram', 'Haryana', '2025-06-17', 'Enterprise');
INSERT INTO Customer VALUES (18, 'Riya Kulkarni', 'Nashik', 'Maharashtra', '2025-06-25', 'Standard');
INSERT INTO Customer VALUES (19, 'Yash Trivedi', 'Ahmedabad', 'Gujarat', '2025-07-03', 'Premium');
INSERT INTO Customer VALUES (20, 'Sneha Menon', 'Chennai', 'Tamil Nadu', '2025-07-12', 'Standard');
INSERT INTO Customer VALUES (21, 'Rahul Bansal', 'Bhopal', 'Madhya Pradesh', '2025-07-21', 'Premium');
INSERT INTO Customer VALUES (22, 'Aisha Sheikh', 'Mumbai', 'Maharashtra', '2025-08-02', 'Standard');
INSERT INTO Customer VALUES (23, 'Harsh Vora', 'Ahmedabad', 'Gujarat', '2025-08-16', 'Enterprise');
INSERT INTO Customer VALUES (24, 'Neha Soni', 'Udaipur', 'Rajasthan', '2025-08-25', 'Standard');
INSERT INTO Customer VALUES (25, 'Om Prakash', 'Patna', 'Bihar', '2025-09-04', 'Premium');
INSERT INTO Customer VALUES (26, 'Mahi Jain', 'Kolkata', 'West Bengal', '2025-09-13', 'Standard');
INSERT INTO Customer VALUES (27, 'Siddharth Roy', 'Bengaluru', 'Karnataka', '2025-09-20', 'Enterprise');
INSERT INTO Customer VALUES (28, 'Palak Mehta', 'Surat', 'Gujarat', '2025-10-01', 'Standard');
INSERT INTO Customer VALUES (29, 'Atharv Shah', 'Vadodara', 'Gujarat', '2025-10-12', 'Premium');
INSERT INTO Customer VALUES (30, 'Kiara Patel', 'Pune', 'Maharashtra', '2025-10-19', 'Standard');

INSERT INTO Product VALUES (101, 'Laptop Pro 14', 'Electronics', 85000, 40);
INSERT INTO Product VALUES (102, 'Business Laptop 15', 'Electronics', 72000, 55);
INSERT INTO Product VALUES (103, 'Wireless Mouse', 'Accessories', 1800, 250);
INSERT INTO Product VALUES (104, 'Mechanical Keyboard', 'Accessories', 4200, 120);
INSERT INTO Product VALUES (105, 'USB-C Dock', 'Accessories', 6500, 90);
INSERT INTO Product VALUES (106, '24-inch Monitor', 'Monitors', 14500, 75);
INSERT INTO Product VALUES (107, '27-inch Monitor', 'Monitors', 22000, 60);
INSERT INTO Product VALUES (108, 'Office Chair', 'Furniture', 18500, 35);
INSERT INTO Product VALUES (109, 'Standing Desk', 'Furniture', 28500, 25);
INSERT INTO Product VALUES (110, 'Noise Cancelling Headset', 'Audio', 9800, 80);
INSERT INTO Product VALUES (111, 'Webcam Full HD', 'Accessories', 5200, 100);
INSERT INTO Product VALUES (112, 'External SSD 1TB', 'Storage', 8500, 65);
INSERT INTO Product VALUES (113, 'External SSD 2TB', 'Storage', 14500, 45);
INSERT INTO Product VALUES (114, 'Laser Printer', 'Office Equipment', 16500, 30);
INSERT INTO Product VALUES (115, 'Wi-Fi 6 Router', 'Networking', 7800, 70);
INSERT INTO Product VALUES (116, 'Network Switch 24 Port', 'Networking', 12500, 25);
INSERT INTO Product VALUES (117, 'Tablet 11-inch', 'Electronics', 32000, 50);
INSERT INTO Product VALUES (118, 'Smartphone Business', 'Electronics', 48000, 70);
INSERT INTO Product VALUES (119, 'Conference Speaker', 'Audio', 12500, 40);
INSERT INTO Product VALUES (120, 'UPS 1.5 KVA', 'Power', 15500, 45);

INSERT INTO Employee VALUES (201, 'Neel Joshi', 'Sales', 65000, '2023-06-12');
INSERT INTO Employee VALUES (202, 'Priya Shah', 'Sales', 72000, '2022-09-18');
INSERT INTO Employee VALUES (203, 'Vikram Rao', 'Sales', 58000, '2024-01-10');
INSERT INTO Employee VALUES (204, 'Kavya Patel', 'Support', 62000, '2023-11-05');
INSERT INTO Employee VALUES (205, 'Raj Malhotra', 'Support', 68000, '2022-04-22');
INSERT INTO Employee VALUES (206, 'Aditi Mehta', 'Finance', 85000, '2021-08-14');
INSERT INTO Employee VALUES (207, 'Sahil Verma', 'Operations', 70000, '2023-03-19');
INSERT INTO Employee VALUES (208, 'Isha Nair', 'Operations', 76000, '2022-12-01');
INSERT INTO Employee VALUES (209, 'Aman Gupta', 'Sales', 61000, '2024-05-09');
INSERT INTO Employee VALUES (210, 'Rhea Kapoor', 'Marketing', 74000, '2023-07-17');
INSERT INTO Employee VALUES (211, 'Nitin Desai', 'Support', 59000, '2024-02-27');
INSERT INTO Employee VALUES (212, 'Simran Kaur', 'Sales', 80000, '2021-11-11');

INSERT INTO Orderss VALUES (1001, 1, 104, 1, '2025-02-04', 'Pending', 203);
INSERT INTO Orderss VALUES (1002, 1, 108, 4, '2025-04-11', 'Completed', 201);
INSERT INTO Orderss VALUES (1003, 1, 118, 2, '2025-06-18', 'Shipped', 209);
INSERT INTO Orderss VALUES (1004, 2, 102, 1, '2025-03-07', 'Completed', 202);
INSERT INTO Orderss VALUES (1005, 2, 108, 1, '2025-05-14', 'Shipped', 202);
INSERT INTO Orderss VALUES (1006, 2, 118, 7, '2025-07-21', 'Completed', 209);
INSERT INTO Orderss VALUES (1007, 2, 119, 5, '2025-09-03', 'Cancelled', 201);
INSERT INTO Orderss VALUES (1008, 3, 106, 7, '2025-04-10', 'Completed', 203);
INSERT INTO Orderss VALUES (1009, 3, 105, 4, '2025-06-17', 'Cancelled', 203);
INSERT INTO Orderss VALUES (1010, 4, 104, 2, '2025-05-13', 'Completed', 201);
INSERT INTO Orderss VALUES (1011, 4, 112, 6, '2025-07-20', 'Shipped', 203);
INSERT INTO Orderss VALUES (1012, 4, 102, 8, '2025-09-02', 'Shipped', 201);
INSERT INTO Orderss VALUES (1013, 4, 113, 2, '2025-11-09', 'Shipped', 203);
INSERT INTO Orderss VALUES (1014, 4, 120, 6, '2025-01-16', 'Shipped', 202);
INSERT INTO Orderss VALUES (1015, 5, 103, 1, '2025-06-16', 'Pending', 202);
INSERT INTO Orderss VALUES (1016, 5, 110, 2, '2025-08-23', 'Cancelled', 202);
INSERT INTO Orderss VALUES (1017, 6, 104, 7, '2025-07-19', 'Completed', 209);
INSERT INTO Orderss VALUES (1018, 6, 112, 3, '2025-09-01', 'Completed', 203);
INSERT INTO Orderss VALUES (1019, 6, 107, 5, '2025-11-08', 'Pending', 201);
INSERT INTO Orderss VALUES (1020, 7, 120, 3, '2025-08-22', 'Shipped', 202);
INSERT INTO Orderss VALUES (1021, 7, 106, 8, '2025-10-04', 'Completed', 203);
INSERT INTO Orderss VALUES (1022, 7, 118, 4, '2025-12-11', 'Pending', 203);
INSERT INTO Orderss VALUES (1023, 7, 102, 4, '2025-02-18', 'Cancelled', 201);
INSERT INTO Orderss VALUES (1024, 7, 111, 7, '2025-04-25', 'Completed', 201);
INSERT INTO Orderss VALUES (1025, 8, 107, 6, '2025-09-25', 'Completed', 209);
INSERT INTO Orderss VALUES (1026, 9, 113, 8, '2025-10-03', 'Completed', 203);
INSERT INTO Orderss VALUES (1027, 9, 105, 4, '2025-12-10', 'Pending', 212);
INSERT INTO Orderss VALUES (1028, 9, 118, 5, '2025-02-17', 'Pending', 212);
INSERT INTO Orderss VALUES (1029, 9, 114, 7, '2025-04-24', 'Completed', 202);
INSERT INTO Orderss VALUES (1030, 10, 105, 8, '2025-11-06', 'Completed', 201);
INSERT INTO Orderss VALUES (1031, 10, 104, 3, '2025-01-13', 'Pending', 202);
INSERT INTO Orderss VALUES (1032, 11, 114, 2, '2025-12-09', 'Completed', 209);
INSERT INTO Orderss VALUES (1033, 11, 120, 8, '2025-02-16', 'Shipped', 203);
INSERT INTO Orderss VALUES (1034, 11, 118, 1, '2025-04-23', 'Pending', 201);
INSERT INTO Orderss VALUES (1035, 11, 118, 5, '2025-06-05', 'Cancelled', 203);
INSERT INTO Orderss VALUES (1036, 11, 104, 5, '2025-08-12', 'Completed', 202);
INSERT INTO Orderss VALUES (1037, 12, 115, 1, '2025-01-12', 'Pending', 203);
INSERT INTO Orderss VALUES (1038, 12, 117, 3, '2025-03-19', 'Shipped', 201);
INSERT INTO Orderss VALUES (1039, 12, 110, 4, '2025-05-01', 'Completed', 203);
INSERT INTO Orderss VALUES (1040, 13, 106, 1, '2025-02-15', 'Cancelled', 203);
INSERT INTO Orderss VALUES (1041, 14, 116, 1, '2025-03-18', 'Completed', 203);
INSERT INTO Orderss VALUES (1042, 14, 110, 4, '2025-05-25', 'Completed', 202);
INSERT INTO Orderss VALUES (1043, 14, 119, 2, '2025-07-07', 'Completed', 209);
INSERT INTO Orderss VALUES (1044, 14, 103, 3, '2025-09-14', 'Completed', 209);
INSERT INTO Orderss VALUES (1045, 15, 118, 3, '2025-04-21', 'Completed', 212);
INSERT INTO Orderss VALUES (1046, 15, 120, 7, '2025-06-03', 'Completed', 212);
INSERT INTO Orderss VALUES (1047, 16, 107, 5, '2025-05-24', 'Completed', 203);
INSERT INTO Orderss VALUES (1048, 16, 115, 8, '2025-07-06', 'Completed', 202);
INSERT INTO Orderss VALUES (1049, 16, 108, 2, '2025-09-13', 'Completed', 201);
INSERT INTO Orderss VALUES (1050, 17, 119, 4, '2025-06-02', 'Shipped', 202);
INSERT INTO Orderss VALUES (1051, 17, 101, 2, '2025-08-09', 'Pending', 201);
INSERT INTO Orderss VALUES (1052, 17, 108, 2, '2025-10-16', 'Completed', 203);
INSERT INTO Orderss VALUES (1053, 17, 103, 4, '2025-12-23', 'Completed', 209);
INSERT INTO Orderss VALUES (1054, 17, 107, 3, '2025-02-05', 'Pending', 212);
INSERT INTO Orderss VALUES (1055, 18, 119, 8, '2025-07-05', 'Completed', 209);
INSERT INTO Orderss VALUES (1056, 18, 114, 4, '2025-09-12', 'Completed', 201);
INSERT INTO Orderss VALUES (1057, 19, 114, 6, '2025-08-08', 'Completed', 209);
INSERT INTO Orderss VALUES (1058, 19, 115, 1, '2025-10-15', 'Pending', 201);
INSERT INTO Orderss VALUES (1059, 19, 102, 7, '2025-12-22', 'Pending', 203);
INSERT INTO Orderss VALUES (1060, 19, 104, 4, '2025-02-04', 'Completed', 202);
INSERT INTO Orderss VALUES (1061, 20, 118, 8, '2025-09-11', 'Completed', 209);
INSERT INTO Orderss VALUES (1062, 20, 106, 5, '2025-11-18', 'Completed', 202);
INSERT INTO Orderss VALUES (1063, 21, 103, 8, '2025-10-14', 'Cancelled', 212);
INSERT INTO Orderss VALUES (1064, 21, 104, 1, '2025-12-21', 'Pending', 212);
INSERT INTO Orderss VALUES (1065, 21, 101, 2, '2025-02-03', 'Cancelled', 202);
INSERT INTO Orderss VALUES (1066, 22, 106, 7, '2025-11-17', 'Completed', 209);
INSERT INTO Orderss VALUES (1067, 23, 107, 7, '2025-12-20', 'Completed', 202);
INSERT INTO Orderss VALUES (1068, 23, 113, 1, '2025-02-02', 'Completed', 203);
INSERT INTO Orderss VALUES (1069, 23, 115, 5, '2025-04-09', 'Completed', 212);
INSERT INTO Orderss VALUES (1070, 23, 116, 3, '2025-06-16', 'Completed', 203);
INSERT INTO Orderss VALUES (1071, 23, 107, 1, '2025-08-23', 'Shipped', 212);
INSERT INTO Orderss VALUES (1072, 24, 102, 6, '2025-01-23', 'Completed', 201);
INSERT INTO Orderss VALUES (1073, 24, 119, 8, '2025-03-05', 'Shipped', 212);
INSERT INTO Orderss VALUES (1074, 25, 106, 1, '2025-02-01', 'Shipped', 201);
INSERT INTO Orderss VALUES (1075, 25, 106, 2, '2025-04-08', 'Shipped', 201);
INSERT INTO Orderss VALUES (1076, 25, 108, 7, '2025-06-15', 'Completed', 212);
INSERT INTO Orderss VALUES (1077, 26, 108, 1, '2025-03-04', 'Cancelled', 201);
INSERT INTO Orderss VALUES (1078, 27, 114, 6, '2025-04-07', 'Completed', 202);
INSERT INTO Orderss VALUES (1079, 27, 111, 4, '2025-06-14', 'Completed', 209);
INSERT INTO Orderss VALUES (1080, 27, 105, 5, '2025-08-21', 'Completed', 203);
INSERT INTO Orderss VALUES (1081, 27, 103, 1, '2025-10-03', 'Completed', 212);
INSERT INTO Orderss VALUES (1082, 28, 119, 2, '2025-05-10', 'Completed', 212);
INSERT INTO Orderss VALUES (1083, 28, 107, 5, '2025-07-17', 'Completed', 203);
INSERT INTO Orderss VALUES (1084, 29, 103, 4, '2025-06-13', 'Completed', 203);
INSERT INTO Orderss VALUES (1085, 29, 106, 8, '2025-08-20', 'Cancelled', 212);
INSERT INTO Orderss VALUES (1086, 29, 110, 1, '2025-10-02', 'Pending', 212);
INSERT INTO Orderss VALUES (1087, 30, 110, 2, '2025-07-16', 'Completed', 203);
INSERT INTO Orderss VALUES (1088, 30, 104, 2, '2025-09-23', 'Pending', 212);

INSERT INTO Payment VALUES (9001, 1001, 0, 'Pending', '2025-02-04');
INSERT INTO Payment VALUES (9002, 1002, 74000, 'Paid', '2025-04-11');
INSERT INTO Payment VALUES (9003, 1003, 96000, 'Paid', '2025-06-18');
INSERT INTO Payment VALUES (9004, 1004, 72000, 'Paid', '2025-03-07');
INSERT INTO Payment VALUES (9005, 1005, 18500, 'Paid', '2025-05-14');
INSERT INTO Payment VALUES (9006, 1006, 336000, 'Paid', '2025-07-21');
INSERT INTO Payment VALUES (9007, 1007, 0, 'Refunded', '2025-09-03');
INSERT INTO Payment VALUES (9008, 1008, 101500, 'Paid', '2025-04-10');
INSERT INTO Payment VALUES (9009, 1009, 0, 'Refunded', '2025-06-17');
INSERT INTO Payment VALUES (9010, 1010, 8400, 'Paid', '2025-05-13');
INSERT INTO Payment VALUES (9011, 1011, 51000, 'Paid', '2025-07-20');
INSERT INTO Payment VALUES (9012, 1012, 576000, 'Paid', '2025-09-02');
INSERT INTO Payment VALUES (9013, 1013, 29000, 'Paid', '2025-11-09');
INSERT INTO Payment VALUES (9014, 1014, 93000, 'Paid', '2025-01-16');
INSERT INTO Payment VALUES (9015, 1015, 0, 'Pending', '2025-06-16');
INSERT INTO Payment VALUES (9016, 1016, 0, 'Refunded', '2025-08-23');
INSERT INTO Payment VALUES (9017, 1017, 29400, 'Paid', '2025-07-19');
INSERT INTO Payment VALUES (9018, 1018, 25500, 'Paid', '2025-09-01');
INSERT INTO Payment VALUES (9019, 1019, 0, 'Pending', '2025-11-08');
INSERT INTO Payment VALUES (9020, 1020, 46500, 'Paid', '2025-08-22');
INSERT INTO Payment VALUES (9021, 1021, 116000, 'Paid', '2025-10-04');
INSERT INTO Payment VALUES (9022, 1022, 0, 'Pending', '2025-12-11');
INSERT INTO Payment VALUES (9023, 1023, 0, 'Refunded', '2025-02-18');
INSERT INTO Payment VALUES (9024, 1024, 36400, 'Paid', '2025-04-25');
INSERT INTO Payment VALUES (9025, 1025, 132000, 'Paid', '2025-09-25');
INSERT INTO Payment VALUES (9026, 1026, 116000, 'Paid', '2025-10-03');
INSERT INTO Payment VALUES (9027, 1027, 0, 'Pending', '2025-12-10');
INSERT INTO Payment VALUES (9028, 1028, 0, 'Pending', '2025-02-17');
INSERT INTO Payment VALUES (9029, 1029, 115500, 'Paid', '2025-04-24');
INSERT INTO Payment VALUES (9030, 1030, 52000, 'Paid', '2025-11-06');
INSERT INTO Payment VALUES (9031, 1031, 0, 'Pending', '2025-01-13');
INSERT INTO Payment VALUES (9032, 1032, 33000, 'Paid', '2025-12-09');
INSERT INTO Payment VALUES (9033, 1033, 124000, 'Paid', '2025-02-16');
INSERT INTO Payment VALUES (9034, 1034, 0, 'Pending', '2025-04-23');
INSERT INTO Payment VALUES (9035, 1035, 0, 'Refunded', '2025-06-05');
INSERT INTO Payment VALUES (9036, 1036, 21000, 'Paid', '2025-08-12');
INSERT INTO Payment VALUES (9037, 1037, 0, 'Pending', '2025-01-12');
INSERT INTO Payment VALUES (9038, 1038, 96000, 'Paid', '2025-03-19');
INSERT INTO Payment VALUES (9039, 1039, 39200, 'Paid', '2025-05-01');
INSERT INTO Payment VALUES (9040, 1040, 0, 'Refunded', '2025-02-15');
INSERT INTO Payment VALUES (9041, 1041, 12500, 'Paid', '2025-03-18');
INSERT INTO Payment VALUES (9042, 1042, 39200, 'Paid', '2025-05-25');
INSERT INTO Payment VALUES (9043, 1043, 25000, 'Paid', '2025-07-07');
INSERT INTO Payment VALUES (9044, 1044, 5400, 'Paid', '2025-09-14');
INSERT INTO Payment VALUES (9045, 1045, 144000, 'Paid', '2025-04-21');
INSERT INTO Payment VALUES (9046, 1046, 108500, 'Paid', '2025-06-03');
INSERT INTO Payment VALUES (9047, 1047, 110000, 'Paid', '2025-05-24');
INSERT INTO Payment VALUES (9048, 1048, 62400, 'Paid', '2025-07-06');
INSERT INTO Payment VALUES (9049, 1049, 37000, 'Paid', '2025-09-13');
INSERT INTO Payment VALUES (9050, 1050, 50000, 'Paid', '2025-06-02');
INSERT INTO Payment VALUES (9051, 1051, 0, 'Pending', '2025-08-09');
INSERT INTO Payment VALUES (9052, 1052, 37000, 'Paid', '2025-10-16');
INSERT INTO Payment VALUES (9053, 1053, 7200, 'Paid', '2025-12-23');
INSERT INTO Payment VALUES (9054, 1054, 0, 'Pending', '2025-02-05');
INSERT INTO Payment VALUES (9055, 1055, 100000, 'Paid', '2025-07-05');
INSERT INTO Payment VALUES (9056, 1056, 66000, 'Paid', '2025-09-12');
INSERT INTO Payment VALUES (9057, 1057, 99000, 'Paid', '2025-08-08');
INSERT INTO Payment VALUES (9058, 1058, 0, 'Pending', '2025-10-15');
INSERT INTO Payment VALUES (9059, 1059, 0, 'Pending', '2025-12-22');
INSERT INTO Payment VALUES (9060, 1060, 16800, 'Paid', '2025-02-04');
INSERT INTO Payment VALUES (9061, 1061, 384000, 'Paid', '2025-09-11');
INSERT INTO Payment VALUES (9062, 1062, 72500, 'Paid', '2025-11-18');
INSERT INTO Payment VALUES (9063, 1063, 0, 'Refunded', '2025-10-14');
INSERT INTO Payment VALUES (9064, 1064, 0, 'Pending', '2025-12-21');
INSERT INTO Payment VALUES (9065, 1065, 0, 'Refunded', '2025-02-03');
INSERT INTO Payment VALUES (9066, 1066, 101500, 'Paid', '2025-11-17');
INSERT INTO Payment VALUES (9067, 1067, 154000, 'Paid', '2025-12-20');
INSERT INTO Payment VALUES (9068, 1068, 14500, 'Paid', '2025-02-02');
INSERT INTO Payment VALUES (9069, 1069, 39000, 'Paid', '2025-04-09');
INSERT INTO Payment VALUES (9070, 1070, 37500, 'Paid', '2025-06-16');
INSERT INTO Payment VALUES (9071, 1071, 22000, 'Paid', '2025-08-23');
INSERT INTO Payment VALUES (9072, 1072, 432000, 'Paid', '2025-01-23');
INSERT INTO Payment VALUES (9073, 1073, 100000, 'Paid', '2025-03-05');
INSERT INTO Payment VALUES (9074, 1074, 14500, 'Paid', '2025-02-01');
INSERT INTO Payment VALUES (9075, 1075, 29000, 'Paid', '2025-04-08');
INSERT INTO Payment VALUES (9076, 1076, 129500, 'Paid', '2025-06-15');
INSERT INTO Payment VALUES (9077, 1077, 0, 'Refunded', '2025-03-04');
INSERT INTO Payment VALUES (9078, 1078, 99000, 'Paid', '2025-04-07');
INSERT INTO Payment VALUES (9079, 1079, 20800, 'Paid', '2025-06-14');
INSERT INTO Payment VALUES (9080, 1080, 32500, 'Paid', '2025-08-21');
INSERT INTO Payment VALUES (9081, 1081, 1800, 'Paid', '2025-10-03');
INSERT INTO Payment VALUES (9082, 1082, 25000, 'Paid', '2025-05-10');
INSERT INTO Payment VALUES (9083, 1083, 110000, 'Paid', '2025-07-17');
INSERT INTO Payment VALUES (9084, 1084, 7200, 'Paid', '2025-06-13');
INSERT INTO Payment VALUES (9085, 1085, 0, 'Refunded', '2025-08-20');
INSERT INTO Payment VALUES (9086, 1086, 0, 'Pending', '2025-10-02');
INSERT INTO Payment VALUES (9087, 1087, 19600, 'Paid', '2025-07-16');
INSERT INTO Payment VALUES (9088, 1088, 0, 'Pending', '2025-09-23');

INSERT INTO SupportTicket VALUES (5001, 1, 204, '2025-02-05', 'Resolved');
INSERT INTO SupportTicket VALUES (5002, 2, 205, '2025-02-22', 'Resolved');
INSERT INTO SupportTicket VALUES (5003, 4, 204, '2025-03-12', 'Open');
INSERT INTO SupportTicket VALUES (5004, 6, 205, '2025-03-19', 'Resolved');
INSERT INTO SupportTicket VALUES (5005, 7, 211, '2025-04-01', 'Resolved');
INSERT INTO SupportTicket VALUES (5006, 9, 204, '2025-04-14', 'Escalated');
INSERT INTO SupportTicket VALUES (5007, 11, 205, '2025-05-05', 'Resolved');
INSERT INTO SupportTicket VALUES (5008, 12, 211, '2025-05-21', 'Open');
INSERT INTO SupportTicket VALUES (5009, 14, 204, '2025-06-03', 'Resolved');
INSERT INTO SupportTicket VALUES (5010, 16, 205, '2025-06-19', 'Resolved');
INSERT INTO SupportTicket VALUES (5011, 17, 211, '2025-07-07', 'Escalated');
INSERT INTO SupportTicket VALUES (5012, 19, 204, '2025-07-18', 'Resolved');
INSERT INTO SupportTicket VALUES (5013, 20, 205, '2025-08-09', 'Open');
INSERT INTO SupportTicket VALUES (5014, 21, 211, '2025-08-23', 'Resolved');
INSERT INTO SupportTicket VALUES (5015, 23, 204, '2025-09-08', 'Resolved');
INSERT INTO SupportTicket VALUES (5016, 25, 205, '2025-09-22', 'Escalated');
INSERT INTO SupportTicket VALUES (5017, 27, 211, '2025-10-10', 'Resolved');
INSERT INTO SupportTicket VALUES (5018, 29, 204, '2025-10-26', 'Open');


select * from Customer;

select * from Product;

select * from Employee;

select * from Orderss;

select * from Payment;

select * from SupportTicket;

-- 01 Display customer name, city, customer segment, order ID, order date, and order status for every order placed in 2025.
select 
    c.customer_name,
    c.city,
    c.customer_segment,
    o.order_id,
    o.order_date,
    o.order_status
from Customer as c
inner join Orderss as o
on c.customer_id=o.customer_id
where year(o.order_date)=2025;
  
-- 02 Find all customers from Gujarat who belong to the Premium or Enterprise segment. Display customer name, city, and segment.
select
    c.customer_name,
    c.city,
    c.customer_segment
from Customer as c
where c.state='Gujarat' and c.customer_segment in ('Premium','Enterprise');

--03 Display all products whose unit price is between ₹5,000 and ₹20,000, sorted from highest price to lowest price.
select
    p.product_id,
    p.product_name,
    p.category,
    p.unit_price,
    p.stock_quantity
from Product as p
where p.unit_price between 5000 and 20000
order by unit_price desc;

-- 04 Find all completed orders where the quantity is greater than 4. Display order ID, customer ID, product ID, quantity, and order date.
select
    o.customer_id,
    o.order_id,
    o.product_id,
    o.quantity,
    o.order_date
from Orderss as o
where o.order_status='Completed' and o.quantity>=4;

-- 05 Display the five most expensive products. Show product name, category, and unit price.
select top 5
    p.product_name,
    p.category,
    p.unit_price
from Product as p
order by unit_price desc;


--06 Find the total number of customers in each customer segment.
select
    customer_segment as "Customer Segment",
    COUNT(*) as "Total Customers"
from Customer
group by customer_segment;


-- 07 Calculate the total quantity of products ordered for each product.
select 
    p.product_name,
    sum(o.quantity) as Total_quantity
from Product as p
inner join Orderss as o
on p.product_id=o.product_id
group by p.product_name;

-- 08 Find the average unit price of products in each category.
SELECT
    p.category,
    AVG(p.unit_price) AS Avg_unit_price
FROM Product AS p
GROUP BY p.category;

-- 09 Find categories whose average product price is greater than ₹10,000.
SELECT
    p.category,
    AVG(p.unit_price) AS Avg_unit_price
FROM Product AS p
GROUP BY p.category
HAVING AVG(p.unit_price) >= 10000;

-- 10 Find customers who have placed at least 3 orders. Display customer ID and order count.
select
    c.customer_id,
    count(o.order_id) as Order_count
from Customer as c
inner join Orderss as o
on c.customer_id=o.customer_id
group by c.customer_id
having count(o.order_id)>=3;

-- 11 Display customer name, order ID, product name, quantity, and unit price using an INNER JOIN between Customers, Orders, and Products.
select 
     c.customer_name,
     o.order_id,
     o.quantity,
     p.product_name,
     p.unit_price
from Customer as c
inner join Orderss as o
on c.customer_id=o.customer_id
inner join Product as p
on o.product_id=p.product_id;

-- 12 Create a sales report showing customer name, product name, category, quantity, unit price, and calculated Total Value (quantity × unit price).
select 
     c.customer_name,
     o.quantity,
     p.category,
     p.product_name,
     p.unit_price,
     sum((p.unit_price)*(o.quantity)) as Total_value
from Customer as c
inner join Orderss as o
on c.customer_id=o.customer_id
inner join Product as p
on o.product_id=p.product_id
group by c.customer_name,
     o.quantity,
     p.category,
     p.product_name,
     p.unit_price;


-- 13 Find the total sales value generated by each customer, considering all orders. Display customer name and total sales value.
select 
    c.customer_name,
    sum((p.unit_price)*(o.quantity)) as Total_value
from Customer as c
inner join Orderss as o
on c.customer_id=o.customer_id
inner join Product as p
on o.product_id=p.product_id
group by c.customer_name;


-- 14 Find the total sales value for each product category. Display category and total sales value.
select
    p.category,
    sum((p.unit_price)*(o.quantity)) as Total_value
from Product as p
inner join Orderss as o
on p.product_id=o.product_id
group by p.category;


-- 15 Find the number of orders handled by each sales employee. Display employee name, department, and order count.
select
     e.employee_name,e.department,
     count(o.order_id) as Order_count
    from Employee as e
    inner join Orderss as o
    on e.employee_id=o.sales_employee_id
    group by e.employee_name,e.department;


-- 16 Find sales employees who handled more than 8 orders.
select
    e.employee_name,
    count(o.order_id) as Total_orders
from Employee as e
inner join Orderss as o
on e.employee_id=o.sales_employee_id
group by e.employee_name
having  count(o.order_id)>=8;

-- 17 Display all customers, including customers who have never placed an order. Show customer name, order ID, and order status.
select
    c.customer_name,
    o.order_id,
    o.order_status
from Customer as c
left join Orderss as o
on c.customer_id=o.customer_id;

-- 18 Find customers who have never placed an order using a LEFT JOIN.
select
    c.customer_id,
    c.customer_name,
    c.city
from Customer as c
left join Orderss as o
on c.customer_id=o.customer_id
where c.customer_id is null;


-- 19 Find products that have never appeared in an order.
select 
p.product_id,
p.product_name,
o.order_id
from Product as p
left join Orderss as o
on p.product_id=o.product_id
where o.product_id is null;


-- 20 Display every product along with the total quantity sold. Products with no sales must still appear with quantity 0 or an equivalent result.
select
    p.product_id,
    p.product_name,
    sum(o.quantity) as TotalQuantity
from Product as p
left join Orderss as o
on p.product_id=o.product_id
group by p.product_id,
    p.product_name
having count(o.quantity)>=0;


--21 Find customers whose total completed-order value exceeds ₹150,000.
select
    c.customer_id,
    c.customer_name,
    sum((o.quantity)*(p.unit_price)) as Total_value
from Customer as c
inner join Orderss as o
on c.customer_id=o.customer_id
inner join Product as p
on o.product_id =p.product_id
where o.order_status='Completed'
group by c.customer_id,
    c.customer_name
having sum((o.quantity)*(p.unit_price))>150000;

-- 22 Find each customer's completed-order count and completed-order value. Include customers with no completed orders.
select
    c.customer_id,
    c.customer_name,
    count(o.order_id) as Order_count,
    sum(o.quantity*p.unit_price) as Order_value
from Customer as c
left join Orderss as o
on c.customer_id=o.customer_id and o.order_status='Completed'
left join Product as p
on o.product_id=p.product_id
group by c.customer_id,
c.customer_name;


--23Find the top 5 customers by completed-order revenue.
select top 5
    c.customer_name,
    sum(p.unit_price*o.quantity) as Order_revenue
from Customer as c
inner join Orderss as o
on c.customer_id=o.customer_id
inner join Product as p
on o.product_id=p.product_id
where o.order_status='Completed'
group by c.customer_id,c.customer_name
ORDER BY SUM(o.quantity * p.unit_price) DESC;


-- 24 Find the product with the highest total quantity sold within each category. Do not use subqueries or window functions.
SELECT
    p.category,
    p.product_name,
    SUM(o.quantity) AS total_quantity_sold
FROM Product p
JOIN Orderss o
    ON p.product_id = o.product_id
GROUP BY p.category, p.product_name
HAVING SUM(o.quantity) = (
    SELECT MAX(t.total_qty)
    FROM (
        SELECT
            p2.category,
            p2.product_name,
            SUM(o2.quantity) AS total_qty
        FROM Product p2
        JOIN Orderss o2
            ON p2.product_id = o2.product_id
        GROUP BY p2.category, p2.product_name
    ) t
    WHERE t.category = p.category
);

-- 25 Create a customer payment report showing customer name, order ID, order status, paid amount, and payment status.
select 
    c.customer_name,
    o.order_id,
    o.order_status,
    p.payment_status,
    p.paid_amount
from Customer as c
inner join Orderss as o
on c.customer_id=o.customer_id
left join Payment as p
on o.order_id=p.order_id;

-- 26 Find all completed orders for which the payment status is not Paid.
select 
    o.order_id,
    p.payment_status,
    o.order_status
from Orderss as o
left join Payment as p
on o.order_id=p.order_id
where o.order_status='Completed' and p.payment_status='Paid';


-- 27 Find customers who have orders but no support tickets.
select 
    c.customer_name,
    c.customer_id,
    o.order_id,
    s.ticket_id,
    s.ticket_status
from Customer as c
left join Orderss as o
on c.customer_id=o.customer_id
left join SupportTicket as s
on c.customer_id=s.customer_id
;

-- 28 Find customers who have support tickets but no orders.
select
    c.customer_name,
    c.customer_id,
    o.order_id,
    s.ticket_id,
    s.ticket_status
from Customer as c
left join Orderss as o
on c.customer_id=o.customer_id
left join SupportTicket as s
on c.customer_id=s.customer_id
where o.order_id is null and s.ticket_id is not null;


-- 29 Display all employees and the number of support tickets assigned to them, including employees with zero tickets.
select
    e.employee_id,
    e.employee_name,
    s.ticket_id
from Employee as e
left join SupportTicket as s
on e.employee_id=s.employee_id;

-- 30 Find support employees who handled more than 2 tickets.
select 
    e.employee_id,
    e.employee_name,
    count(s.ticket_id) Tickets
from Employee as e
inner join SupportTicket as s
on e.employee_id=s.employee_id
group by e.employee_id,
    e.employee_name
having count(s.ticket_id)>=2;

--31 Create a report containing customer name, order ID, product name, sales employee name, department, quantity, and total order value.
select 
    c.customer_name,
    o.order_id,
    p.product_name,
    e.employee_name,
    e.department,
    o.quantity,
    (o.quantity*p.unit_price) as Total_order_value
    from Customer as c
    inner join Orderss as o
    on c.customer_id=o.customer_id
    inner join Product as p
    on o.product_id=p.product_id
    inner join Employee as e
    on o.sales_employee_id=e.employee_id;

-- 32 Find the total revenue generated by each sales employee from completed orders only.
select
    e.employee_id,
    e.employee_name,
    sum(o.quantity*p.unit_price) as Total_revenue
from Employee as e
inner join Orderss as o
on e.employee_id=o.sales_employee_id
inner join Product as p
on o.product_id=o.product_id
where o.order_status='Completed'
group by e.employee_id,
    e.employee_name;

-- 33 Find sales employees whose completed-order revenue is greater than ₹500,000.
select
    e.employee_id,
    e.employee_name,
    sum(o.quantity*p.unit_price) as Total_revenue
from Employee as e
inner join Orderss as o
on e.employee_id=o.sales_employee_id
inner join Product as p
on o.product_id=p.product_id
where o.order_status='Completed'
group by e.employee_id,
    e.employee_name
having sum(o.quantity*p.unit_price)>=500000;

--34 Find the total completed sales value by customer city.
select
    c.city,
    sum(o.quantity*p.unit_price) as Total_sales_value
from Customer as c
inner join Orderss as o
on c.customer_id=o.customer_id
inner join Product as p
on o.product_id=p.product_id
where o.order_status='Completed'
group by 
    c.city;

-- 35 Find cities whose completed sales value is greater than ₹300,000.
select
    c.city,
    sum(o.quantity*p.unit_price) as Total_sales_value
from Customer as c
inner join Orderss as o
on c.customer_id=o.customer_id
inner join Product as p
on o.product_id=p.product_id
where o.order_status='Completed'
group by c.city
having sum(o.quantity*p.unit_price) >= 300000;

--36 Using FULL OUTER JOIN, produce a comparison between customers with orders and 
--customers represented in support tickets. Show customer ID, customer name, order ID, and ticket ID.
select
    c.customer_id,
    c.customer_name,
    o.order_id,
    t.ticket_id
from Customer as c
full join Orderss as o
on c.customer_id=o.customer_id
full join SupportTicket as t
on c.customer_id=t.customer_id;

--37 Using FULL OUTER JOIN, identify customers who exist only in the order activity or only in the support-ticket activity.

SELECT
    (c.customer_id, o.customer_id) AS "Customer ID",
    c.customer_name AS "Customer Name",
    o.order_id AS "Order ID",
    t.ticket_id AS "Ticket ID"
FROM customer c
FULL OUTER JOIN Orderss o
    ON c.customer_id = o.customer_id
FULL OUTER JOIN SupportTicket t
    ON (c.customer_id, o.customer_id) = t.customer_id
WHERE o.order_id IS NULL
   OR t.ticket_id IS NULL;
