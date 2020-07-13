SELECT MONTH(payments.paymentDate) as "Month", 
    YEAR(payments.paymentDate) as "Year", 
    SUM(payments.amount) as "Total Sales"
    FROM payments
    GROUP BY DATE_FORMAT(payments.paymentDate, '%m-%Y')



-- SELECT MONTH(orders.orderDate) as "Month", 
--     YEAR(orders.orderDate) as "Year", 
--     orderdetails.quantityOrdered*orderdetails.priceEach as "Total Sales"
--     FROM orders
--     JOIN orderdetails ON orderdetails.orderNumber=orders.orderNumber
--     GROUP BY DATE_FORMAT(orders.orderDate, '%m-%Y')