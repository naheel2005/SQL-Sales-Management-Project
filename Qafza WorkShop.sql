CREATE DATABASE SalesDB;
USE SalesDB;

--------------------------------------------------------

CREATE TABLE Customers (
    CustomerID VARCHAR(10) PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Address VARCHAR(100)
);

INSERT INTO Customers VALUES
('C001', 'Ahmad', 'Saleh', 30, 'Male', 'Amman'),
('C002', 'Lina', 'Khaled', 25, 'Female', 'Zarqa'),
('C003', 'Omar', 'Hassan', 40, 'Male', 'Irbid'),
('C004', 'Sara', 'Nabil', 35, 'Female', 'Aqaba'),
('C005', 'Sam', 'Suhail', 32, 'Male', 'Paris'),
('C006', 'Sara', 'Malak', 45, 'Female', 'Milan'),
('C007', 'Odai', 'Hasan', 48, 'Male', 'Texas'),
('C008', 'Maram', 'Nabil', 12, 'Female', 'Riyadh');

--------------------------------------------------------

CREATE TABLE Items (
    ItemCode VARCHAR(10) PRIMARY KEY,
    ItemName VARCHAR(50),
    Price DECIMAL(10,2),
    UOM VARCHAR(10),
    Weight DECIMAL(10,2)
);

INSERT INTO Items VALUES
('I001', 'Laptop', 800, 'PCS', 2.5),
('I002', 'Mouse', 10, 'PCS', 0.2),
('I003', 'Keyboard', 20, 'PCS', 0.8),
('I004', 'Monitor', 150, 'PCS', 4.0),
('I005', 'Printer', 200, 'PCS', 6.5),
('I006', 'Desk', 120, 'PCS', 20),
('I007', 'Chair', 75, 'PCS', 10),
('I008', 'USB Cable', 5, 'PCS', 0.1);
---------------------------------------------------------
---------------------------------------------------------

CREATE TABLE Invoices (
    InvoiceID INT,
    InvoiceLineID INT,
    CustomerID VARCHAR(10),
    CustomerName VARCHAR(100),
    InvoiceDate DATE,
    ItemCode VARCHAR(10),
    ItemName VARCHAR(50),
    Quantity INT,
    UOM VARCHAR(10),
    Price DECIMAL(10,2),
    Total DECIMAL(10,2),
    Discount DECIMAL(10,2),
    VAT DECIMAL(10,2),
    SalesEmployee VARCHAR(50),
    Warehouse VARCHAR(50)
);


INSERT INTO Invoices VALUES
-- Invoice 10001
(10001, 1, 'C001', 'Ahmad Saleh', '2026-04-01', 'I001', 'Laptop', 1, 'PCS', 800, 800, 50, 112, 'Ali', 'WH1'),

-- Invoice 10002
(10002, 1, 'C002', 'Lina Khaled', '2026-04-02', 'I003', 'Keyboard', 1, 'PCS', 20, 20, 0, 2.8, 'Sami', 'WH2'),

-- Invoice 10003
(10003, 1, 'C003', 'Omar Hassan', '2026-04-03', 'I004', 'Monitor', 2, 'PCS', 150, 300, 20, 39.2, 'Rami', 'WH1'),

-- Invoice 10004
(10004, 1, 'C004', 'Sara Nabil', '2026-04-04', 'I005', 'Printer', 1, 'PCS', 200, 200, 10, 26.6, 'Ali', 'WH3'),

-- Invoice 10005
(10005, 1, 'C001', 'Ahmad Saleh', '2026-04-05', 'I006', 'Desk', 1, 'PCS', 120, 120, 0, 16.8, 'Sami', 'WH2'),

-- Invoice 10006
(10006, 1, 'C002', 'Lina Khaled', '2026-04-06', 'I007', 'Chair', 2, 'PCS', 75, 150, 5, 20.3, 'Rami', 'WH1'),

-- Invoice 10007
(10007, 1, 'C003', 'Omar Hassan', '2026-04-07', 'I008', 'USB Cable', 5, 'PCS', 5, 25, 0, 3.5, 'Ali', 'WH3'),

-- Invoice 10008
(10008, 1, 'C004', 'Sara Nabil', '2026-04-08', 'I001', 'Laptop', 1, 'PCS', 800, 800, 100, 98, 'Sami', 'WH2'),

-- Invoice 10009
(10009, 1, 'C001', 'Ahmad Saleh', '2026-04-09', 'I004', 'Monitor', 1, 'PCS', 150, 150, 0, 21, 'Rami', 'WH1'),

-- Invoice 10010
(10010, 1, 'C002', 'Lina Khaled', '2026-04-10', 'I002', 'Mouse', 3, 'PCS', 10, 30, 0, 4.2, 'Ali', 'WH3');

------------------------------------------------
-- Training Task
-- Q1. Write a query to retrieve all items.
Select * from items;

-- Q2. Write a query to retrieve all male customers.
Select  * from Customers where Gender = 'Male' ; 

-- Q3. Write a query to retrieve all customers who are older than 20 years.
select * from Customers where Age > 20;

-- Q4. Write a query to retrieve all customers whose names start with the letter 'S'.
select * from Customers where FirstName like 'S%';

-- Q5. Write a query to retrieve all invoices.
select * from invoices ;

-- Q6. Write a query to retrieve only customers who have at least one invoice.
select distinct CustomerID, CustomerName from invoices ;  

-- Q7. Write a query to calculate the total sales.
select SUM(Total) AS TotalSales from invoices ; 

-- Q8. Write a query to calculate the total number of invoices.
select COUNT(distinct InvoiceID) AS TotalInvoices from invoices ; 
