-- Name: Vulnerable Customer Lending
SELECT 
    customer_id,
    COUNT(*) as loan_count,
    SUM(amount) as total_loan_amount,
    AVG(amount) as avg_loan_amount
FROM workspace.fca_regulatory.gold_conduct_risk_alerts
GROUP BY customer_id
ORDER BY total_loan_amount DESC
LIMIT 20
