USE SQL_Basics;
---------------------------------------------------Basic Level Interview Questions-----------------------------------------------------------
---1. Find the customer who lives in Delhi and has customer ID 102
SELECT * FROM customers WHERE city = 'Delhi' AND customer_id = '102'
---2. Find customers who live in Delhi or Mumbai
SELECT * FROM customers WHERE city = 'Delhi' or city = 'Mumbai'
---3. Find employees who work in the IT department and are Active
SELECT * FROM Employees WHERE department = 'IT' AND status = 'Active' order by salary desc
---4. Find employees who work in HR or Finance
SELECT * FROM Employees WHERE department = 'HR' or department = 'Finance'
---5. Find customers who do not live in Delhi
SELECT * FROM customers WHERE city NOT IN ('Delhi') order by city
---6. Find products that belong to Electronics and cost more than 10,000
SELECT * FROM products WHERE category IN ('Electronics') AND price > 10000 order by price desc
---7. Find orders with an amount greater than 2,000 or less than 1,000
SELECT * FROM orders WHERE order_amount > 2000 or order_amount < 1000 order by order_amount
---8. Find employees who are not Inactive
SELECT * FROM Employees WHERE status NOT IN ('Inactive')
---9. Find customers who live in Pune and have customer ID 105
SELECT * FROM customers WHERE city = 'Pune' AND customer_id = '105'
---10. Find employees who live in Delhi or Bangalore and are Active
SELECT * FROM Employees WHERE (city = 'Delhi' or city = 'Bangalore') AND status = 'Active'

--------------------------------------------Intermediate Level Interview Questions--------------------------------------------------------------
---11. Find IT employees who live in Delhi or Bangalore
SELECT * FROM Employees WHERE department = 'IT' AND (city = 'Delhi' OR city = 'Bangalore')
---12. Find customers who live in either Pune or Chennai, but not Chennai
SELECT * FROM customers WHERE (city = 'Pune' OR city = 'Chennai') AND city NOT IN ('Chennai')
---13. Find products that are not in Electronics and cost more than 1,000
SELECT * FROM products WHERE category NOT IN ('Electronics') AND price > 1000
---14. Find orders placed in June 2026 with an amount greater than 2,000
SELECT * FROM orders WHERE MONTH(order_date) = '06' AND YEAR(order_date) = '2026' AND order_amount > 2000
---15. Find orders belonging to customer 101 or customer 102 with amounts greater than 2,000
SELECT * FROM orders WHERE (customer_id = '101' or customer_id = '102') AND order_amount > 2000
---16. Find employees who are Active and do not work in HR
SELECT * FROM Employees WHERE status = 'Active' AND department NOT IN ('HR')
---17. Find successful UPI payments
SELECT * FROM Payments1 WHERE payment_mode = 'UPI' AND payment_status = 'Success'
---18. Find payments that are either Pending or Failed
SELECT * FROM Payments1 WHERE payment_status = 'Pending' OR payment_status = 'Failed'
---19. Find employees who earn more than 100,000 and are either in IT or Finance
SELECT * FROM Employees WHERE salary > 100000 AND (department = 'IT' OR department = 'Finance')
---20. Find customers who are not from Mumbai or Delhi
SELECT * FROM customers WHERE city NOT IN ('Mumbai') OR city NOT IN ('Delhi')

----------------------------------------------Analytical Level Interview Questions--------------------------------------------------------------
---21. Find IT employees who are Active and earn more than 110,000
SELECT * FROM Employees WHERE department ='IT' AND status = 'Active' AND salary > 110000
---22. Find employees who work in HR or Marketing but are not Active
SELECT * FROM Employees WHERE (department = 'HR' OR department = 'Marketing') AND status NOT IN ('Active')
---23. Find customers whose ID is 101 or 102, but exclude orders below 2,000
SELECT * FROM orders WHERE (customer_id = '101' OR customer_id = '102') AND NOT order_amount < 2000
---24. Find products that are Electronics or Appliances and cost more than 10,000
SELECT * FROM products WHERE (category = 'Electronics' OR category = 'Appliances') AND price > 10000 order by price desc
---25. Find all orders from July 2026 except orders with an amount of 500 or less
SELECT * FROM orders WHERE (MONTH(order_date)='07' AND YEAR(order_date)='2026')  AND NOT order_amount <= 500 ORDER BY order_amount desc
---26. Find employees who live in Mumbai or Delhi, but exclude employees in HR
SELECT * FROM Employees WHERE (city = 'Mumbai' OR city = 'Delhi') AND NOT department = 'HR'
---27. Find payments that are successful and are not made using Cash
SELECT * FROM Payments1 WHERE payment_status = 'Success' AND NOT payment_mode = 'Cash'
---28. Find employees who are Active and work in either IT or Finance, but exclude employees earning 120,000 or less
SELECT * FROM Employees WHERE status = 'Active' AND (department = 'IT' OR department = 'Finance') AND NOT salary <= 120000
---29. Find orders from customers 101, 102, or 103, excluding orders below 1,000
SELECT * FROM orders WHERE (customer_id = '101' OR customer_id = '102' OR customer_id = '103') AND NOT order_amount < 1000
---30. Find employees who are Active or earn more than 130,000, but exclude HR employees
SELECT * FROM Employees WHERE (status = 'Active' OR salary > 130000) AND NOT department = 'HR'

--------------------------------------------------Coding Based Interview Questions--------------------------------------------------------------
---31. Retrieve customers who live in Hyderabad and have customer ID 104
SELECT * FROM customers WHERE city IN ('Hyderabad') AND customer_id = '104'
---32. Retrieve employees who are either in IT or earn more than 130,000
SELECT * FROM Employees WHERE department = 'IT' OR salary > 130000
---33. Retrieve products that are not in Furniture and cost less than 5,000
SELECT * FROM products WHERE category NOT IN ('Furniture') AND price < 5000
---34. Retrieve orders from customer 101 that are not negative in amount
SELECT * FROM orders WHERE customer_id IN ('101') AND NOT order_amount < 0
---35. Retrieve employees who live in Pune or Mumbai and are Inactive
SELECT * FROM Employees WHERE (city = 'Pune' OR city = 'Mumbai') AND status = 'Inactive'
---36. Retrieve orders with amounts between 1,000 and 3,000, inclusive
SELECT * FROM orders WHERE order_amount BETWEEN 1000 AND 3000 order by order_amount
---37. Retrieve payments that are not Pending and not Failed
SELECT * FROM Payments1 WHERE payment_status NOT IN ('Pending') AND payment_status NOT IN ('Failed')
---38. Retrieve employees who are not in IT and are not in Finance
SELECT * FROM Employees WHERE department NOT IN ('IT') AND department NOT IN ('Finance')
---39. Retrieve orders from customer 101 or 102 placed in June 2026
SELECT * FROM orders WHERE (customer_id = '101' OR customer_id = '102') AND MONTH(order_date) = '06' AND YEAR(order_date) = '2026'
---40. Retrieve employees who are Active, are not in HR, and live in Delhi or Bangalore
SELECT * FROM Employees WHERE (status = 'Active' AND NOT department = 'HR')AND (city  = 'Delhi' OR city = 'Bangalore')