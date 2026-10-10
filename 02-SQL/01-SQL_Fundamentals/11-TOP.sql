USE SQL_Basics
------------------------------------------------------------Basic Level Interview Questions-------------------------------------------------------------------
---1. Retrieve the first 5 customers
SELECT TOP 5 * FROM customers
---2. Retrieve the top 3 products
SELECT TOP 3 * FROM products
---3. Display the top 5 highest-priced products
SELECT TOP 5 * FROM products order by price desc
---4. Find the top 3 lowest-priced products
SELECT TOP 3 * FROM products order by price
---5. Retrieve the top 5 highest-paid employees
SELECT TOP 5 * FROM Employees order by salary desc

-------------------------------------------------------Intermediate Level Interview Questions-------------------------------------------------------------------
---6. Find the top 5 largest orders by amount
SELECT TOP 5 * FROM orders order by order_amount desc
---7. Find the top 3 most recently hired employees
SELECT TOP 3 * FROM Employees order by Hire_Date desc
---8. Display the top 5 customers by customer ID, in ascending order
SELECT TOP 5 * FROM customers order by customer_id
---9. Retrieve the top 20 percent of products by price
SELECT TOP 2 * FROM products order by price
---10. Retrieve the top 5 highest-paid employees, including salary ties
SELECT TOP (5) WITH TIES emp_name,city,salary,department FROM Employees order by salary desc

--------------------------------------------------Analytical Based Interview Questions-------------------------------------------------------------------
---11. Find the second-highest product price using TOP
SELECT TOP 1 * FROM products WHERE price < (
SELECT MAX(price) AS maximum_price FROM products
)order by price desc
---12. Find the top 3 highest-paid employees
SELECT TOP 3 * FROM Employees order by salary desc
---13. Find the top 3 most expensive products, including ties
SELECT TOP (3) WITH TIES product_name,category,price FROM products order by price desc
---14. Retrieve the top 10 most recent orders
SELECT TOP 10 * FROM orders order by order_date desc
---15. Find the top 5 expensive orders by amount, including ties
SELECT TOP(5)WITH TIES order_id,customer_id,order_date,order_amount FROM orders order by order_amount desc

--------------------------------------------------Coding Based Interview Questions-------------------------------------------------------------------
---16. Display the top 5 products with the highest prices
SELECT TOP 5 * FROM products order by price desc
---17. Find the top 3 employees with the lowest salaries
SELECT TOP 3 * FROM Employees where salary is not null order by salary
---18. Retrieve the top 5 orders with the latest order dates
SELECT TOP 5 * FROM orders order by order_date desc
---19. Display the top 30 percent of employees by salary descending order
SELECT TOP 3 * FROM Employees WHERE salary IS NOT NULL order by salary desc
---20. Find the top 5 orders, including ties, ordered by the highest order amount
SELECT TOP (5) WITH TIES order_id, customer_id,order_date,order_amount FROM orders order by order_amount desc