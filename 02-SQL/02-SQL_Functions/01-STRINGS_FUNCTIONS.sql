USE SQL_Basics;
------------------------------------------------------------Basic Level Interview Questions--------------------------------------------------------------------
---1. Convert customer names to uppercase
SELECT UPPER(customer_name) AS Capital_customers_names FROM customers
---2. Convert employee names to lowercase
SELECT LOWER(emp_name) AS Lower_employee_names FROM Employees
---3. Find the length of product names
SELECT product_name, LEN(product_name) as product_length FROM products
---4. Extract the first three characters of customer names
SELECT customer_name,LEFT(customer_name,3) as substring_characters FROM customers
---5. Extract the last three characters of product names
SELECT product_name,RIGHT(product_name,3) as substring_products FROM products

----------------------------------------------------------Intermediate Level Interview Questions--------------------------------------------------------------
---6. Display employee names and departments in this format: Amit works in IT
SELECT CONCAT(emp_name ,'  works in  ', department) as concatenated_string FROM Employees
---7. Display each customer city and its first five characters
SELECT city,LEFT(city,5) as substring_city_data FROM customers
---8. Convert product names such as Water Bottle into Water_Bottle
SELECT product_name,REPLACE(product_name,' ','_') as new_product_name FROM products
---9. Remove leading and trailing spaces from the text '  Data Analyst  '
SELECT TRIM('  Data Analyst  ') as text
---10. Extract the part before @ from the email address of employees
SELECT email,LEFT(email,CHARINDEX('@',email)-1) as extracted_email FROM Employees

---------------------------------------------------------Analytical Based Interview Questions----------------------------------------------------------------
---11. Convert customer names into uppercase and display the result
SELECT customer_name,UPPER(customer_name) AS Upper_customer_names FROM customers
---12. Display the first four characters of each employee name in uppercase
SELECT emp_name,UPPER(LEFT(emp_name,4)) AS extracted_text FROM Employees
---13. Extract the username from each employee email address
SELECT email,LEFT(email,CHARINDEX('@',email)-1) as username FROM Employees
SELECT email,SUBSTRING(email,1,CHARINDEX('@',email)-1) as username FROM Employees
---14. Replace example.com with company.com in employee email addresses
SELECT email,REPLACE(email,'example','company') as new_email FROM Employees
---15. Create a product code by combining the first three uppercase characters of the product name with the last two characters of its name
SELECT product_name,CONCAT(LEFT(UPPER(product_name),3),'',RIGHT(UPPER(product_name),2)) as product_code FROM products
---16. Display each customer name in reverse order
SELECT customer_name,REVERSE(customer_name) as reversed_customer_name FROM customers
---17. Display each customer city and the position of the letter a in it
SELECT city,CHARINDEX('a',city) as position FROM customers
---18. Display the first and last character of each employee name
SELECT emp_name, LEFT(emp_name,1) as first_character, RIGHT(emp_name,1) as last_character FROM Employees
---19. Remove all spaces from product names, not just spaces at the beginning or end
SELECT product_name, REPLACE(TRIM(product_name),' ','') as new_products FROM products
---20. Generate an employee label in the format EMP-Amit-IT, using the employee name and department
SELECT emp_name,department, CONCAT('EMP','-',emp_name,'-',department) as employee_label FROM Employees

---------------------------------------------------------Coding Based Interview Questions--------------------------------------------------------------------
---21. Display each product name in uppercase
SELECT UPPER(product_name) AS upper_product_names FROM products
---22. Extract the first three characters of every city and convert them to uppercase
SELECT city , UPPER(LEFT(city,3)) AS city_abbreviation FROM Employees
---23. Display only the first two characters of the email username, followed by ***, and preserve the domain
SELECT email,REPLACE(email,SUBSTRING(email,CHARINDEX(RIGHT(LEFT(email,3),1),email), CHARINDEX('@',email)-3),'*****') FROM Employees
---24. Extract the domain from an email address
SELECT email, SUBSTRING(email,CHARINDEX('@',email)+1) as domain FROM Employees
---25. Generate a code using the first two characters of the employee name and the last two characters of the department, all uppercase
SELECT emp_name, CONCAT(UPPER(LEFT(emp_name,2)),'',UPPER(RIGHT(emp_name,2))) FROM Employees
---26. Replace lowercase vowels and uppercase vowels of 'a' with * in a city name
SELECT REPLACE(REPLACE(city,SUBSTRING(city,CHARINDEX('a',LOWER(city)),1),'*'),SUBSTRING(REPLACE(city,SUBSTRING(city,CHARINDEX('a',LOWER(city)),1),'*'),CHARINDEX('e',LOWER(REPLACE(city,SUBSTRING(city,CHARINDEX('a',LOWER(city)),1),'*'))),1),'*') FROM Employees
---27. Convert EMP-2026-001 into EMP2026001
SELECT REPLACE(('EMP-2026-001'),'-','') as text
---28. Extract four characters starting at position 2 from each product name
SELECT product_name,SUBSTRING(product_name,2,4) as extracted_product FROM products
---29. Create a reference such as ORDER-1, ORDER-301, or ORDER-420 using the order ID
SELECT order_id,CONCAT('ORDER','-',order_id) as reference FROM orders
---30. Convert each customer name to uppercase and remove all spaces from the result
SELECT customer_name,REPLACE(TRIM(UPPER(customer_name)),' ','') as formatted_text FROM customers