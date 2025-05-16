SELECT * FROM customers;

SELECT * FROM employees;

SELECT * FROM offices;

SELECT * FROM orderdetails;

SELECT * FROM orders;

SELECT * FROM payments;

SELECT * FROM productlines;

SELECT * FROM products;

-- Joins Necesarios
SELECT * 
FROM customers
JOIN orders 
ON customers.customerNumber = orders.customerNumber
JOIN orderdetails
ON orders.orderNumber = orderdetails.orderNumber
JOIN products 
ON products.productCode = orderdetails.productCode
JOIN payments 
ON payments.customerNumber = customers.customerNumber;
