SELECT customernumber, customername, country FROM customers
WHERE country = 'USA' AND creditlimit BETWEEN 50000 AND 100000
OR country <> 'USA' AND creditlimit BETWEEN 100000 AND 200000
ORDER BY creditlimit DESC;

#nomor 2

SELECT productcode, productname, quantityinstock, buyprice FROM products
WHERE quantityinstock BETWEEN 1000 AND 2000 and buyprice < 50 OR buyprice > 150 AND 
productline NOT LIKE  '%VINTAGE%';

-- NOMOR 3 --
SELECT productCode, productName, MSRP
FROM products
WHERE productline LIKE '%Classic%' AND buyprice > 50;

-- NOMOR 4 --
SELECT orderNumber, orderDate, status, customerNumber
FROM orders
WHERE ordernumber > 10250 AND STATUS <> 'shipped' AND STATUS <> 'cancelled' 
AND orderdate BETWEEN '2003-12-31' AND '2005-12-31';

-- NOMOR 5 --
SELECT orderNumber, orderLineNumber, productCode, quantityOrdered, priceeach,
priceEach * quantityOrdered * 0.95 AS discountedTotalPrice
FROM orderdetails
WHERE quantityOrdered > 50 AND priceeach > 100 AND 
productcode NOT LIKE '%S18%'
ORDER BY discountedTotalPrice DESC;
