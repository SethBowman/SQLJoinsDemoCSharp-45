-- INNER JOIN, products the left table and sales is the right table
-- We will only see products that were sold

SELECT * FROM products
INNER JOIN sales
ON products.ProductID = sales.ProductID;

-- LEFT JOIN, since products is the left table we will see all the products, but we will see null values if the product was not sold

SELECT * FROM products
LEFT JOIN sales
ON products.ProductID = sales.ProductID;

-- INNER JOIN, employees the left table and sales is the right table
-- Since we are using INNER JOIN we will only see employees who made a sale

SELECT * FROM employees AS e
INNER JOIN sales AS s
ON e.EmployeeID = s.EmployeeID;

-- LEFT JOIN, since employees is the left table we will see all the employees even if they didn't make a sale
-- null values will appear on the right table if that employee has no sales data (didn't make a sale)

SELECT * FROM employees AS e
LEFT JOIN sales AS s
ON e.EmployeeID = s.EmployeeID;

-- using multiple joins

SELECT p.Name, p.Price, s.Quantity, e.FirstName, e.LastName FROM products AS p
INNER JOIN sales AS s
ON p.ProductID = s.ProductID
INNER JOIN employees AS e
ON s.EmployeeID = e.EmployeeID;

