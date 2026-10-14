USE SQL_Basics;
---COALESCE() = It returns the first non-NULL value from the values provided to it
SELECT COALESCE(NULL, NULL, 'Hello','SQL') AS Result;
--------------------------------------------------------Basic Level Interview Questions-------------------------------------------------------------------------
---1. Return a default value when the first value is NULL. Return 100 if the first value is NULL
SELECT COALESCE(NULL,100) AS Result
---2. Return the first available value.Return the first non-NULL value from NULL, NULL, and 500
SELECT COALESCE(NULL,NULL,500) AS Result
---3. Display employee email or a default message. If an employee's email is NULL, display Email Not Available
SELECT email,COALESCE(email,NULL,'Email Not Available') as new_email FROM Employees
---4. Display employee department ID or a default value. Display 0 when an employee's department ID is NULL
SELECT dept_id,COALESCE(dept_id,NULL,0) as new_dept_id FROM Employees
---5. Display employee salary or a default salary. Display 0 when an employee's salary is NULL
SELECT salary,COALESCE(salary,NULL,0) as new_salary FROM Employees

-------------------------------------------------Intermediate Level Interview Questions-------------------------------------------------------------------------
---6. Return the first available employee detail. Return the employee's email if available; otherwise, return their name
SELECT email,COALESCE(email,NULL,emp_name) as new_email FROM Employees order by email
---7. Display a default city when customer city is NULL. Display City Not Provided if the city is NULL
SELECT city, COALESCE(city, NULL, 'City Not Provided') as new_city FROM customers
---8. Return the first available value from three columns. Return the employee's email, then name, then the default text Unknown
SELECT email,emp_name,COALESCE(email,emp_name,'default text Unknown') as first_value FROM Employees
---9. Display an order amount or a default amount. Display 0 if an order amount is NULL
SELECT order_amount, COALESCE(order_amount,NULL,0) as new_order_amount FROM orders
---10. Display a payment mode or a default message. Display Payment Mode Not Available when the payment mode is NULL
SELECT payment_mode,COALESCE(payment_mode,NULL,'Payment Mode Not Available') as new_payment_mode FROM Payments1

------------------------------------------------Analytical Problem Solving Based Interview Questions------------------------------------------------------------
---11. HR wants to display the actual salary when available. If it is NULL, show 50000
SELECT salary,COALESCE(salary,NULL,50000) as new_salary FROM Employees order by salary
---12. Display email when available, otherwise display employee name, and if both are NULL, display Contact Unknown
SELECT email,emp_name,COALESCE(email,emp_name,'Contact Unknown') as contact_detail FROM Employees 
---13. A reporting system needs every customer to have a display value for their city. If city is null then City Unknown
SELECT COALESCE(city,NULL,'City Unknown') as customer_city_detail FROM customers
---14. Missing order amount fallback. The reporting team wants missing order amounts displayed as zero
SELECT order_amount,COALESCE(order_amount,NULL,0) as new_order_amount FROM orders order by order_amount
---15. Missing payment status fallback. Display the payment status or Status Unknown if no status exists
SELECT payment_status,COALESCE(payment_status,NULL,'Status Unknown') as new_payment_status FROM Payments1

-----------------------------------------------Coding Level Interview Questions--------------------------------------------------------------------------------
----16. Return the first non-NULL value among four values
SELECT COALESCE(NULL,10,20,30,40) as first_value
---17. Return a default message when every value is NULL
SELECT COALESCE(NULL,NULL,NULL,'No Value') as new_default_message
---18. Display employee email, with a fallback to city. If the email is NULL, display the employee's city
SELECT email,city,COALESCE(email,NULL,city) as new_email_detail FROM Employees
---19. Display employee salary with two fallback values. Return salary when available; otherwise return 50000, and if that is also NULL, return 0
SELECT emp_name, salary,COALESCE(salary,NULL,50000,0) as new_salary_info FROM Employees order by salary
---20. Return a department label when the department ID is missing. Display the department ID as text, or Department Missing when NULL
SELECT dept_id,COALESCE(CONVERT(NVARCHAR(50),dept_id),NULL,'Department Missing') as new_departid_detail FROM Departments
