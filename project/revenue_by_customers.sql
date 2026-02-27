-- Which customer segment generates the most revenue
CREATE VIEW analytics.revenue_by_segment AS 
SELECT 
	segment,
	COUNT(customer_id) AS total_customers,
	SUM(monetary) AS total_revenue
FROM 
	analytics.customer_segments
GROUP BY 
	segment
ORDER BY 
	total_revenue DESC;