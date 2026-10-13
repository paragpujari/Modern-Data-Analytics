USE SQL_Basics;
-----------------------------------------------------------------Basic Level Interview Questions----------------------------------------------------------------------
---1. Extract the year from each order date
SELECT *,YEAR(order_date) as order_year FROM orders
---2. Extract the month number from each order date
SELECT *,MONTH(order_date) as order_month FROM orders
SELECT *,DATEPART(MONTH, order_date) as order_months FROM orders
---3. Extract the day of the month from each order date
SELECT *,DAY(order_date) as order_day FROM orders
SELECT *,DATEPART(DAY,order_date) as order_day FROM orders
---4. Display the current date and time
SELECT GETDATE() as currenttimestamp
/*----------Get only date-----------------*/
SELECT CAST(GETDATE() AS DATE) AS currenttimestamp
/*----------Get only time-----------------*/
SELECT CAST(GETDATE() AS TIME) AS currenttimestamp
---5. Display the month name for each order date
SELECT *,DATENAME(MONTH,order_date) as month_name FROM orders

------------------------------------------------------Intermediate Level Interview Questions----------------------------------------------------------------------
---6. Find the date 7 days after every order date
SELECT *,DATEADD(DAY,7,order_date) as new_order_date FROM orders
---7. Find the date 10 days before every order date
SELECT *,DATEADD(DAY,-10,order_date) AS previous_order_date FROM orders
---8. Calculate the number of days between each order date and June 1, 2026
SELECT *,DATEDIFF(DAY,'2026-06-01',order_date) as total_days FROM orders
---9. Find the last day of the month for every order date
SELECT *,EOMONTH(order_date) as last_day FROM orders
---10. Display the year, quarter, month number, and weekday name for each order
SELECT *,
DATEPART(YEAR,order_date) as years        ,
DATEPART(quarter,order_date) as quarters  ,
DATEPART(MONTH,order_date) as month_number,
DATEPART(WEEKDAY,order_date) as weekday
FROM orders

----------------------------------------------Analytical Problem Solving Based Interview Questions----------------------------------------------------------------------
---11. Display only orders placed in June 2026
SELECT * FROM orders WHERE YEAR(order_date) = '2026' AND MONTH(order_date) = '06'
---12. Find orders placed during the last 7 days of June 2026
SELECT * FROM orders WHERE YEAR(order_date) = '2026' AND MONTH(order_date) = '06'  
AND order_date >= DATEADD(DAY,-6,EOMONTH(order_date))
AND order_date <= EOMONTH(order_date)
order by order_date
---13.  Find orders placed on weekends
SELECT * FROM orders WHERE DATENAME(WEEKDAY,order_date) IN ('Saturday','Sunday') order by order_date
---14. Find orders placed in the first 10 days of each month
SELECT * FROM orders  WHERE DATEPART(DAY,order_date) BETWEEN 1 AND 10 order by order_date
---15. Calculate the expected delivery date 5 days after every order
SELECT *,DATEADD(DAY,5,order_date) as expected_delivery_date FROM orders
---16. Find orders placed more than 30 days before the current date
SELECT * FROM orders WHERE order_date < DATEADD(DAY,-30,CAST(GETDATE() AS DATE)) order by order_date
---17. Find employees who joined during 2023
SELECT * FROM Employees WHERE YEAR(Hire_date) = '2023' order by Hire_Date
---18. Calculate each employee's age in years as of today
;with cte as(
SELECT *,CAST(GETDATE() AS DATE) as today_date FROM Employees
)
SELECT *,DATEDIFF(YEAR,birth_date,today_date) as age FROM cte
---19. Find the number of days each employee has worked since joining
;with cte as(
SELECT *,CAST(GETDATE() AS DATE) as today_date FROM Employees
)
SELECT *,DATEDIFF(DAY,Hire_Date,today_date) as total_days FROM cte
---20. Find orders placed on the last day of their respective months
SELECT * FROM orders WHERE order_date = EOMONTH(order_date) ORDER BY order_date

-------------------------------------------------Coding Based Interview Questions-------------------------------------------------------------------------
---21. Find orders placed in the current year
;with cte as(
SELECT *,YEAR(order_date) as order_date_year,YEAR(CAST(GETDATE() AS DATE)) as current_year FROM orders 
)
SELECT * FROM cte WHERE YEAR(order_date) = YEAR(CAST(GETDATE() AS DATE))
---22. Find orders placed in the previous calendar month
SELECT *,DATEADD(DAY,-30,CAST(GETDATE() AS DATE)) FROM orders WHERE MONTH(order_date) = MONTH(DATEADD(DAY,-30,CAST(GETDATE() AS DATE)))
---23. Find orders placed during the first and last days of any month
SELECT * FROM orders WHERE DATEPART(DAY,order_date)='01'OR order_date = EOMONTH(order_date) order by order_date
---24. Find employees whose birthdays fall in the current month
SELECT * FROM Employees WHERE MONTH(birth_date) = MONTH(CAST(GETDATE() AS DATE)) order by birth_date
---25. Calculate the next birthday date for each employee
SELECT *,DATEFROMPARTS(YEAR(CAST(GETDATE() AS DATE))+1,MONTH(birth_date),DAY(birth_date)) as new_date FROM Employees
---26. Find orders placed exactly 30 days after June 1, 2026
SELECT * FROM orders WHERE order_date > DATEADD(DAY,30,'2026-06-01') order by order_date
---27. Find orders placed in the current quarter
SELECT *,DATEPART(quarter,CAST(GETDATE() AS DATE)) as quarters FROM orders WHERE DATEPART(quarter,order_date) = DATEPART(quarter,CAST(GETDATE() AS DATE))
---28. Find employees hired within the last 90 days
SELECT * FROM Employees WHERE Hire_Date >= DATEADD(DAY,-90,CAST(GETDATE() AS DATE)) AND Hire_Date <= CAST(GETDATE() AS DATE) ORDER BY Hire_Date
---29. Find the first day of the month for each order date
SELECT *,DATEFROMPARTS(YEAR(order_date),MONTH(order_date),'01') as first_day_month FROM orders order by order_date
---30. Find the number of complete months between each employee's hire date and today
;with cte as(
SELECT *,CAST(GETDATE() AS DATE) AS today_date FROM Employees
)
SELECT *,DATEDIFF(MONTH,Hire_Date,today_date) as total_months FROM cte
order by Hire_Date