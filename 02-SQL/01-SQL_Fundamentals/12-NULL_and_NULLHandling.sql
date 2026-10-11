USE SQL_Basics;
---------------------------------------Basic Level Interview Questions------------------------------------------------
---1. Find employees whose salary is NULL
SELECT * FROM Employees WHERE salary IS NULL
---2. Find employees whose email is NULL
SELECT * FROM Employees WHERE email IS NULL
---3. Find employees whose department is NULL
SELECT * FROM Employees WHERE department IS NULL
---4. Find employees whose department is not NULL
SELECT * FROM Employees WHERE department IS NOT NULL
---5. Find employees whose dept_id is NULL
SELECT * FROM Employees WHERE dept_id IS NULL

---------------------------------------Intermediate Level Interview Questions------------------------------------------------
---6. Display NULL salaries as zero
SELECT *,COALESCE(salary,0) as new_salary FROM Employees WHERE salary IS NULL
---7. Display NULL emails as 'Email Not Provided'
SELECT *,COALESCE(email,'Email Not Provided') AS new_email FROM Employees WHERE email IS NULL
---8. Display NULL departments as 'Not Assigned'
SELECT *,COALESCE(department,'Not Assigned') AS new_department FROM Employees WHERE department IS NULL
---9. Replace NULL values in dept_id with zero using ISNULL()
SELECT *,ISNULL(dept_id,0) as new_deptid FROM Employees
---10. Find employees whose salary is NULL and display a replacement value
SELECT *,COALESCE(salary,0) as new_salary FROM Employees WHERE salary IS NULL

--------------------------------------Analytical Based Interview Questions----------------------------------------------------
---11. Identify employees missing both salary and email
SELECT * FROM Employees WHERE salary IS NULL AND email IS NULL
---12. Find employees missing either salary or email
SELECT * FROM Employees WHERE salary IS NULL OR email IS NULL
---13. Display a fallback value when both department and email are NULL
SELECT *,COALESCE(department,'Department Not found') as new_department, COALESCE(email,'Email not provided') as new_email
FROM Employees WHERE department IS NULL AND email IS NULL
---14. Display 'Salary Missing' for NULL salaries and the actual salary otherwise
SELECT *,COALESCE(salary,0,salary) as new_salary FROM Employees
---15. Convert an empty string to NULL using ISNULL
SELECT *,NULLIF(department,' ') as new_department FROM Employees

--------------------------------Coding Based Interview Qustions---------------------------------------------------------------
---16. Count employees with missing salaries
SELECT COUNT(1) AS Total_employees FROM Employees WHERE salary IS NULL
---17. Display all employees and replace missing values in salary, department, and email
SELECT *,
COALESCE(salary    ,0)  as new_salary,
COALESCE(department,'department not assigned') as new_department,
COALESCE(email     ,'email not assigned') as new_email
FROM  Employees
---18. Find customers who have no matching orders and give a meaningful statement 0
SELECT *,COALESCE(o.customer_id,0) as new_customerid FROM 
customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL
---19. Display all payments and replace missing payment statuses with 'Unknown'
SELECT *,COALESCE(payment_status,'Unknown') as new_payment_status FROM Payments1
---20. Find employees whose salary is NULL and safely display a fallback using NULLIF() and COALESCE()
SELECT *,COALESCE(NULLIF(salary,''),0) as new_salary FROM Employees WHERE salary IS NULL
