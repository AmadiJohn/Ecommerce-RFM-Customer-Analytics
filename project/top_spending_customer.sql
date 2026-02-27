-- Who are the top spending customers
CREATE VIEW analytics.top_spending_customers AS 
SELECT 
	customer_id,
	customer_name,
	segment,
	monetary AS total_money_spent
FROM analytics.customer_segments
ORDER BY 
	total_money_spent DESC;