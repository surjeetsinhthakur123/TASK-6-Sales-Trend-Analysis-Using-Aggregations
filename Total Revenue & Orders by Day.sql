SELECT 
  STR_TO_DATE(order_date, '%d-%m-%Y') AS order_day,
  SUM(total_price) AS total_revenue,
  COUNT(DISTINCT order_id) AS order_volume
FROM orders
GROUP BY order_day
ORDER BY order_day;
