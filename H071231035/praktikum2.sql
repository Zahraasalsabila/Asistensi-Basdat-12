SELECT productcode 'kode produk', productname ' Nama produk', quantityinstock ' jumlah stok'
from products 
WHERE quantityinstock BETWEEN 5000 AND 6000
ORDER BY quantityinstock ASC;

SELECT ordernumber 'Nomor pesanan', orderdate 'Tanggal Pesanan', STATUS, customernumber 'Nomor Pelanggan'
FROM orders
WHERE STATUS !='shipped'
ORDER BY customernumber ASC;

SELECT employeenumber 'Nomor Karyawan', firstname, lastname, email, jobtitle 'jabatan'
FROM employees
WHERE jobtitle = 'sales rep'
ORDER BY firstname ASC 
LIMIT 10;

SELECT productcode 'Kode Produk', productname 'Nama Produk', productline 'Lini Produk', buyprice 'Harga Beli'
FROM products
ORDER BY buyprice DESC 
LIMIT 10 OFFSET 5;

SELECT DISTINCT country, city 
FROM customers 
ORDER BY country, city ASC;