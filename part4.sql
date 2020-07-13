SELECT DISTINCT products.productLine as "Product Line", 
    SUM(orderdetails.quantityOrdered) as "# Sold"
    FROM products
    JOIN orderdetails ON orderdetails.productCode=products.productCode
    GROUP BY products.productLine