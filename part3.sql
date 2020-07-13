SELECT DISTINCT orders.status as "Order Status", COUNT(orders.status) as "# Orders"
    FROM orders
    GROUP BY orders.status
    ORDER BY orders.status ASC