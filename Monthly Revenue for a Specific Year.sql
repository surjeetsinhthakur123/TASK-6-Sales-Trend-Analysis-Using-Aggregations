SELECT 
  EXTRACT(MONTH FROM STR_TO_DATE(order_date, '%d-%m-%Y')) AS month,
  SUM(total_price) AS monthly_revenue
FROM orders
WHERE EXTRACT(YEAR FROM STR_TO_DATE(order_date, '%d-%m-%Y')) = 2023
GROUP BY month
ORDER BY month;
