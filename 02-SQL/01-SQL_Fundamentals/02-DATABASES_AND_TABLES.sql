USE SQL_Basics;
-------------------------------------------Basic Level Interview Questions---------------------------------------------------------------------------
---1. Create a new database named CompanyDB
CREATE DATABASE CompanyDB
---2. Create an Employees_data table with appropriate data types
DROP TABLE IF EXISTS Employees_data;

CREATE TABLE Employees_data(
	empid	INT IDENTITY(1,1)		,
	empname		VARCHAR(50)		    ,
	department  VARCHAR(50)			,
	salary		DECIMAL(10,2)		,
	Hire_Date   DATE
)

SELECT * FROM Employees_data
---3. Add a new column named phone_number to the existing customers table
ALTER TABLE customers ADD phone_number VARCHAR(50)
---4. Insert a new customer into the Customers table
INSERT INTO customers(
customer_id                         ,
customer_name						,
city								,
phone_number
)
VALUES(
126                                 ,
'Anish'                             ,
'Kota'                              ,
'7865897435'
)
SELECT * FROM customers order by customer_id
---5. Delete the phone_number column from the Customers table
ALTER TABLE customers DROP COLUMN phone_number

-------------------------------------------Intermediate Level Interview Questions-----------------------------------------------------------------
---6. Create a Departments_data table where dept_id is the primary key and dept_name cannot be empty
CREATE TABLE Departments_data(
dept_id     INT IDENTITY (1,1) PRIMARY KEY		,
dept_name   NVARCHAR(50)       NOT  NULL
)

SELECT * FROM Departments_data
---7. Create an Orders_New table with a primary key, a positive order amount, and a default order status
CREATE TABLE Orders_New(
order_id           INT IDENTITY(1,1)	PRIMARY	 KEY		,
customer_id        INT                                      ,
order_date         DATE                                     ,
order_amount       DECIMAL(10,2)	CHECK(order_amount>0)   ,
order_status       NVARCHAR(50)		DEFAULT 'Success'
)

SELECT * FROM Orders_New
---8. Add a UNIQUE constraint to the email column of a new employee table making sure that all email should be unique
CREATE TABLE Employee_data(
emp_id           INT IDENTITY(1,1) PRIMARY KEY              ,
emp_name         NVARCHAR(50)      NOT NULL                 ,
age              INT  CHECK(age > 18)                       ,
email            NVARCHAR(50)      UNIQUE                   ,
dept_id          INT    DEFAULT '101'
)

SELECT * FROM Employee_data

---9. Update the salary of employee Amit to ₹120,000

UPDATE x
SET    x.salary = '120000'
FROM Employees x WHERE x.emp_name = 'Amit'

SELECT * FROM Employees x WHERE x.emp_name = 'Amit'

---10. Remove the Orders_New table only if it exists
DROP TABLE IF EXISTS Orders_New

--------------------------------------------------Analytical Based Interview Questions---------------------------------------------------------------
---11. The company needs a table for employee records. Employee IDs must be unique, names are mandatory, and salary must not be negative. Design the table
DROP TABLE IF EXISTS Employee_Info;
CREATE TABLE Employee_Info(
	emp_id		INT IDENTITY(1,1)	PRIMARY KEY		,
	emp_name	NVARCHAR(50)		NOT NULL        ,
	salary      DECIMAL(10,2)       CHECK(salary >0)
)

SELECT * FROM Employee_Info

---12. A company must ensure that every employee's dept_id refers to an existing department. Create the tables with a foreign key
SELECT * FROM Department_Info  

DROP TABLE IF EXISTS Employee_Info;
CREATE TABLE Employee_Info(
	emp_id		INT IDENTITY(1,1)	PRIMARY KEY		,
	emp_name	NVARCHAR(50)		NOT NULL        ,
	salary      DECIMAL(10,2)       CHECK(salary >0),
	gender      NVARCHAR(50)		NOT NULL        ,
	dept_id     INT                                 ,
	FOREIGN KEY(dept_id)
	REFERENCES departments(dept_id)
)

SELECT * FROM Employee_Info
---13. You accidentally inserted an incorrect record into a table. You want to remove all rows but keep the table structure. Which command should you use?

SELECT * FROM depts  

---------Remove all rows but keep the table structure
TRUNCATE TABLE depts


SELECT * FROM depts

---14. A database administrator wants to allow a user to read the Customers table but not modify it. Write the SQL statements

---GRANT SELECT ON CompanyDB.Customers TO 'analyst'@'localhost';

---15. You need to insert a new department and commit the change only when the transaction succeeds. Demonstrate transaction control

BEGIN TRANSACTION
   INSERT INTO Departments(dept_id,dept_name)VALUES('105','Operations')
COMMIT

SELECT * FROM Departments

----------------------------------Coding Based Interview Questions-------------------------------------------------------------------------------------
---16. Create a Products_New table with a primary key, a required product name, a unique SKU, and a non-negative price
DROP TABLE IF EXISTS Products_New;

CREATE TABLE Products_New(
	product_id		INT	   IDENTITY(1,1)  PRIMARY KEY			,
	product_name	NVARCHAR(50)	NOT NULL					,
	SKU				NVARCHAR(50)	UNIQUE						,
	price			DECIMAL(10,2)   CHECK(price>0)
);

SELECT * FROM Products_New
---17. Insert three products into Products_New

INSERT INTO Products_New(product_name, SKU,price)VALUES('Keyboard', 'SKU101', 1200.00)
INSERT INTO Products_New(product_name, SKU,price)VALUES('Mouse'	  , 'SKU102', 1500.00)
INSERT INTO Products_New(product_name, SKU,price)VALUES('Monitor' , 'SKU103', 1800.00)

SELECT * FROM Products_New
---18. Modify Products_New to add a stock_quantities column and set its default value to zero
ALTER TABLE Products_New ADD stock_quantities INT  DEFAULT 0
---19. Demonstrate a transaction that inserts a new product but cancels the change using ROLLBACK
BEGIN TRANSACTION
   INSERT INTO Products_New(product_name, SKU, price, stock_quantity,stock_quantities)VALUES('Webcam', 'SKU104', 2500.00, 1976,0)
ROLLBACK
SELECT * FROM Products_New
---20. 
/*
Create a complete Student table that demonstrates data types and five important constraints.
Requirement:
- student_id must be unique and not NULL.
- student_name is mandatory.
- email must be unique.
- age must be at least 18.
- course_id must refer to an existing course.
*/

CREATE TABLE Courses1 (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL
);

CREATE TABLE Student1 (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 18),
    course_id INT,
    admission_date DATE DEFAULT (CURRENT_DATE),
    FOREIGN KEY (course_id)
        REFERENCES Courses1(course_id)
);
