SELECT 
  EXTRACT(YEAR FROM STR_TO_DATE(order_date, '%d-%m-%Y')) AS year,
  EXTRACT(MONTH FROM STR_TO_DATE(order_date, '%d-%m-%Y')) AS month,
  SUM(total_price) AS monthly_revenue,
  COUNT(DISTINCT order_id) AS order_volume
FROM orders
GROUP BY year, month
ORDER BY year, month;
