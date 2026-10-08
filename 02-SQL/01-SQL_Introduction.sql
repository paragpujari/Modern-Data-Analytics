USE SQL_Basics
------------------------------------------SQL Introduction----------------------------------------------------------

------------------------------------------SQL Introduction - Theory Interview Questions----------------------------------------------

---1. What is SQL?
/*
Ans  SQL stands for Structured Query Language. 
It is the language with which the user can easily communicate with the relational database systems.
*/

---2. What is database?
/*
 It is a repository that contains huge number of tables which stores the data efficiently.
 It can be defined as the organized collection of data that allows the information to be accessed, stored, retrieved efficiently.

 Ex:--- Databases:-- Employees, Orders, Customers etc.
*/

---3. What is tables?
/*
 A table is the one that stores the data in form of rows and columns.

 For ex:-- Customers table

 | customer_id | customer_name | city        |
 |------------ |---------------|-------------|
 | 108         | Henry         | Ahmedabad   |
 | 103         | Charlie       | Bangalore   |
 | 113         | Mason         | Bhopal      |
 | 123         | William       | Bhubaneswar |

 Table = Customers
 Columns = customer_id, customer_name, city
*/

---4. What is a Row?
/*
  A Row can be defined as the complete information about an entity in the table.
*/

---5. What is a Column?
/*
  A Column is the attribute or the feature of information used	in the table.

  Ex:-- In the Customers table, columns used are customer_id, customer_name, city
*/

---6. What is a SQL Statement?
/*
  A SQL statement is the instruction given to the database.

  Ex:-- Fetch all the customer_name,city from the Customers table

  SELECT customer_name,city FROM Customers;  It is the instructions given to the Customer table and tells the table to get all the customer_names and city from the table
*/

---7. What is SELECT?
/*
SELECT  is used to fetch the data from the database table

Ex:--- Fetch all the records from the customer table

SELECT * FROM Customers;
*/

---8. What is FROM?
/*
FROM depicts the table from where the data can be retrieved.

Ex:--- SELECT * FROM customers
*/

---9. What does * mean?
/*
 * specifies all the columns to be fetched from the table

 Ex:-- SELECT * FROM Customers
*/

---10. Selecting Specific Columns
/*
	Instead of fetching all the columns, it fetches only the selected columns from the table.

	SELECT customer_name,city FROM Customers;
*/

---11. Difference Between SELECT * and Specific Columns
/*
   SELECT * ---------->  It fetches all the columns from the database table.

    Ex:-- SELECT * FROM Customers

   SELECT specific columns -------> It fetches only limited columns from the database table.

   Ex:-- SELECT customer_name,city FROM Customers;

*/

---12. What is a Record?

/*
	A record refers to the row in the database table. It gives the complete information about an entity in the table.
*/

---13. What is a Database Management System?
/*
  A database management system is a system that allows the data to be stored, managed, processed and retrieved  from the database.

  Ex:--- MySQL,
         PostgreSQL etc
*/

---14. What is a Relational Database?
/*
	A relational database is a database that allows the data to be stored in form of rows and columns in form of tables.

	Ex:--

		Customers
			↓
		customer_id
			↓
		 Orders
*/

---15. Basic SQL Statement Structure
/*
SELECT column_name
FROM table_name;

SELECT column_name1,column_name2,....,column_namen
FROM table_name;

SELECT *
FROM table_name;
*/


---------------------------------------------------------------Coding-------------------------------------------------------------------------

---------------------------------------------------Basic Level Interview Questions-----------------------------------------------------------
---1. Display all records from the Customers table
SELECT * FROM customers

---2. Display only the customer name and city from the Customers table
SELECT customer_name,city FROM customers

---3. Display the customer_id and customer_name from Customers
SELECT customer_id,customer_name FROM customers

---4. Display all columns from the Products table
SELECT * FROM products

---5. Display only product_name and price from Products
SELECT product_name,price FROM products

--------------------------------------------------Intermediate Level Interview Questions--------------------------------------------------------
---6. Display the employee name, department, and salary from Employees
SELECT emp_name,department,salary FROM Employees

---7. Display the order ID, customer ID, and order amount from Orders
SELECT order_id,customer_id,order_amount FROM Orders

---8. Display the payment ID, order ID, payment mode, and payment status
SELECT payment_id,order_id,payment_mode,payment_status FROM Payments1

---9. Display the employee ID, employee name, email, and city
SELECT emp_id,emp_name,email,city FROM Employees

---10. Display the product ID, product name, category, and price
SELECT product_id,product_name,category,price FROM products


-------------------------------------------------Analytical Based Interview Questions------------------------------------------------------------
---11. You are asked to prepare a customer master list. Which SQL statement would you write to retrieve the customer ID, customer name, and city?
SELECT customer_id,customer_name,city FROM customers

---12. A manager wants to see basic employee information consisting of employee name, department, salary, and city. Write the SQL statement
SELECT emp_name,department,salary,city FROM Employees

---13. A sales analyst needs the order ID, order date, and order amount for reporting. Write the SQL statement
SELECT order_id,order_date,order_amount FROM orders

---14. A business analyst wants to understand what products exist in the company's product catalog. They need product name, category, and price. Write the SQL statement
SELECT product_name,category,price FROM products

---15. An interviewer gives you the Employees table and asks: "Show me all the information available for every employee." What SQL statement would you use?
SELECT * FROM Employees


-------------------------------------------------Coding Based Interview Questions------------------------------------------------------------
---16. Write a SQL query to display every column and every row from Orders
SELECT * FROM Orders

---17. Write a SQL query to display only order_id and order_date from Orders
SELECT order_id,order_date FROM Orders

---18. Write a SQL query to display emp_name, email, and status from Employees
SELECT emp_name,email,status FROM Employees

---19. Write a SQL query to display payment_id, payment_mode, and payment_status from Payments1
SELECT payment_id,payment_mode,payment_status FROM Payments1

---20. Write a SQL query to display product_id, product_name, and category from Products
SELECT product_id, product_name,category FROM products