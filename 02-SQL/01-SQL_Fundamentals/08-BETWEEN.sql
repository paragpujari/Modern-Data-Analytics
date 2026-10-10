USE SQL_Basics
------------------------------------------------------------Basic Level Interview Questions-------------------------------------------------------------------
---1. Find employees earning between ₹50,000 and ₹75,000
SELECT * FROM Employees WHERE salary BETWEEN 50000 AND 75000 order by salary
---2. Find products priced between ₹1,000 and ₹10,000
SELECT * FROM products WHERE price BETWEEN 1000 AND 10000 order by price
---3. Find orders with amounts between ₹1,000 and ₹2,000
SELECT * FROM orders WHERE order_amount BETWEEN 1000 AND 2000 order by order_amount
---4. Find employees hired between January 1, 2023, and June 30, 2023
SELECT * FROM Employees WHERE Hire_Date BETWEEN '2023-01-01' AND '2023-06-30' order by Hire_Date
---5. Find orders placed between June 1 and June 10, 2026
SELECT * FROM orders WHERE order_date BETWEEN '2026-06-01' AND '2026-06-10' order by order_date

-------------------------------------------------------Intermediate Level Interview Questions-------------------------------------------------------------------
---6. Find employees earning between ₹60,000 and ₹1,30,000
SELECT * FROM Employees WHERE salary BETWEEN 60000 AND 130000 order by salary
---7. Find products priced between ₹10,000 and ₹80,000
SELECT * FROM products WHERE price BETWEEN 10000 AND 80000 order by price
---8. Find orders with amounts between ₹2,000 and ₹5,000
SELECT * FROM orders WHERE order_amount BETWEEN 2000 AND 5000 order by order_amount
---9. Find employees hired during 2023
SELECT * FROM Employees WHERE Hire_Date BETWEEN '2023-01-01' AND '2023-12-31' order by Hire_Date
---10. Find orders placed between July 1 and July 10, 2026
SELECT * FROM orders WHERE order_date BETWEEN '2026-07-01' AND '2026-07-10' order by order_date

------------------------------------------------Analytical Based Interview Questions-------------------------------------------------------------------
---11. Find employees whose salaries are between ₹1,00,000 and ₹1,40,000
SELECT * FROM Employees WHERE salary BETWEEN '100000' AND '140000' order by salary
---12. Find customers' orders between ₹500 and ₹1,500
SELECT * FROM orders WHERE order_amount BETWEEN 500 AND 1500 order by order_amount
---13. Find orders placed during the first seven days of June 2026
SELECT * FROM orders WHERE order_date BETWEEN '2026-06-01' AND '2026-06-07' order by order_date
---14. Find products in the price range of ₹2,000 to ₹15,000
SELECT * FROM products WHERE price BETWEEN 2000 AND 15000 order by price
---15. Find orders between June 20 and June 30, 2026, inclusive
SELECT * FROM orders WHERE order_date BETWEEN '2026-06-20' AND '2026-06-30' order by order_date

------------------------------------------------Coding Based Interview Questions-------------------------------------------------------------------
---16. Retrieve employees whose salaries fall between ₹70,000 and ₹1,20,000
SELECT * FROM Employees WHERE salary BETWEEN 70000 AND 120000 order by salary
---17. Retrieve products costing between ₹400 and ₹3,000
SELECT * FROM products WHERE price BETWEEN 400 AND 3000 order by price
---18. Retrieve orders placed between June 10 and June 20, 2026
SELECT * FROM orders WHERE order_date BETWEEN '2026-06-10' AND '2026-06-20' order by order_date
---19. Retrieve employees whose salaries are between ₹50,000 and ₹60,000
SELECT * FROM Employees WHERE salary BETWEEN 50000 AND 60000 order by salary
---20. Retrieve orders with amounts between ₹4,000 and ₹5,000
SELECT * FROM orders WHERE order_amount BETWEEN 4000 AND 5000 order by order_amount