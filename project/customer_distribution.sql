-- What is the customer distibution across segments?
CREATE VIEW analytics.customer_distibution AS
SELECT 
	segment,
	COUNT(customer_id) AS total_customers
FROM 
	analytics.customer_segments
GROUP BY 
	segment 
ORDER BY 
	total_customers DESC;