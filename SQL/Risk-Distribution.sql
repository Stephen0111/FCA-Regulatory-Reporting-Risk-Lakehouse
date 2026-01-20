SELECT 
    customer_status,
    COUNT(*) as customer_count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) as percentage
FROM workspace.fca_regulatory.silver_customer_360
GROUP BY customer_status
