-- Name: AML Suspicious Transactions
SELECT 
    transaction_type,
    currency,
    COUNT(*) as transaction_count,
    SUM(amount) as total_amount,
    AVG(amount) as avg_amount,
    MAX(amount) as max_amount
FROM workspace.fca_regulatory.gold_suspicious_transactions
GROUP BY transaction_type, currency
ORDER BY total_amount DESC
