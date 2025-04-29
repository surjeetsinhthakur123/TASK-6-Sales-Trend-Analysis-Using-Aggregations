SELECT 
  YEAR(STR_TO_DATE(order_date, '%d-%m-%Y')) AS year,
  MONTH(STR_TO_DATE(order_date, '%d-%m-%Y')) AS month,
  SUM(total_price) AS monthly_revenue
FROM orders
GROUP BY year, month
ORDER BY monthly_revenue DESC
LIMIT 3;
