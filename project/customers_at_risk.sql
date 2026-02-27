-- Which customers are at risk of churning
CREATE VIEW analytics.at_risk_customers AS 
SELECT 
	customer_id,
	customer_name,
	recency,
	frequency,
	monetary
FROM analytics.customer_segments
WHERE 
	segment = 'At Risk'
ORDER BY 
	recency DESC;