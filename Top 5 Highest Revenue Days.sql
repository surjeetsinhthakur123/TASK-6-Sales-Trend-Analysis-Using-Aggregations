SELECT 
  STR_TO_DATE(order_date, '%d-%m-%Y') AS order_day,
  SUM(total_price) AS revenue
FROM orders
GROUP BY order_day
ORDER BY revenue DESC
LIMIT 5;
