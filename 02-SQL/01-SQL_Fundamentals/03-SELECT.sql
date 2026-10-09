USE SQL_Basics;
--------------------------------------------------Basic Level Interview Questions-----------------------------------------------------------------------------
---1. Display all customers
SELECT * FROM customers
---2. Display only employee names and salaries
SELECT emp_name,salary FROM Employees
---3. Retrieve the product name, category, and price
SELECT product_name,category,price FROM products
---4. Display customers whose city is Mumbai
SELECT * FROM customers WHERE city = 'Mumbai'
---5. Find products costing more than ₹10,000
SELECT * FROM products WHERE price > 10000
---6. Display orders where the order amount is less than ₹1,000
SELECT * FROM orders WHERE order_amount < 1000
---7. Display employees whose salary is greater than ₹100,000
SELECT * FROM Employees WHERE salary > 100000
---8. Display the five most expensive products
SELECT top 5 * FROM products order by price desc
---9. Display unique employee cities
SELECT DISTINCT city AS Unique_city FROM Employees
---10. Display orders placed in June 2026
SELECT * FROM orders WHERE MONTH(order_date) = '06' AND YEAR(order_date) = '2026'


-------------------------------------------------Intermediate Level Interview Questions--------------------------------------------------------------
---11. Find employees from Delhi earning more than ₹60,000
SELECT * FROM Employees WHERE city IN ('Delhi') AND salary > 60000 order by salary
---12. Find orders between ₹1,000 and ₹3,000
SELECT * FROM orders WHERE order_amount BETWEEN 1000 AND 3000
---13. Find customers from Mumbai, Delhi, Pune
SELECT * FROM customers WHERE city IN ('Mumbai','Delhi','Pune')
---14. Find products whose names start with 'S'
SELECT * FROM products WHERE product_name LIKE 'S%'
---15. Find employees whose email is missing
SELECT * FROM Employees WHERE email IS NULL
---16. Display employee names with column aliases
SELECT emp_name as employee_name, department as department_name,salary as monthly_salary FROM Employees
---17. Display product names, original prices, and prices after a 10% discount
SELECT product_name,price as original_price,0.10*price as discounted_price,(price-0.10*price) as price_after_discount FROM products
---18. Find orders with negative amounts
SELECT * FROM orders WHERE order_amount < 0
---19. Display the latest five orders
SELECT top 5 * FROM orders order by order_date desc
---20. Find active IT employees earning above ₹110,000
SELECT * FROM Employees WHERE status = 'active' and department = 'IT' and salary > 110000


-----------------------------------------------Analytical Level Interview Questions-----------------------------------------------------------
---21. Find the three highest-paid employees
SELECT top 3 * FROM Employees order by salary desc
---22. Find products priced above the average product price
SELECT * FROM products where price >(
SELECT AVG(price) AS Average_price FROM products
);
---23. Find employees earning more than ₹100,000
SELECT * FROM Employees WHERE salary > 100000
---24. Find customers who have placed orders above ₹4,000
SELECT * FROM customers WHERE customer_id IN(
SELECT customer_id FROM orders WHERE order_amount > 4000
)
---25. Display products that cost more than ₹30,000
SELECT * FROM products WHERE price > 30000
---26. Find employees hired during 2023
SELECT * FROM Employees WHERE YEAR(Hire_Date) = '2023'
---27. Find customers whose names contain the letter 'a'
SELECT * FROM customers WHERE customer_name LIKE '%a%'
---28. Display orders that are either negative or greater than ₹4,000
SELECT * FROM orders WHERE order_amount < 0 OR order_amount > 4000
---29. Find the second-highest distinct salary
SELECT MAX(salary) AS Second_highest_salary FROM Employees WHERE salary <(
SELECT MAX(salary) AS highest_salary FROM Employees
)
---30. Find employees whose salaries are above ₹60,000 but below ₹100,000
SELECT * FROM Employees WHERE salary > 60000 AND salary < 100000


------------------------------------------Coding Based Level Interview Questions--------------------------------------------------------------
---31. Display the order or orders with the highest amount
SELECT top 1 * FROM orders order by order_amount desc
---32. Find employees earning the maximum salary
SELECT * FROM Employees WHERE salary IN(
SELECT MAX(salary) as maximum_salary FROM Employees
)
---33. Find employees earning above their department's average salary
;with cte1 as(
SELECT department,AVG(salary) AS average_salary FROM Employees WHERE department IS NOT NULL GROUP BY department
),cte2 as(
SELECT * FROM Employees
)
SELECT * FROM cte1 a
JOIN          cte2 b
ON            a.department = b.department
WHERE         b.salary > a.average_salary
---34. Find products cheaper than every Electronics product
SELECT * FROM products WHERE price < (
SELECT MIN(price) AS minimum_price FROM products WHERE category IN ('Electronics')
)
---35. Display customer IDs that appear in orders exceeding ₹4,000
SELECT customer_id FROM orders WHERE order_amount > 4000
---36. Find customers who have never placed an order
SELECT * FROM customers WHERE customer_id NOT IN (
SELECT customer_id FROM orders
)
---37. Find payments with a Pending status
SELECT * FROM Payments1 WHERE payment_status = 'Pending'
---38. 
/*
Classify employees as High, Medium, Low, or Not Available based on salary.
- High: salary of ₹100,000 or more
- Medium: salary of ₹60,000 or more but below ₹100,000
- Low: salary below ₹60,000
- Not Available: salary is missing
*/
SELECT *,CASE WHEN salary >= 100000  THEN 'High'
              WHEN salary >= 60000  AND salary < 100000   THEN  'Medium'
              WHEN salary <  60000                        THEN  'Low'
              WHEN salary IS NULL                         THEN 'Not Available' END AS Salary_Category
              FROM Employees

---39. Find orders greater than the average order amount
SELECT * FROM orders WHERE order_amount >(
SELECT AVG(order_amount) AS Average_order_amount FROM orders
)

---40. Find employees with the second-highest salary in their department
;with cte as(
SELECT *,ROW_NUMBER()OVER(PARTITION BY department ORDER BY salary DESC) as rwn FROM Employees WHERE department IS NOT NULL
)
SELECT * FROM cte WHERE rwn in (2)