SELECT 
	c.customerName,
	CONCAT(e.firstName,' ',e.lastName) 'salesRep',
	(c.creditLimit - SUM(p.amount)) 'remainingCredit'
FROM customers AS c
JOIN employees AS e ON c.salesRepEmployeeNumber = e.employeeNumber
JOIN payments AS p USING(customernumber)
GROUP BY c.customerName
HAVING remainingCredit > 0;

#nomor 2
SELECT
	p.productName 'Nama Produk',
	c.customerName 'Nama Customer',
	COUNT(DISTINCT o.customerNumber) 'Jumlah Customer',
	SUM(od.quantityOrdered) 'Total Quantitas'
FROM products AS p
JOIN orderdetails AS od USING(productcode)
JOIN orders AS o USING(ordernumber)
JOIN customers AS c USING(customerNumber)
GROUP BY p.productCode
ORDER BY p.productName;

#nomor 3
SELECT 
	CONCAT(e.firstName,' ',e.lastName)  'employeeName',
	COUNT(DISTINCT c.customerNumber) 'totalcustomers'
FROM employees AS e
JOIN customers AS c ON e.employeeNumber = c.salesRepEmployeeNumber
GROUP BY e.employeeNumber
ORDER BY totalCustomers DESC;

#nomor 4
SELECT 
	CONCAT(e.firstName,' ',e.lastName) 'Nama Karyawan',
	p.productName 'Nama Produk',
	SUM(od.quantityOrdered) 'Jumlah Pesanan'
FROM products AS p
JOIN orderdetails AS od USING(productcode)
JOIN orders AS  o USING(orderNumber)
JOIN customers AS c USING(customerNumber)
RIGHT JOIN employees AS e ON c.salesRepEmployeeNumber = e.employeeNumber
JOIN offices AS OF USING(officecode)
WHERE OF.country = 'australia'
GROUP BY e.employeeNumber, p.productName
ORDER BY SUM(od.quantityOrdered) DESC;

#nomor 5
SELECT
	c.customerName'Nama Karyawan',
	GROUP_CONCAT(DISTINCT p.productName ORDER BY p.productName)' Nama Produk',
	COUNT(DISTINCT p.productName) 'Banyak Jenis Produk'
FROM customers AS c
JOIN orders AS o USING(customernumber)
JOIN orderdetails AS od USING(ordernumber)
JOIN products AS p USING(productcode)
WHERE o.shippedDate IS NULL 
GROUP BY c.customerName;