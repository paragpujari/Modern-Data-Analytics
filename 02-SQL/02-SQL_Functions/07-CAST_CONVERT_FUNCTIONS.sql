USE SQL_Basics;
------------------------------------------------------Accenture Interview Questions------------------------------------------------------------------------------------
---1. Display each order_id and its order_amount converted into an integer using CAST()
SELECT CAST(order_id AS INT) as order_id,CAST(order_amount AS INT) as order_amount FROM orders order by order_date
---2. Display customer_id as a string using CAST()
SELECT CAST(customer_id as NVARCHAR(50)) as customer_id FROM customers order by customer_id
---3. Display product names and prices converted to DECIMAL(10,2) using CAST()
SELECT product_name,CAST(price AS DECIMAL(10,2)) as price FROM products order by price
---4. Display employee names and their salaries as text using CONVERT()
SELECT emp_name,CONVERT(NUMERIC(18,2),salary) as salary FROM Employees
---5. Display order IDs and order dates in YYYY-MM-DD format using SQL Server CONVERT()
SELECT order_id,CONVERT(VARCHAR(10),order_date,23) as order_date FROM orders

------------------------------------------------------Deloitte Interview Questions------------------------------------------------------------------------------------
---6. Convert prices into whole numbers using CONVERT()
SELECT *,CONVERT(INT,price) as new_price FROM products order by price
---7. Display employee names and hire dates in DD/MM/YYYY format
SELECT emp_name, CONVERT(NVARCHAR(50),Hire_Date,103) as new_hire_date FROM Employees order by Hire_Date
---8. Display employee names and birth dates in MM/DD/YYYY format
SELECT emp_name,CONVERT(NVARCHAR(50),birth_date,101) as new_birth_date FROM Employees order by birth_date
---9. Display product names and their prices as text with two decimal places
SELECT product_name,CONVERT(NVARCHAR(50), CAST(price AS DECIMAL(10,2))) as price FROM products order by price
---10. Display employee IDs converted into DECIMAL(10,2) using CAST()
SELECT CAST(emp_id AS DECIMAL(10,2)) as emp_id FROM Employees order by emp_id

---------------------------------------------Pwc Analytical Practical Interview Questions------------------------------------------------------------------------------------
---11. Convert order_amount into DECIMAL(12,2) using CAST()
SELECT CAST(order_amount AS DECIMAL(12,2)) as order_amount FROM orders order by order_amount
---12. Display order IDs and amounts as text using CONVERT()
SELECT order_id, CONVERT(NVARCHAR(20),order_amount) as order_amount FROM orders order by order_id
---13. Convert order dates into DD/MM/YYYY using CONVERT()
SELECT CONVERT(NVARCHAR(20),order_date,103) as order_date FROM orders order by order_date
---14. Convert order dates into MM/DD/YYYY using CONVERT()
SELECT CONVERT(NVARCHAR(20), order_date,101) as order_date FROM orders order by order_date
---15. Convert employee salaries into DECIMAL(12,2) using CAST()
SELECT CAST(salary AS DECIMAL(12,2)) as employee_salary FROM Employees order by salary
---16. Display payment IDs and their character representations
SELECT CONVERT(NVARCHAR(10),payment_id) as payment_id FROM Payments1 order by payment_id
---17. Convert department IDs into decimal values
SELECT CONVERT(DECIMAL(10,2),dept_id) as dept_id FROM Departments order by dept_id
---18. Convert prices into DECIMAL(10,1) using CAST()
SELECT CONVERT(DECIMAL(10,1),price) as price FROM products order by price
---19. Display employee birth dates as YYYY-MM-DD using CONVERT()
SELECT CONVERT(NVARCHAR(10),birth_date,23) as birth_date FROM Employees order by birth_date
---20. Convert prices to text and then back to decimal
SELECT CAST(CONVERT(NVARCHAR(10),price)as DECIMAL(10,2)) as price FROM products order by price

-------------------------------------------EY Coding Interview Questions-----------------------------------------------------------------------------------------------------
---21. Convert all customer IDs into strings using CONVERT()
SELECT CONVERT(NVARCHAR(10), customer_id) as customer_id FROM customers order by customer_id
---22. Convert salaries to DECIMAL(8,2) using CAST()
SELECT CAST(salary AS DECIMAL(10,2)) as employee_salary FROM Employees order by salary
---23. Display order dates in YYYYMMDD format using CONVERT()
SELECT CONVERT(NVARCHAR(10),order_date,112) as order_date FROM orders ORDER BY order_date
---24. Convert prices to DECIMAL(7,2) using CAST()
SELECT CAST(price AS DECIMAL(7,2)) as price FROM products order by price
---25. Convert payment IDs into integers using CAST()
SELECT CAST(payment_id AS INT) as payment_id FROM Payments1 order by payment_id
----26. Convert department names into CHAR(15) using CAST()
SELECT CAST(department AS CHAR(15)) as department FROM Employees order by department
---27. First convert Hire_Date into a character string, then convert that string back into a DATE
SELECT CAST(CAST(Hire_Date AS CHAR) AS DATE) AS Hire_Date FROM Employees order by Hire_Date
---28. Use nested CONVERT() functions to convert employee salaries into text and then back to integers
SELECT CONVERT(INT,CONVERT(NVARCHAR(10),salary)) as salary FROM Employees order by salary