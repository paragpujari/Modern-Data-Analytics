USE SQL_Basics;
-----------------------------------------------------Basic Level Interview Questions---------------------------------------------------------------
---1. Display all customer names with the heading Customer Name
SELECT customer_name as [Customer Name] FROM customers
---2. Display employee names with the heading Employee
SELECT emp_name as [Employee] FROM Employees
---3. Display product names with the heading Item
SELECT product_name as [Item] FROM products
---4. Display customer IDs with the heading ID
SELECT customer_id as [ID] FROM customers
---5. Display employee salaries with the heading Monthly Salary
SELECT salary as [Monthly Salary] FROM Employees

-----------------------------------------------Intermediate Level Interview Questions---------------------------------------------------------------
---6. Display employee names and salaries with the headings Name and Pay
SELECT emp_name as Name, salary as Pay FROM Employees
---7. Display product names, categories, and prices using the headings Product, Type, and Cost
SELECT product_name as Product, category as Type, price as Cost FROM products
---8. Use C as the table alias for Customers and display customer names
SELECT c.customer_name FROM customers c
---9. Use E as the table alias for Employees and display employee names and departments
SELECT E.emp_name, E.department FROM Employees E
---10. Use P as the table alias for Products. Display product IDs and names with the headings ID and Product Name
SELECT P.product_id AS [ID], P.product_name AS [Product_name] FROM Products P

------------------------------------------Analytical Based Interview Questions---------------------------------------------------------------
---11. A business report requires employee name, department, and salary under the headings Staff Name, Team, and Annual Pay
SELECT emp_name as [Staff Name], department as [Team], salary as [Annual Pay] FROM Employees
---12. A customer report requires customer ID, customer name, and city under Customer ID, Full Name, and Location
SELECT c.customer_id AS [Customer ID], c.customer_name AS [Full Name], c.city AS [Location] FROM customers c
---13. A sales report requires order ID, customer ID, order date, and order amount under readable headings
SELECT o.order_id as [orderid], o.order_date as [orderdate], o.order_amount as [orderamount] FROM orders o
---14. An employee directory requires employee name, email address, and employment status under Name, Email Address, and Employment Status
SELECT E.emp_name as [Name], E.email as [Email Address], E.status as [Employment Status] FROM Employees E
---15. A payment report requires payment ID, order ID, payment mode, and payment status under business-friendly headings
SELECT p.payment_id as [ID], p.order_id as [OrderID], p.payment_mode as [paymentmode], p.payment_status as [paymentstatus] FROM Payments1 p

------------------------------------------Coding Based Interview Questions---------------------------------------------------------------
---16. Write a query to display every employee's ID, name, and city using the aliases ID, Employee Name, and Work City. Use Emp as the table alias
SELECT Emp.emp_id as [ID],Emp.emp_name as [Employee Name], Emp.city AS [Work City] FROM Employees Emp
---17. Write a query to display every product's ID, name, category, and price using Product ID, Product Name, Product Category, and Product Price. Use Pr as the table alias
SELECT Pr.product_id as [ProductID], Pr.product_name as [name], Pr.category as [Product Category] , Pr.price AS [Product Price] FROM products Pr
---18. Write a query to display all orders using the aliases Transaction ID, Customer ID, Transaction Date, and Transaction Amount. Use Ord as the table alias
SELECT Ord.order_id as [Transaction ID], Ord.customer_id as [Customer ID], Ord.order_date as [Transaction Date], Ord.order_amount as [Transaction Amount] FROM orders Ord
---19. Write a query to display all department IDs and department names using the aliases Department Code and Department Name. Use D as the table alias
SELECT D.dept_id as [Department Code], D.dept_name as [Department Name] FROM Departments D
---20. Write a query to display all payment details using the aliases Payment Reference, Order Reference, Payment Method, and Payment Result. Use Pay as the table alias
SELECT Pay.payment_id as [Payment Reference], Pay.order_id as [Order Reference], Pay.payment_mode as [Payment Method], Pay.payment_status as [Payment Result] FROM Payments1 Pay