/* The following query selects the order line from the 'orderdetails' table. It calculates the subtotal for each line item,
and sorts the result based on the subtotal */

SELECT orderNumber, orderlinenumber, quantityOrdered * priceEach
FROM orderdetails
ORDER BY quantityOrdered * priceEach DESC;

/* To make the query more readable, 
you can assign an alias to a column in the SELECT statement and use that column alias in the ORDER BY clause */

SELECT orderNumber, orderlinenumber, quantityOrdered * priceEach AS subtotal
FROM orderdetails
ORDER BY subtotal DESC;

/* In this example, 
we use subtotal as the column alias for the expression quantityOrdered * priceEach, and sort the result set by the subtotal alias */

/* In SQL, NULL comes before non-NULL values. Therefore, when you use the ORDER BY clause with the ASC option, 
NULLs appear first in the result set.


For example, the following query uses the ORDER BY clause to sort employees by values in the reportsTo column
*/


SELECT firstName, lastName, reportsTo
FROM employees
ORDER BY reportsTo;

/* However, if you use the ORDER BY clause with the DESC option, NULLs will appear last in the result set. For example */

SELECT firstName, lastName, reportsTo
FROM employees
ORDER BY reportsTO DESC;

/* Summary
Use the ORDER BY clause to sort the result set by one or more columns.
Use the ASC option to sort the result set in ascending order, and the DESC option to sort the result set in descending order.
The ORDER BY clause is evaluated after the FROM and SELECT clauses.
In MySQL, NULL is lower than non-NULL values. */