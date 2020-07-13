SELECT customerName as "Customer Name", CONCAT(employees.lastName, ", ", employees.firstName) as "Sales Rep Name"
    FROM customers
    INNER JOIN employees
    ON customers.salesRepEmployeeNumber=employees.employeeNumber
    ORDER BY customerName ASC
