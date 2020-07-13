SELECT customerName as "Customer Name", CONCAT(employees.firstName, ' ', employees.lastName) as "Sales Rep Name"
    FROM customers
    INNER JOIN employees
    ON customers.salesRepEmployeeNumber=employees.employeeNumber
