CREATE VIEW analytics.combined_rfm AS 
SELECT *,
r_score::TEXT || f_score::TEXT|| m_score::TEXT AS rfm_score
FROM analytics.rfm_scores;