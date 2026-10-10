USE SQL_Basics;
-----------------------------------------------------Basic Level Interview Questions-----------------------------------------------------------------------
---1. Find customers who live in Mumbai, Delhi, or Pune
SELECT * FROM customers WHERE city IN ('Mumbai','Delhi','Pune')
---2. Find customers who do not live in Mumbai, Delhi, or Pune
SELECT * FROM customers WHERE city NOT IN ('Mumbai','Delhi','Pune')
---3. Find employees working in the IT or HR department
SELECT * FROM Employees WHERE department IN ('IT','HR')
---4. Find employees whose status is not Active or Inactive
SELECT * FROM Employees WHERE status NOT IN ('Active','Inactive')
---5. Find products belonging to Electronics or Furniture
SELECT * FROM products WHERE category IN ('Electronics','Furniture') order by category,price desc

------------------------------------------------Intermediate Level Interview Questions-----------------------------------------------------------------------
---6. Find customers whose cities are Bangalore, Chennai, Kolkata, or Hyderabad
SELECT * FROM customers WHERE city IN ('Bangalore','Chennai','Kolkata','Hyderabad')
---7. Find employees whose department is neither IT nor Finance
SELECT * FROM Employees WHERE department NOT IN ('IT','Finance')
---8. Find products that are not in the Electronics or Appliances categories
SELECT * FROM products WHERE category NOT IN ('Electronics','Appliances') order by category,price desc
---9. Find orders belonging to customers 101, 102, or 105
SELECT * FROM orders WHERE customer_id IN ('101','102','105') ORDER BY customer_id,order_amount desc
---10. Find payments that are not made through UPI or Cash
SELECT * FROM Payments1 WHERE payment_mode NOT IN ('UPI','Cash')

--------------------------------------------Analytical Based Interview Questions-----------------------------------------------------------------------
---11. The HR team wants employees from only IT, HR, and Marketing. Write the query
SELECT * FROM Employees WHERE department IN ('IT','HR','Marketing') order by department,salary desc
---12. The company wants to exclude products in Stationery and Accessories from a product listing
SELECT * FROM products  WHERE category NOT IN ('Stationery','Accessories') order by category, price desc
---13. Find orders belonging to customers who are not customer 101, 102, or 103
SELECT * FROM orders WHERE customer_id NOT IN ('101','102','103') order by customer_id, order_amount desc
---14. Find employees who belong to department IDs 101, 103, or 104
SELECT * FROM Employees WHERE dept_id IN ('101','103','104') order by dept_id,salary desc
---15. Find payments whose payment status is neither Success nor Pending
SELECT * FROM Payments1 WHERE payment_status NOT IN ('Success','Pending')

-------------------------------------------Coding Based Interview Questions----------------------------------------------------------------------------
---16. Display customers from Noida, Jaipur, or Surat
SELECT * FROM customers WHERE city IN ('Noida','Jaipur','Surat')
---17. Display employees who are not from Delhi, Mumbai, or Pune
SELECT * FROM Employees WHERE city NOT IN ('Delhi','Mumbai','Pune')
---18. Display products whose product IDs are 1, 4, 6, or 10
SELECT * FROM products WHERE product_id IN ('1','4','6','10')
---19. Display orders that do not belong to customers 104, 106, 108, or 110
SELECT * FROM orders WHERE customer_id NOT IN ('104','106','108','110')
---20. Display payments whose status is Success or Failed
SELECT * FROM Payments1 WHERE payment_status IN ('Success','Failed')