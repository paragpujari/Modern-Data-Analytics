USE SQL_Basics;
------------------------------------------------------------Basic Level Interview Questions-----------------------------------------------------------------------
---1. Find customers whose names start with 'A'
SELECT * FROM customers WHERE customer_name LIKE 'A%'
---2. Find employees whose names start with 'R'
SELECT * FROM Employees WHERE emp_name LIKE 'R%'
---3. Find products whose names end with 'e'
SELECT * FROM products WHERE product_name LIKE '%e'
---4. Find customers whose names contain 'an'
SELECT * FROM customers WHERE customer_name LIKE '%an%'
---5. Find products whose names start with 'S'
SELECT * FROM products WHERE product_name LIKE 'S%'

------------------------------------------------------Intermediate Level Interview Questions-----------------------------------------------------------------------
---6. Find customers whose names have 'a' as the second character
SELECT * FROM customers WHERE customer_name LIKE '_a%'
---7. Find employees whose names end with 'a'
SELECT * FROM Employees WHERE emp_name LIKE '%a'
---8. Find products containing the word 'Book'
SELECT * FROM products WHERE product_name LIKE '%Book%'
---9. Find employees whose names begin with 'A' and end with 't'
SELECT * FROM Employees WHERE emp_name LIKE 'A%t'
---10. Find customers whose names contain exactly the pattern 'li' consecutively
SELECT * FROM customers WHERE customer_name LIKE '%li%'

------------------------------------------------Analytical Based Interview Questions-----------------------------------------------------------------------
---11. Find employees whose names have exactly four characters
SELECT * FROM Employees WHERE emp_name like '____'
---12. Find customers whose names start with 'A' and have 'i' as the third character
SELECT * FROM customers WHERE customer_name LIKE 'A_i%'
---13. Find employees whose names contain 'an' but do not start with 'A'
SELECT * FROM Employees WHERE emp_name like '%an%' AND emp_name not like 'A%'
---14. Find products whose names contain a space
SELECT * FROM products WHERE product_name LIKE '% %'
---15. Find employees whose names start with 'S' or 'P'
SELECT * FROM Employees WHERE emp_name LIKE 'S%' OR emp_name LIKE 'P%'

------------------------------------------------Coding Based Interview Questions-----------------------------------------------------------------------
---16. Find customers whose names start with 'K' and end with 'n'
SELECT * FROM customers WHERE customer_name LIKE 'K%n'
---17. Find products whose names have 'a' as the second character and end with 'e'
SELECT * FROM products WHERE product_name LIKE '_a%e'
---18. Find employees whose names contain 'ee'
SELECT * FROM Employees WHERE emp_name LIKE '%ee%'
---19. Find customers whose names start with 'V' and contain 'c'
SELECT * FROM customers WHERE customer_name LIKE 'V%c%'
---20. Find products whose names start with 'P' and contain 'r'
SELECT * FROM products WHERE product_name LIKE 'P%r%'