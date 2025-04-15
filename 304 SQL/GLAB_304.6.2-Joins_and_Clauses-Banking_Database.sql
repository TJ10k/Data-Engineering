# 1
SELECT p. `NAME` AS "Product", pt. `NAME` AS "Type" # ALias the product as product and the product type by Type
FROM product p INNER JOIN product_type pt # from the product table aliased as p and join with product_type aliased as p
ON p.product_type_cd = pt.product_type_cd; 

# 2
SELECT b.`name`, b.city, e.LAST_NAME, e.TITLE
FROM employee e INNER JOIN branch b # join employee with branch
ON b.BRANCH_ID = e.ASSIGNED_BRANCH_ID; # match my branch id

# 3 
SELECT distinct TITLE FROM employee;

# 4
SELECT e.LAST_NAME AS "Name", e.TITLE AS "Title", m.LAST_NAME AS "Boss Name", m.TITLE AS "Boss Title" 
FROM employee e LEFT JOIN employee m # Join the employee table to itself to find the manager
ON e.SUPERIOR_EMP_ID = m.EMP_ID; # Connect employees to their manager using manager’s ID

# 5
SELECT p.NAME, a.AVAIL_BALANCE, i.LAST_NAME FROM account a
INNER JOIN product p ON a.PRODUCT_CD = p.PRODUCT_CD # Match account to the product it uses
LEFT JOIN customer c ON a.CUST_ID = c.CUST_ID # Get the customer linked to the account
LEFT JOIN individual i ON c.CUST_ID = i.CUST_ID; # # Get info if the customer is an individual (not a company)

# 6
SELECT ac.*, i.LAST_NAME FROM acc_transaction ac # Show all details from the transaction
INNER JOIN account a ON ac.ACCOUNT_ID = a.ACCOUNT_ID # Match transaction to the account
INNER JOIN customer c ON a.CUST_ID = c.CUST_ID  # Get the customer linked to the account
INNER JOIN individual i ON c.CUST_ID = i.CUST_ID # Get the person's last name
WHERE i.LAST_NAME RLIKE "T.*"; -- same as LIKE "T%" # Only show people whose last name starts with "T"


