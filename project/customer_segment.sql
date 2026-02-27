CREATE VIEW analytics.customer_segments AS 
SELECT 
	cr.customer_id,
	cr.customer_name,
	cr.recency,
	cr.frequency,
	cr.monetary,
	cr.rfm_score,
	s.segment 
FROM 	
	analytics.combined_rfm cr
LEFT JOIN analytics.segment_score s ON cr.rfm_score::INT = s.scores; 