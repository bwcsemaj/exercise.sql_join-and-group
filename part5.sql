SELECT CONCAT(employees.lastName, ", ", employees.firstName),
    COUNT(orders.customerNumber) as "# Orders", 
    COALESCE(orderdetails.quantityOrdered*orderdetails.priceEach, 0) as "Total Sale"-- TOTAL SALE AMOUNT
    FROM employees
    LEFT JOIN customers ON employees.employeeNumber=customers.salesRepEmployeeNumber
    LEFT JOIN orders ON orders.customerNumber=customers.customerNumber
    LEFT JOIN orderdetails ON orderdetails.orderNumber=orders.orderNumber
    WHERE employees.jobTitle="Sales Rep"
    GROUP BY employees.employeeNumber
    ORDER BY orderdetails.quantityOrdered*orderdetails.priceEach DESC