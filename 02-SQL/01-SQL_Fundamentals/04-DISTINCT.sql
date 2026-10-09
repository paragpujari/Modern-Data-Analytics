/*
	DISTINCT ---------->  It helps in picking the unique values from the table where we are fetching the data.

						  It removes all the duplicate records from the table.
*/
--------------------------------------------Basic Level Interview Questions-----------------------------------------------------------------------
---1. Display each city from Customers only once
SELECT DISTINCT city AS Unique_city FROM customers
---2. Find all unique employee departments
SELECT DISTINCT department AS Unique_employee_department FROM Employees WHERE department IS NOT NULL
---3. Find all unique payment modes
SELECT DISTINCT payment_mode AS Unique_payment_mode FROM Payments1
---4. Find all unique payment statuses
SELECT DISTINCT payment_status AS Unique_payment_status FROM Payments1
---5. Find all unique product categories
SELECT DISTINCT category AS Unique_product_category FROM products
---6. Find all unique employee cities
SELECT DISTINCT city AS Unique_employee_cities FROM Employees
---7. Find all unique customer IDs from the Orders table
SELECT DISTINCT customer_id AS Unique_customer_id FROM orders
---8. Find all unique order amounts
SELECT DISTINCT order_amount AS Unique_order_amount FROM orders
---9. Find all unique employee statuses
SELECT DISTINCT status AS Unique_employee_status FROM Employees
---10. Find all unique product prices
SELECT DISTINCT price AS Unique_product_price FROM products

----------------------------------------Intermediate Level Interview Questions-----------------------------------------------------------------------
---11. Find unique combinations of employee names and departments
SELECT DISTINCT emp_name,department FROM Employees
---12. Find unique combinations of employee cities and departments
SELECT DISTINCT city,department FROM Employees
---13. Find unique combinations of customer IDs and order amounts
SELECT DISTINCT customer_id, order_amount FROM orders
---14. Find unique combinations of payment modes and payment statuses
SELECT DISTINCT payment_mode, payment_status FROM Payments1
---15. Find unique combinations of product categories and prices
SELECT DISTINCT category, price FROM products
---16. Find unique combinations of employee departments and statuses
SELECT DISTINCT department, status FROM Employees WHERE department IS NOT NULL
---17. Find unique combinations of customer names and cities
SELECT DISTINCT customer_name,city FROM customers
---18. Find unique combinations of product names and categories
SELECT DISTINCT product_name, category FROM products
---19. Find unique combinations of employee departments, cities, and statuses
SELECT DISTINCT department,city,status FROM Employees
---20. Find unique combinations of customer IDs, order dates, and order amounts
SELECT DISTINCT customer_id, order_date, order_amount FROM orders

-------------------------------------Analytical Level Interview Questions-----------------------------------------------------------------------
---21. What is the difference between SELECT city and SELECT DISTINCT city?
---SELECT city ---> It selects all the cities from the table
SELECT city FROM customers
---SELECT DISTINCT city ---> It selects the unique city from tha table
SELECT DISTINCT city FROM customers
---22. Why does SELECT DISTINCT department, city return more rows than SELECT DISTINCT department?
SELECT DISTINCT department FROM Employees WHERE department IS NOT NULL
SELECT DISTINCT department,city FROM Employees WHERE department IS NOT NULL
/*
	Observations:--

	SELECT DISTINCT department, city return more rows than SELECT DISTINCT department because there are five distinct cities than the distinct departments in the employees table.
*/
---23. Find the unique employee department and salary combinations
SELECT DISTINCT department,salary FROM Employees WHERE department IS NOT NULL
---24. Find unique combinations of order date and order amount
SELECT DISTINCT order_date, order_amount FROM orders
---25. Find unique combinations of employee status and city
SELECT DISTINCT status,city FROM Employees
---26. Find unique combinations of product category and product name
SELECT DISTINCT category,product_name FROM products
---27. What happens when DISTINCT is applied to all columns?
SELECT DISTINCT * FROM orders
/*
	Observations:--

	If DISTINCT is applied to all the columns then we get unique records of data from the table.
*/
---28. Find unique payment records based on payment mode, status, and order ID
SELECT DISTINCT payment_mode, payment_status, order_id FROM Payments1
---29. Find unique combinations of employee city, department, and salary
SELECT DISTINCT city,department,salary FROM Employees WHERE department IS NOT NULL
---30. Why can DISTINCT return fewer rows than the original table?
SELECT department FROM Employees WHERE department IS NOT NULL
SELECT DISTINCT department FROM Employees WHERE department IS NOT NULL
/*
  Obserevations:

	DISTINCT fetches unique combinations of records from the table. The original table fetches all the records from the table.
	So this is the reason that DISTINCT return fewer rows than the original table
*/
-----------------------------------------------Analytical Based Interview Questions-------------------------------------------------------------
---31. Display all unique cities where customers are located
SELECT DISTINCT city  FROM customers
---32. Display all unique departments in the Employees table
SELECT DISTINCT department FROM Employees WHERE department IS NOT NULL
---33. Display all unique payment statuses
SELECT DISTINCT payment_status FROM Payments1
---34. Display unique combinations of employee name and city
SELECT DISTINCT emp_name,city FROM Employees
---35. Display unique combinations of product category and price
SELECT DISTINCT category,price FROM products
---36. Display unique combinations of order customer ID and order amount
SELECT DISTINCT customer_id,order_amount FROM orders
---37. Display unique combinations of employee department, city, and status
SELECT DISTINCT department,city,status FROM Employees WHERE department IS NOT NULL
---38. Display unique combinations of payment mode and payment status
SELECT DISTINCT payment_mode, payment_status FROM Payments1
---39. Display only unique complete rows from the Employees table
SELECT DISTINCT * FROM Employees WHERE department IS NOT NULL
---40. Display unique combinations of product name, category, and price
SELECT DISTINCT product_name,category,price FROM products