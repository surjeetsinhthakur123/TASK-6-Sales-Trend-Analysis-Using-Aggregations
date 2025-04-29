SELECT 
  p.product_name,
  COUNT(*) AS times_ordered
FROM products p
GROUP BY p.product_name
ORDER BY times_ordered DESC
LIMIT 5;
