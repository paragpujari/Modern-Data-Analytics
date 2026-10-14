USE SQL_Basics;
---NULLIF() ---> It helps in checking two expressions and if both the expressions are equal then it returns NULL else it returns the first expression.
---------------------------------------------------Basic Level Interview Questions---------------------------------------------------------------------
---1. Write a query that converts the value 0 into NULL
SELECT NULLIF(0,0) AS result;
---2. Return 100 when comparing 100 with 200
SELECT NULLIF(100,200) AS result;
---3. Display Amit's salary as NULL if it equals 112735
SELECT *,NULLIF(salary,112735) as salary_new FROM Employees WHERE emp_name = 'Amit'
---4. Display all customer names and convert Mumbai into NULL in the city column
SELECT * ,CASE WHEN city = 'Mumbai'	THEN  NULLIF(city,'MUMBAI')	ELSE city END AS new_city_detail   FROM customers
---5. Convert an order amount of -100 into NULL for customer 101
SELECT *,CASE WHEN order_amount = '-100' THEN NULLIF(order_amount,'-100') ELSE order_amount END AS new_order_amount
FROM orders WHERE customer_id = '101'
order by order_amount

------------------------------------------Intermediate Level Interview Questions---------------------------------------------------------------------
---6. Display each employee's name and department, replacing IT with NULL
SELECT emp_name,department,NULLIF(department,'IT') as new_dept_info_detail FROM Employees order by emp_name
---7. Replace the status Inactive with NULL
SELECT *,NULLIF(status,'Inactive') as new_status_info FROM Employees order by status
---8. Display product names and prices, converting 450.00 into NULL
SELECT *,NULLIF(price,'450.00') as new_price_detail FROM products order by price
---9. Display payment IDs and payment statuses, replacing Pending with NULL
SELECT payment_id,payment_status,NULLIF(payment_status,'Pending') as new_payment_status FROM Payments1
---10. Display employee names and emails, converting an empty email string into NULL while preserving existing NULL values
SELECT emp_name,email,NULLIF(email,'') as new_email_detail FROM Employees order by emp_name

-----------------------------------------Analytical problem-solving interview questions-------------------------------------------------------------
---11. Display employees whose salary is 0 as NULL
SELECT *,NULLIF(salary,0) as new_salary_detail FROM Employees order by salary
---12. Replace a placeholder department with NULL. Treat department ID 0 as missing
SELECT *,NULLIF(dept_id,0) as new_dept_detail FROM Employees order by dept_id
---13. Display orders and make an amount of -100 appear as NULL
SELECT *,NULLIF(order_amount,-100) as new_order_amount_detail FROM orders order by order_amount
---14. Treat products priced at 0 as having a missing price
SELECT *,NULLIF(price,0) as missing_price FROM products order by price
---15. Display payment modes while replacing Cash with NULL
SELECT *,NULLIF(payment_mode,'Cash') as new_payment_mode_detail FROM Payments1

----------------------------------------Coding Based Interview Questions---------------------------------------------------------------------------
---16. Display employee IDs and department names. If the department is Marketing, return NULL
SELECT emp_id,department,NULLIF(department,'Marketing') as new_department_detail FROM Employees order by salary
---17. Divide each order amount by a denominator that becomes NULL when the amount is zero
SELECT order_amount,NULLIF(order_amount,0), order_amount/NULLIF(order_amount,0) as new_order_amount FROM orders ORDER BY order_amount
---18. Display payment IDs, but make payment ID 507 appear as NULL
SELECT *,NULLIF(payment_id,'507') as new_payment_detail FROM Payments1 order by payment_id
---19. Display product names and categories, treating Electronics as a placeholder category and NULL
SELECT product_name,category,NULLIF(category,'Electronics') as new_category_detail FROM products order by product_name
---20. Treat an employee's birth date as missing when it matches a specified date. Replace the birth date 1995-03-15 with NULL
SELECT *,NULLIF(birth_date,'1995-03-15') as new_birth_date_detail FROM Employees order by birth_date