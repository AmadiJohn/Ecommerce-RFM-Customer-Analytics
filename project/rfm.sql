CREATE VIEW analytics.customer_rfm AS 
SELECT  
	f.customer_id,
	c.customer_name,
	MAX(f.purchase_date) AS last_purchase,
	MAX(MAX(f.purchase_date)) OVER () - MAX(f.purchase_date) AS recency,
	COUNT(DISTINCT f.purchase_date) AS frequency,
	SUM(f.total_purchase_amount) AS monetary
FROM warehouse.fact_sales f
JOIN warehouse.dim_customer c ON f.customer_id = c.customer_id 
GROUP BY 
	f.customer_id,
	c.customer_name 