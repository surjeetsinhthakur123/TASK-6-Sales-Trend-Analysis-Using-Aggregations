SELECT 
  DATE_FORMAT(STR_TO_DATE(order_date, '%d-%m-%Y'), '%Y-%m') AS month_label,
  SUM(total_price) AS total_revenue,
  COUNT(DISTINCT order_id) AS order_volume
FROM orders
GROUP BY month_label
ORDER BY month_label;
