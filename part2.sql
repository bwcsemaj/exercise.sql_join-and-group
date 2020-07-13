SELECT productName as "Product Name", SUM(orderdetails.quantityOrdered) as "Total # Ordered", 
    SUM(orderdetails.quantityOrdered)*orderdetails.priceEach as "Total Sale"
    FROM products
    INNER JOIN orderdetails ON products.productCode=orderdetails.productCode
    GROUP BY orderdetails.productCode
    ORDER BY SUM(orderdetails.quantityOrdered)*orderdetails.priceEach DESC