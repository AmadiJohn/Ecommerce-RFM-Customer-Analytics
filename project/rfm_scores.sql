CREATE VIEW analytics.rfm_scores AS 
SELECT *,
	NTILE(5) OVER (ORDER BY recency DESC) AS r_score,
	NTILE(5) OVER (ORDER BY frequency DESC) AS f_score,
	NTILE(5) OVER (ORDER BY monetary DESC) AS m_score
FROM analytics.customer_rfm;