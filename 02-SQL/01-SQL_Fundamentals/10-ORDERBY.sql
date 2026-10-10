USE SQL_Basics;
------------------------------------------------------------Basic Level Interview Questions-----------------------------------------------------------------------
---1. Display all customers sorted by customer name alphabetically
SELECT * FROM customers order by customer_name
---2. Display all products sorted by price from lowest to highest
SELECT * FROM products order by price
---3. Display all employees sorted by salary from highest to lowest
SELECT * FROM Employees order by salary desc
---4. Display all orders sorted by order date from oldest to newest
SELECT * FROM orders order by order_date
---5. Display all employees sorted by employee name in reverse alphabetical order
SELECT * FROM Employees order by emp_name desc

----------------------------------------------------Intermediate Level Interview Questions-----------------------------------------------------------------------
---6. Display products sorted by category alphabetically and then by price from lowest to highest
SELECT * FROM products order by category,price
---7. Display employees sorted by department alphabetically and salary from highest to lowest within each department
SELECT * FROM Employees order by department,salary desc
---8. Display orders sorted by customer ID in ascending order and order amount in descending order
SELECT * FROM orders order by customer_id,order_amount desc
---9. Display employees sorted by city alphabetically and employee name alphabetically within each city
SELECT * FROM Employees order by city,emp_name
---10. Display orders sorted by order date from newest to oldest and order amount from lowest to highest for matching dates
SELECT * FROM orders order by order_date desc,order_amount

----------------------------------------------Analytical Based Interview Questions-----------------------------------------------------------------------
---11. A business wants to see its most expensive products first. If two products have the same price, sort them alphabetically by product name
SELECT * FROM products order by price desc, product_name
---12. HR wants to display employees by hire date, showing the most recently hired employee first
SELECT * FROM Employees order by Hire_Date desc
---13. A sales manager wants to see orders grouped by customer ID, with the highest-value orders first for each customer
SELECT * FROM orders order by customer_id,order_amount desc
---14. HR wants employees sorted by status alphabetically, then department alphabetically, and finally salary from highest to lowest
SELECT * FROM Employees order by status,department,salary desc
---15. An inventory manager wants products sorted by category in reverse alphabetical order, and by product price from highest to lowest within each category
SELECT * FROM products order by category desc,price desc

----------------------------------------------Coding Based Interview Questions-----------------------------------------------------------------------
---16. Sort customers by city in ascending order. If two customers have the same city, sort them by customer name in descending order
SELECT * FROM customers order by city,customer_name desc
---17. Sort all orders by order amount from lowest to highest. If two orders have the same amount, show the most recent order first
SELECT * FROM orders order by order_amount,order_date desc
---18. Display employees by department ID in ascending order, then salary in descending order, and then employee name in ascending order
SELECT * FROM Employees order by dept_id,salary desc,emp_name 
---19. Sort payments by payment status alphabetically and payment ID from highest to lowest within each status
SELECT * FROM Payments1 order by payment_status,payment_id desc
---20. Sort products by category alphabetically, product name alphabetically, and price from highest to lowest
SELECT * FROM products order by category,product_name,price desc