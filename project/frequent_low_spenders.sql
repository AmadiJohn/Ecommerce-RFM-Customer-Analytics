-- Which customers purchase frequently but spent less?
CREATE VIEW analytics.frequent_low_spenders AS 
SELECT 
	customer_id,
	customer_name,
	frequency,
	monetary
FROM 
	analytics.customer_segments
WHERE 
	frequency > (SELECT AVG(frequency)
	FROM analytics.customer_segments) AND 
	monetary < (SELECT AVG(monetary)
	FROM analytics.customer_segments);