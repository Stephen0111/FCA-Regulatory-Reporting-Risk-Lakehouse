-- Name: Daily Transaction Trends
SELECT 
    transaction_date,
    transaction_type,
    COUNT(*) as count,
    SUM(amount) as total_amount
FROM workspace.fca_regulatory.silver_validated_transactions
GROUP BY transaction_date, transaction_type
ORDER BY transaction_date
