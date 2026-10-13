USE SQL_Basics;
--------------------------------------------------------Basic Level Interview Questions---------------------------------------------------------------------
---1. Display Working for active employees and Not Working for inactive employees
SELECT *,CASE WHEN status = 'Active'	THEN	'Working'
                                        ELSE    'Not Working'
                                        END AS Employee_status
                                        FROM Employees
                                        order by status

---2. Classify product prices. Products priced at ₹1,000 or less are Budget; all others are Premium
SELECT *,CASE WHEN price <= 1000  THEN 'Budget'
                                  ELSE 'Premium'
                                  END AS price_category
                                  FROM products 
                                  order by price

---3. 
/*
Classify order amounts
Business requirement: Identify orders as Low, Medium, or High.
- Below ₹1,000 → Low
- ₹1,000 to ₹3,000 inclusive → Medium
- Above ₹3,000 → High
*/

SELECT *,CASE WHEN order_amount < 1000  THEN    'Low'
              WHEN order_amount >= 1000 AND order_amount <= 3000   THEN 'Medium'
                                                                   ELSE 'High'
                                                                   END AS order_category
                                                                   FROM orders order by order_amount

---4. 
/*
Classify employee departments.  Display the full department description based on the department name
*/

SELECT *,CASE WHEN department = 'IT'        THEN    'Technology'
              WHEN department = 'HR'        THEN    'Human Resources'
              WHEN department = 'Finance'   THEN  'Finance Operations'
              WHEN department = 'Marketing' THEN 'Marketing Operations'
                                            ELSE 'Department Not Assigned'
                                              END AS department_category
                                              FROM Employees 

---5. Classify products by category. Display a suitable label for each product category
SELECT *,CASE WHEN category = 'Accessories' THEN    'Accessories Product'
              WHEN category = 'Electronics' THEN    'Electronics Product'
              WHEN category = 'Furniture'   THEN    'Furniture   Product'
              WHEN category = 'Stationery'  THEN    'Stationery  Product'
              WHEN category = 'Appliances'  THEN    'Home Appliances'
                                            ELSE    'Other category'
                                            END AS Product_category
              FROM products

----------------------------------------------Intermediate Level Interview Questions---------------------------------------------------------------------
---6. 
/*
Classify employee salaries into three levels
Business requirement:
- Salary below ₹60,000 → Junior
- Salary from ₹60,000 to ₹100,000 inclusive → Mid-Level
- Salary above ₹100,000 → Senior
*/
SELECT *,CASE WHEN salary < 60000                        THEN 'Junior'
              WHEN salary >= 60000 AND salary <= 100000  THEN 'Mid-Level'
                                                         ELSE 'Senior'
                                                         END AS salary_level
                                                         FROM Employees 
                                                         WHERE salary IS NOT NULL
                                                         order by salary

---7. Convert payment status into a business-friendly label
SELECT *,CASE WHEN payment_status = 'Success'   THEN    'Payment Completed'
              WHEN payment_status = 'Pending'   THEN    'Payment Awaiting'
                                                ELSE    'Payment Unsuccessful'
                                                END AS payment_status_category
              FROM Payments1

---8. Label customers from Mumbai, Hyderabad, and Bangalore as Major City Customers. Label all other customers as Other City Customers
SELECT *,CASE WHEN city IN ('Mumbai','Hyderabad','Bangalore')   THEN 'Major City Customers'
                                                                ELSE 'Other City Customers'
                                                                END AS Customer_city_label
                                                                FROM customers

---9. Identify valid positive amounts, negative adjustments, and zero-value orders
SELECT *,CASE WHEN order_amount > 0 THEN 'Positive Amount'
              WHEN order_amount < 0 THEN 'Negative Amount'
                                    ELSE 'Zero-value orders'
                                    END AS order_amount_category
                                    FROM orders 
                                    order by order_amount

---10. 
/*
Classify products into price bands
Business requirement:
- Up to ₹500 → Very Low
- Above ₹500 and up to ₹5,000 → Low
- Above ₹5,000 and up to ₹20,000 → Medium
- Above ₹20,000 → High
*/

SELECT *,CASE WHEN price <= 500 THEN    'Very Low'
              WHEN price > 500  AND price <= 5000   THEN 'Low'
              WHEN price > 5000 AND price <= 20000  THEN 'Medium'
                                                    ELSE 'High'
                                                    END AS price_category
              FROM products order by price

--------------------------------Analytical Problem Solving Based Interview Questions------------------------------------------------------------
---11. 
/*
An employee should be Active High Earner only when the employee is active and earns at least ₹100,000.
Other active employees should be Active Employee. Inactive employees should be Inactive Employee
*/

SELECT *,CASE WHEN (status = 'Active' AND salary >= 100000) THEN    'Active High Earner'
              WHEN (status = 'Active')                      THEN    'Active Employee'
              WHEN (status = 'Inactive')                    THEN    'Inactive Employee'
              END AS Employee_category
              FROM Employees

---12. 
/*
Products priced at ₹30,000 or more are Premium. 
Electronics priced below ₹30,000 are Standard Electronics. 
All remaining products are Other Products
*/
SELECT *,CASE WHEN price >= 30000   THEN  'Premium'
              WHEN (category = 'Electronics' AND price < 30000) THEN    'Standard Electronics'
              ELSE 'Other Products'
              END AS Product_category
              FROM products

---13. 
/*
Successful UPI payments are Successful UPI; 
successful cash payments are Successful Cash; 
pending payments are Pending; 
failed payments are Failed; 
remaining cases are Other Successful Payments
*/
SELECT *,CASE WHEN payment_status = 'Success' AND payment_mode = 'UPI'  THEN    'Successful UPI'
              WHEN payment_status = 'Success' AND payment_mode = 'Cash' THEN    'Successful Cash'
              WHEN payment_status = 'Pending'                           THEN    'Pending'
              WHEN payment_status = 'Failed'                            THEN    'Failed'
                                                                        ELSE    'Other Successful Payments' END AS Payment_category
              FROM Payments1

---14. Classify orders from June, July, and September 2026. Label all other dates as Other Month
SELECT *,CASE WHEN order_date >= '2026-06-01' AND order_date <= '2026-06-30'  THEN 'June'
              WHEN order_date >= '2026-07-01' AND order_date <= '2026-07-31'  THEN 'July'
              WHEN order_date >= '2026-09-01' AND order_date <= '2026-09-30'  THEN 'September'
                                                                              ELSE 'Other Month' END AS order_category
              FROM orders order by order_date

---15. Cities beginning with the letters A–M should be labelled A-M City; the remaining cities should be labelled N-Z City. Classify customers based on their city name
SELECT *,CASE WHEN LEFT(UPPER(city),1) BETWEEN 'A' AND 'M'  THEN    'A-M'
                                                            ELSE    'N-Z'
                                                            END AS customer_city_category
                                                            FROM customers

---------------------------------------------------------Coding Based Interview Questions-----------------------------------------------------------------------------------
---16. Convert employee status into numeric flags. Return 1 for active employees and 0 for inactive employees
SELECT *,CASE WHEN status = 'Active' THEN 1
                                     ELSE 0
                                     END AS Employee_flag_status
                                     FROM Employees order by status

---17. 
/*
Assign a discount percentage to products
Business requirement:
- Price of ₹30,000 or more → 20% discount
- Price of ₹10,000 or more → 10% discount
- Price of ₹1,000 or more → 5% discount
- Otherwise → no discount
*/

SELECT *,CASE WHEN (price >= 30000)                     THEN '20'
              WHEN (price >= 10000 AND price < 30000)   THEN '10'
              WHEN (price >= 1000  AND price < 10000)   THEN '5'
                                                        ELSE 'No discount'
                                                        END  AS discount_percentage
              FROM products order by price

---18. calculate the price after discount

SELECT *,CASE WHEN (price >= 30000)                     THEN price*0.80
              WHEN (price >= 10000 AND price < 30000)   THEN price*0.90
              WHEN (price >= 1000  AND price < 10000)   THEN price*0.95
                                                        ELSE price
                                                        END  AS price_after_discount
              FROM products order by price

---19. Return High Value when an order is at least ₹5,000 and Regular Value otherwise. Flag high-value orders
SELECT *,CASE WHEN order_amount >= 5000 THEN    'High Value'
                                        ELSE    'Regular Value'
                                        END AS order_value_flag
                                        FROM orders order by order_amount

---20. 
/*
Create employee bonus eligibility labels
Business requirement:
- Active employee with salary of at least ₹100,000 → Eligible
- Active employee with salary below ₹100,000 → Not Eligible
- Inactive employee → Not Eligible
- Missing salary for an active employee → Salary Review
*/

SELECT *,CASE WHEN (status = 'Active' AND salary >= 100000) THEN    'Eligible'
              WHEN (status = 'Active' AND salary <  100000) THEN    'Not Eligible'
              WHEN (status = 'Inactive')                    THEN    'Not Eligible'
              WHEN (status = 'Active' AND salary IS NULL)   THEN    'Salary Review'
              END AS Employee_bonus_category
              FROM Employees

---21.
/*
Build a complete employee performance category
Business requirement: Classify employees using both employment status and salary.
- Inactive → Not Evaluated
- Active with missing salary → Needs Review
- Active with salary of ₹120,000 or more → Top Tier
- Active with salary of ₹80,000 or more but below ₹120,000 → Strong
- Other active employees → Developing
- Any other status → Unknown
*/

SELECT
    emp_name,
    department,
    salary,
    status,
    CASE
        WHEN status = 'Inactive'
            THEN 'Not Evaluated'
        WHEN status = 'Active' AND salary IS NULL
            THEN 'Needs Review'
        WHEN status = 'Active' AND salary >= 120000
            THEN 'Top Tier'
        WHEN status = 'Active' AND salary >= 80000
            THEN 'Strong'
        WHEN status = 'Active'
            THEN 'Developing'
        ELSE 'Unknown'
    END AS performance_category
FROM Employees