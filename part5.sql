SELECT CONCAT(employees.lastName, ", ", employees.firstName),
    COUNT(orders.customerNumber) as "# Orders", 
    orderdetails.quantityOrdered*orderdetails.priceEach as "Total Sale"-- TOTAL SALE AMOUNT
    FROM employees
    JOIN customers ON employees.employeeNumber=customers.salesRepEmployeeNumber
    JOIN orders ON orders.customerNumber=customers.customerNumber
    JOIN orderdetails ON orderdetails.orderNumber=orders.orderNumber
    GROUP BY employees.employeeNumber