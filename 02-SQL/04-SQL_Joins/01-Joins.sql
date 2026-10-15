USE SQL_Basics;
-------------------------------------------------Accenture Interview Questions--------------------------------------------------------------------------------------
---1. Display the customer ID, customer name, order ID, order date, and order amount for customers who have matching orders
SELECT c.customer_id, c.customer_name, o.order_id, o.order_date, o.order_amount
FROM customers c
JOIN orders    o
ON   c.customer_id = o.customer_id
ORDER BY 1
---2. Display every customer, including customers who have no matching order
SELECT     c.customer_id, c.customer_name, o.order_id, o.order_date, o.order_amount
FROM       customers c
LEFT JOIN  orders o
ON         c.customer_id = o.customer_id
order by 1
---3. Display every order, along with the matching customer name and city wherever a match exists
SELECT c.customer_name, c.city,o.order_id, o.order_date, o.order_amount,c.customer_id,o.customer_id
FROM  customers c
RIGHT JOIN orders o
ON    c.customer_id = o.customer_id
---4. Display all customers and all orders, including unmatched records from either table
SELECT c.customer_id, c.customer_name, c.city, o.order_id, o.order_date, o.order_amount
FROM customers c
FULL OUTER JOIN orders o
ON   c.customer_id = o.customer_id
order by 1
---5. Display the names of employees alongside their department names both matching
SELECT e.emp_name, d.dept_name
FROM Employees e
JOIN Departments d
ON   e.dept_id = d.dept_id
---6. Display all employees, even when their department ID is missing or unmatched
SELECT e.emp_name, d.dept_name
FROM Employees e
LEFT JOIN Departments d
ON   e.dept_id = d.dept_id
---7. Display the customer name, order ID, order amount, payment mode, and payment status
SELECT 
c.customer_name                       ,
o.order_id                            ,
p.payment_mode                        ,
p.payment_status
FROM   customers c INNER JOIN orders o ON c.customer_id = o.customer_id
                   INNER JOIN Payments1 p ON p.order_id = o.order_id
---8. Display every customer, their orders if available, and payment details if available
SELECT 
c.customer_id                         ,
c.customer_name                       ,
c.city                                ,
o.order_id                            ,
o.order_date                          ,
o.order_amount                        ,
p.payment_id                          ,
p.payment_mode                        ,
p.payment_status
FROM customers c
LEFT JOIN  orders o ON c.customer_id = o.customer_id
LEFT JOIN  Payments1 p ON p.order_id = o.order_id
order by 1
---9. Display pairs of different employees who share the same department ID
SELECT 
e1.emp_name     AS  Employee1               ,
e1.dept_id                                  ,
e2.emp_name     AS  Employee2 
FROM Employees e1
JOIN Employees e2
ON   e1.dept_id = e2.dept_id
AND  e1.emp_id  < e2.emp_id
ORDER BY 1
---10. Display every possible employee and department combination
SELECT 
e.emp_name                                  ,
d.dept_name
FROM Employees e
CROSS JOIN Departments d

----------------------------------------------------Pwc Interview Questions------------------------------------------------------------------------------------
---11. Display order IDs, customer IDs, order amounts, payment modes, and payment statuses for orders with matching payment records
SELECT 
o.order_id                                 ,
o.customer_id                              ,
o.order_amount                             ,
p.payment_mode                             ,
p.payment_status
FROM orders o
JOIN Payments1 p
ON   o.order_id = p.order_id
ORDER BY 1
---12. Display all orders, including those without a matching payment record
SELECT 
o.order_id                                 ,
o.order_date                               ,
o.order_amount                             ,
p.payment_id                               ,
p.payment_mode                             ,
p.payment_status
FROM orders o
LEFT JOIN Payments1 p
ON   o.order_id = p.order_id
ORDER BY 1
---13. Display every payment record and its matching order information
SELECT 
o.order_id                                 ,
o.order_date                               ,
o.customer_id                              ,
o.order_amount                             ,
p.payment_id                               ,
p.payment_mode                             ,
p.payment_status
FROM orders o
RIGHT JOIN Payments1 p
ON o.order_id = p.order_id
ORDER BY o.order_date
---14. Display matched and unmatched records from Orders and Payments1
SELECT 
o.order_id                                 ,
o.customer_id                              ,
o.order_date                               ,
o.order_amount                             ,
p.payment_id                               ,
p.payment_mode                             ,
p.payment_status
FROM orders o
FULL OUTER JOIN Payments1 p
ON   o.order_id = p.order_id
order by o.order_date
---15. Display employee ID, name, department name, and city for employees whose department matches a department record
SELECT 
e.emp_id             AS     Employee_ID    ,
e.emp_name           AS     Employee_name  ,
d.dept_name          AS     Department_name,
e.city               AS     Employee_city
FROM Employees e
JOIN Departments d ON e.dept_id = d.dept_id
---16. Display each matching customer's name, order date, and payment method
SELECT 
c.customer_name         AS   customername,
o.order_date            AS   orderdate   ,
p.payment_mode          AS   paymentmode ,
p.payment_status        AS   paymentstatus
FROM  customers c JOIN Orders o ON  c.customer_id = o.customer_id
                  JOIN Payments1 p ON o.order_id  = p.order_id
---17. Display all departments and matching employee names, including departments with no employees
SELECT
d.dept_id                                ,
d.dept_name                              ,
e.emp_id                                 ,
e.emp_name
FROM Departments d
LEFT JOIN Employees e
ON   d.dept_id = e.dept_id
---18. Display pairs of employees who work in the same city, without matching an employee to themselves
SELECT 
e1.emp_name           as      Employee1   ,
e1.city               as      City        ,
e2.emp_name           as      Employee2
FROM Employees e1
JOIN Employees e2
ON   e1.city = e2.city 
AND  e1.emp_id < e2.emp_id
ORDER BY 1
---19. Display every product with every department
SELECT 
p.product_name                            ,
p.category                                ,
d.dept_name
FROM products p
CROSS JOIN    Departments d
---20. Display customers, orders, and payments with unmatched payment details retained. Display every order and any matching customer and payment details
SELECT 
o.order_id                                ,
c.customer_name                           ,
o.order_amount                            ,
p.payment_mode                            ,
p.payment_status
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
LEFT JOIN Payments1 p ON o.order_id = p.order_id

--------------------------------------------Delloite Analytical Problem Solving Interview Questions---------------------------------------------------------------
---21. Display customers with their orders, including customers without orders
SELECT 
c.customer_id                              ,
c.customer_name                            ,
c.city                                     ,
o.order_id                                 ,
o.order_date                               ,
o.order_amount
FROM customers c
LEFT JOIN orders o
ON   c.customer_id = o.customer_id
ORDER BY 1
---22. Display all orders, but attach payment details only when the payment status is Success
SELECT 
o.order_id                                 ,
o.order_date                               ,
o.order_amount                             ,
p.payment_id                               ,
p.payment_mode                             ,
p.payment_status
FROM orders o
LEFT JOIN Payments1 p
ON        o.order_id = p.order_id
WHERE     p.payment_status = 'Success'
ORDER BY 2
---23. Preserve all departments and show matching employees
SELECT     
d.dept_id,
d.dept_name,
e.emp_id,
e.emp_name
FROM       Employees e
RIGHT JOIN Departments d
ON         e.dept_id = d.dept_id
---24. Display all customer records and all order-side customer IDs, matching them wherever possible
SELECT 
c.customer_id                                 ,
c.customer_name                               ,
c.city                                        ,
o.customer_id                                 ,
o.order_date                                  ,
o.order_amount
FROM customers c
FULL OUTER JOIN Orders o
ON c.customer_id = o.customer_id
order by 1
---25. Display employee pairs who share a department and have different employee IDs
SELECT 
e1.emp_name           AS     Employee1        ,
e1.department         AS     Department       ,
e2.emp_name           AS     Employee2        
FROM Employees e1
JOIN          Employees e2
ON            e1.dept_id = e2.dept_id
AND           e1.emp_id  < e2.emp_id
ORDER BY 1

-----------------------------------------------E&Y Interview Questions-------------------------------------------------------------------------------
---26. Display product IDs, product names, prices, and categories using the products table
SELECT 
p1.product_id              as     product_id                  ,
p1.product_name            as     product_name                ,
p1.category                as     product_category            ,
p1.price                   as     product_price
FROM products p1
JOIN          products p2
ON            p1.product_id = p2.product_id
ORDER BY 1           
---27. Display pairs of different products belonging to the same category
SELECT 
p1.product_name            as    product1                     ,
p1.category                as    productcategory              ,
p2.product_name            as    product2
FROM products p1
JOIN products p2
ON   p1.category = p2.category
AND  p1.product_id < p2.product_id
ORDER BY 1
---28. Show all departments and any employees assigned to them
SELECT 
d.dept_id   ,
d.dept_name ,
e.emp_id    ,
e.emp_name
FROM Departments d
LEFT JOIN Employees e
ON    d.dept_id = e.dept_id
order by 1
---29. Retain all employee records and all department records, whether or not they match
SELECT 
e.emp_id,
e.emp_name,
d.dept_id,
d.dept_name
FROM Employees e
FULL OUTER JOIN Departments d
ON   e.dept_id = d.dept_id
order by 1
---30. Display every payment, its associated order, and the customer name where a matching relationship exists
SELECT 
p.payment_id,
p.payment_mode,
p.payment_status,
o.order_id,
c.customer_name
FROM       customers c 
RIGHT JOIN orders    o ON c.customer_id = o.customer_id
RIGHT JOIN Payments1 p ON o.order_id    = p.order_id
order by 1