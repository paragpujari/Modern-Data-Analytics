USE SQL_Basics;
--------------------------------------------------Basic Level Interview Questions------------------------------------------------------------------
---1. Find customers from Delhi
SELECT * FROM customers WHERE city IN ('Delhi')
---2. Find employees whose department is IT
SELECT * FROM Employees WHERE department = 'IT'
---3. Find products costing more than ₹10,000
SELECT * FROM products WHERE price > 10000
---4. Find orders greater than ₹2,000
SELECT * FROM orders WHERE order_amount > 2000
---5. Find active employees
SELECT * FROM Employees WHERE status IN ('Active')
--------------------------------------------Intermediate Level Interview Questions------------------------------------------------------------------
---6. Find IT employees earning more than ₹120,000
SELECT * FROM Employees WHERE department IN ('IT') AND salary > 120000
---7. Find customers from Delhi or Mumbai
SELECT * FROM customers WHERE city IN ('Delhi','Mumbai')
---8. Find products priced between ₹1,000 and ₹10,000
SELECT * FROM products WHERE price BETWEEN 1000 AND 10000
---9. Find orders between ₹500 and ₹2,000
SELECT * FROM orders WHERE order_amount BETWEEN 500 AND 2000
---10. Find employees who are NOT from Delhi
SELECT * FROM Employees WHERE city NOT IN ('Delhi')
---------------------------------------Analytical Level Interview Questions------------------------------------------------------------------
---11. Find active IT employees earning more than ₹120,000
SELECT * FROM Employees WHERE status = 'Active' AND department = 'IT' AND salary > 120000
---12. Find employees who are either from Mumbai or Bangalore AND have salary greater than ₹60,000
SELECT * FROM Employees WHERE city IN ('Mumbai','Bangalore') AND salary > 60000
---13. Find successful UPI payments
SELECT * FROM Payments1 WHERE payment_mode = 'UPI' AND payment_status = 'Success'
---14. Find employees whose department is either IT or Finance and whose status is Active
SELECT * FROM Employees WHERE department IN ('IT','Finance') AND status = 'Active'
---15. Find customers whose city starts with the letter B
SELECT * FROM customers WHERE city LIKE 'B%'
--------------------------------------Coding Based Interview Questions-----------------------------------------------------------------------
---16. Find all negative-value orders
SELECT * FROM orders WHERE order_amount < 0
---17. Find employees whose email is missing
SELECT * FROM Employees WHERE email IS NULL
---18. Find employees whose department is missing
SELECT * FROM Employees WHERE department IS NULL
---19. Find customers whose name starts with A or P
SELECT * FROM customers WHERE customer_name LIKE 'A%' OR customer_name LIKE 'P%'
---20. Find orders where the amount is greater than ₹4,000 OR less than ₹0
SELECT * FROM orders WHERE order_amount > 4000 or order_amount < 0