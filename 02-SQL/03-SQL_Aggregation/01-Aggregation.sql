USE SQL_Basics;
------------------------------------------Accenture Interview Questions-----------------------------------------------------------------------------
---1. Count the total number of customers
SELECT COUNT(1) AS Total_customers FROM customers
---2. Find the total number of orders
SELECT COUNT(1) AS Total_orders FROM orders
---3. Calculate the total salary of all employees
SELECT SUM([salary]) AS Total_salary FROM Employees
---4. Calculate the average product price
SELECT AVG([price]) AS Average_product_price FROM products
---5. Find the minimum and maximum product prices
SELECT MIN([price]) as minimum_price, MAX([price]) as maximum_price FROM products
---6. Count how many customers belong to each city
SELECT city,COUNT(1) as Total_customers FROM customers GROUP BY city
---7. Find the total order amount for each customer
SELECT customer_id,SUM([order_amount]) AS Total_order_amount FROM orders GROUP BY customer_id
---8. Calculate the average salary for each department
SELECT department,AVG([salary]) AS Average_salary FROM Employees WHERE department IS NOT NULL GROUP BY department order by 2 desc
---9. Find the number of products in each category
SELECT category,COUNT(1) AS Total_products FROM products GROUP BY category order by 2 desc
---10. Find the total salary paid in each city
SELECT city,SUM([salary]) as Total_salary FROM Employees WHERE department IS NOT NULL GROUP BY city order by 2 desc


------------------------------------------Pwc Interview Questions-----------------------------------------------------------------------------
---11. Count the employees whose salary is greater than ₹70,000
SELECT COUNT(1) AS Total_employees FROM Employees WHERE salary > 70000
---12. Calculate the total order amount for orders greater than ₹2,000
SELECT SUM([order_amount]) AS Total_order_amount FROM orders where order_amount > 2000
---13. Find the average price of products in the Electronics category
SELECT AVG([price]) AS Average_price FROM products WHERE category = 'Electronics'
---14. Find the minimum and maximum salary among active employees
SELECT MIN([salary]) as minimum_salary, MAX([salary]) as maximum_salary FROM Employees WHERE status = 'Active' AND department IS NOT NULL 
---15. Count successful payments for each payment mode
SELECT payment_mode,COUNT(1) AS Total_successful_payments FROM Payments1 WHERE payment_status = 'Success' GROUP BY payment_mode order by 2 desc
---16. Find departments with more than two employees
SELECT department,COUNT(1) AS Total_employees FROM Employees WHERE department IS NOT NULL GROUP BY department HAVING COUNT(1) > 2 order by 2 desc
---17. Find customers whose total order amount exceeds ₹5,000
SELECT customer_id,SUM([order_amount]) AS Total_order_amount FROM orders GROUP BY customer_id HAVING SUM([order_amount]) > 5000 order by 2 desc
---18. Find product categories whose average price is greater than ₹10,000
SELECT category,AVG([price]) AS Average_price FROM products GROUP BY category HAVING AVG([price]) > 10000 order by 2 desc
---19. Find cities where the total employee salary is at least ₹100,000
SELECT city,SUM([salary]) AS Total_employee_salary FROM Employees WHERE department IS NOT NULL  GROUP BY city HAVING SUM([salary]) >= 100000 order by 2 desc
---20. Find payment modes with at least two payments
SELECT payment_mode,count(1) as Total_payments FROM Payments1 GROUP BY payment_mode HAVING count(1) >= 2 order by 2 desc

---------------------------------------Deloitte Analytical Problem Solving Interview Questions------------------------------------------------
---21. For each department, calculate employee count, total salary and average salary
SELECT department,COUNT(1) AS employee_count, SUM([salary]) AS Total_salary, AVG([salary]) AS Average_Salary 
FROM Employees 
WHERE department IS NOT NULL
GROUP BY department
ORDER BY 2 DESC
---22. For each product category, find the minimum price, maximum price and average price
SELECT category,MIN([price]) as minimum_price, MAX([price]) as maximum_price, AVG([price]) AS Average_price
FROM products
GROUP BY category
ORDER BY 2 DESC
---23. Find each customer's total, average, minimum and maximum order amount
SELECT customer_id, 
SUM([order_amount]) AS Total_order_amount  , 
AVG([order_amount]) AS Average_order_amount, 
MIN([order_amount]) AS Minimum_order_amount,
MAX([order_amount]) AS Maximum_order_amount
FROM orders GROUP BY customer_id
---24. Count employees in each department who earn more than ₹60,000
SELECT department,COUNT(1) AS Total_employees
FROM Employees 
WHERE salary > 60000 
GROUP BY department
ORDER BY 2 DESC
---25. Find departments where the average salary is greater than ₹80,000, considering only employees earning more than ₹50,000
SELECT department,AVG([salary]) AS Average_salary
FROM Employees
WHERE salary > 50000
GROUP BY department
HAVING AVG([salary]) > 80000
ORDER BY 2 DESC
---26. Find customers who have placed at least three orders
SELECT customer_id,COUNT(1) as total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(1) >= 3
order by 2 desc
---27. Find customers whose average order amount is greater than ₹1,000
SELECT customer_id,AVG([order_amount]) AS Average_order_amount
FROM orders
GROUP BY customer_id
HAVING AVG([order_amount]) > 1000
ORDER BY 2 DESC
---28. Find product categories containing at least two products and having an average price below ₹10,000
SELECT category,COUNT(1) AS Total_products, AVG(price) AS Average_price
FROM products
GROUP BY category
HAVING COUNT(1) >= 2 AND AVG(price) < 10000
ORDER BY 2 DESC
---29. Find payment statuses with more than two payments
SELECT payment_status,COUNT(1) AS Total_payments
FROM Payments1
GROUP BY payment_status
HAVING COUNT(1) > 2
ORDER BY 2 DESC
---30. Find departments where the highest salary is greater than ₹100,000 and the employee count is at least two
SELECT department, MAX(salary) as Highest_salary, COUNT(1) AS Employee_count
FROM Employees 
GROUP BY department
HAVING MAX(salary) > 100000 AND COUNT(1) >= 2
ORDER BY 2 DESC

------------------------------------------E&Y Interview Questions-----------------------------------------------------------------------------
---31. Find the total and average order amount for each customer, considering only positive orders
SELECT customer_id,SUM([order_amount]) as total_order_amount, AVG([order_amount]) AS Average_order_amount 
FROM orders 
WHERE order_amount>0 
GROUP BY customer_id
ORDER BY 2 DESC
---32. Find departments whose average salary is between ₹60,000 and ₹100,000
SELECT department,AVG(salary) AS Average_salary
FROM Employees
WHERE department IS NOT NULL
GROUP BY department
HAVING AVG(salary) BETWEEN 60000 AND 100000
ORDER BY 2 DESC
---33. Find product categories with at least two products and a maximum price above ₹10,000
SELECT category,COUNT(1) AS Total_products, MAX(price) AS Maximum_price
FROM products
GROUP BY category 
HAVING COUNT(1) >= 2 AND MAX(price) > 10000
ORDER BY 2 DESC
---34. Count orders for each customer where the order amount is at least ₹1,000
SELECT customer_id, COUNT(1) AS Total_orders
FROM orders
WHERE order_amount >= 1000
GROUP BY customer_id
ORDER BY 2 DESC
---35. Find payment modes with at least two successful payments
SELECT payment_mode,COUNT(1) AS Total_successful_payments
FROM Payments1 
WHERE payment_status = 'Success'
GROUP BY payment_mode
HAVING COUNT(1) >= 2
ORDER BY 2 DESC
---36. Find customers whose total order amount is between ₹3,000 and ₹10,000
SELECT customer_id,SUM([order_amount]) as Total_order_amount
FROM orders
GROUP BY customer_id
HAVING SUM([order_amount]) BETWEEN 3000 AND 10000
ORDER BY 2 DESC
---37. Find departments where the minimum salary is greater than ₹60,000
SELECT department,MIN([salary]) as minimum_salary
FROM Employees
GROUP BY department
HAVING MIN([salary]) > 60000
ORDER BY 2 DESC
---38. Find cities with at least two employees and an average salary greater than ₹70,000
SELECT city,COUNT(1) AS Total_employees,AVG([salary]) as Average_salary
FROM Employees
GROUP BY city
HAVING COUNT(1) >= 2 AND AVG([salary]) > 70000
ORDER BY 2 DESC
---39. Find customers whose maximum order amount exceeds ₹3,000 and who have placed at least two orders
SELECT customer_id,MAX([order_amount]) as Maximum_order_amount, COUNT(1) AS Total_orders
FROM orders
GROUP BY customer_id
HAVING MAX([order_amount]) > 3000 AND COUNT(1) >= 2
ORDER BY 2 DESC
---40. Find product categories where the total price of all products exceeds ₹20,000, the average price is greater than ₹5,000, and at least two products belong to the category
SELECT
    category,
    COUNT(*) AS total_products,
    SUM(price) AS total_price,
    AVG(price) AS average_price
FROM products
GROUP BY category
HAVING SUM(price) > 20000
   AND AVG(price) > 5000
   AND COUNT(*) >= 2