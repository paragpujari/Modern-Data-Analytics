USE SQL_Basics;
----------------------------------------------Basic Level Interview Questions-------------------------------------------------------------------------
---1. Display the absolute value of each order amount
SELECT order_amount, ABS(order_amount) AS Absolute_order_amount FROM orders
---2. Round product prices to two decimal places
SELECT price, ROUND(price,2) as round_price_values FROM products
---3. Round employee salaries upward to the next integer
SELECT salary as employee_salary, salary/100000.0 as salary_decimals, CEILING(salary/100000.0) as next_salary_decimals FROM Employees
---4. Convert product prices into whole-number amounts by rounding downward
SELECT price, price/1000.0 as decimal_value, FLOOR(price/1000.0) as product_price_floor FROM products
---5. Identify whether each order amount is positive, negative, or zero
SELECT order_amount, SIGN(order_amount) as signed_order_amount FROM orders

------------------------------------------Intermediate Level Interview Questions-------------------------------------------------------------------------
---6. Calculate a 10% increase in product prices and round the result to two decimal places
SELECT price, ROUND((price*1.10),2) as new_price FROM products
---7. Calculate the absolute difference between each employee's salary and ₹75,000
SELECT *,(salary-75000) as diff, ABS((salary-75000)) AS Absolute_difference FROM Employees
---8. Calculate the square of each product price
SELECT price, SQUARE(price) as product_price_square FROM products order by price
---9. Calculate the square root of each employee's salary
SELECT salary, SQRT(salary) as salary_sqrt FROM Employees
---10. Calculate a 5% discount on every product and display the discounted price rounded upward to a whole number
SELECT price,(0.95*price) as discounted_price, CEILING((0.95*price)) as rounded_price FROM products

--------------------------------------Analytical Problem Solving Based Interview Questions------------------------------------------------------------
---11. Calculate the absolute difference between the highest and lowest product prices
SELECT MAX(price), MIN(price), MAX(price)-MIN(price) as difference, ABS(MAX(price)-MIN(price)) as absolute_difference FROM products
---12. Round employee salaries to the nearest ₹1,000
SELECT salary,ROUND(salary/1000.0,0)*1000.0 FROM Employees order by salary
---13. Calculate the total amount of an order after adding 18% tax, rounded to two decimal places
SELECT order_amount, ROUND((order_amount*1.18),2) as total_order_amount FROM orders order by order_amount
---14. Calculate the absolute value of an order amount after a 12.5% adjustment
SELECT order_amount,ABS((12.5/100.0)*order_amount), ABS((order_amount + (12.5/100.0)*order_amount)) as order_after_adjustment FROM orders order by order_amount
---15. Round each product's price to the nearest ₹500
SELECT price, ROUND(price/500.0,0)*500.0 FROM products
---16. Calculate the percentage increase when a product price increases from ₹1,000 to its current price
SELECT *,1000 as original_price,(price-1000) as price_increase,ROUND(((price-1000)/price)*100.0,2) as percentage_increase FROM products order by price
---17. Calculate the square of the difference between an employee's salary and ₹75,000
SELECT *,SQUARE((salary-75000)) as squaredifference FROM Employees
---18. Calculate the geometric distance from the origin for two numeric coordinates(x=3,y=4)
SELECT(SQRT(SQUARE(3-0) + SQUARE(4-0))) as distance_from_origin
---19. Calculate compound growth on a product price after three years at 8% annual growth
SELECT price,ROUND(price * POWER(1.08,3),2) as compound_price FROM products
---20. Calculate the circular area for a radius of 7 units
SELECT ROUND((3.142*SQUARE(7)),2) as area

-------------------------------------------------Coding Based Interview Questions-------------------------------------------------------------------------
---21. Round every order amount to the nearest ten
SELECT order_amount, ROUND(order_amount/10.0,0)*10.0 as rounded_order_amount FROM orders order by order_amount
---22. Round each product price upward to the next multiple of 100
SELECT price, CEILING(price/100.0)*100.0 as rounded_product_price FROM products order by price
---23. Calculate the absolute difference between each product price and ₹10,000
SELECT price, 10000, ABS(price-10000) as absolute_product_price_difference FROM products order by price
---24. Calculate the cube of every product price
SELECT price, POWER(price,3) as cube_product_price FROM products order by price
---25. Calculate the cube root of a nonnegative number using POWER()
SELECT order_amount, POWER(order_amount,1.0/3.0) as cube_root_order FROM orders WHERE order_amount > 0 order by order_amount
---26. Calculate the base-10 logarithm of every positive product price
SELECT price,LOG10(price) as logarithmic_price FROM products WHERE price > 0 order by price
---27. Calculate the natural logarithm of every positive product price
SELECT price, LOG(price) as logarithmic_price FROM products WHERE price > 0 order by price
---28. Calculate e raised to the power of each product price divided by 10,000
SELECT price,EXP(price/10000.0) as exp_prices FROM products WHERE price > 0 order by price
---29. Calculate the distance between two points (x1, y1) = (2, 3) and (x2, y2) = (5, 7)
SELECT SQRT(POWER((5-2),2) + POWER((7-3),2)) AS distance
---30. Calculate a 15% increase on every product price and round upward to the nearest whole unit
SELECT price,CEILING(price*1.15) as increased_product_price FROM products order by price