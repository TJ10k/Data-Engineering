# 1
SELECT c.customerName as 'Customer Name', CONCAT(e.lastName, ', ', e.firstName) as 'Sales Rep' # selecting the customer name and the sales rep
FROM customers c JOIN employees e on c.salesRepEmployeeNumber = e.employeeNumber # from customers join the employees table as e and 
# customers table as c then we specify which columns we want
order by c.customerName ASC; # order by alphabetic order

# 2
SELECT p.productName as 'Product Name', sum(od.quantityOrdered) as 'Total # Ordered', sum(od.quantityOrdered * od.priceEach) as 'Total Sale'
# get the total numbers ordered and the sum of 'od.quantityOrdered' and 'od.priceEach to get the Total Sale
FROM products p LEFT JOIN orderdetails od  # defining products as p and orderdetails as od
on p.productCode=od.productCode # the 2 alike keys to join the tables
group by p.productName, p.buyPrice 
order by 3 desc

# 3

SELECT status as 'Order Status', count(status) as 'Total Orders' # aquiring the order status and the number of orders for each status
FROM orders
group by status
order by status;

# 4
SELECT pl.productLine as 'Product Line', count(od.ProductCode) as 'total Sold'
FROM productlines pl JOIN products p
on pl.productLine = p.productLine
JOIN orderdetails od on p.productCode = od.productCode
group by pl.productLine
order by 2 desc;

# 5
SELECT 
	monthname(paymentDate) AS Month,
	year(paymentDate) AS Year,
	FORMAT(sum(amount), 2) as 'Payments Received'
FROM payments 
group by year(paymentDate), monthname(paymentDate)
order by paymentDate;


# 6
SELECT p.productName Name, p.productLine AS `Product Line`, p.productScale AS `Scale`, p.productVendor AS `Vendor` 
FROM productlines l NATURAL JOIN products p # naturally joins productlines 1 with products p
WHERE l.productLine = "Classic Cars" OR l.productLine = "Vintage Cars"
ORDER BY p.productLine DESC, p.productName ASC;


