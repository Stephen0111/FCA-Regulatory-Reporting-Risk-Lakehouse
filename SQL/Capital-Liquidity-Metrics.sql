-- Name: FCA Key Ratios
SELECT 
    'Capital Adequacy Ratio' as metric,
    capital_adequacy_ratio as value,
    CASE 
        WHEN capital_adequacy_ratio >= 0.12 THEN 'Green'
        WHEN capital_adequacy_ratio >= 0.10 THEN 'Amber'
        ELSE 'Red'
    END as status
FROM workspace.fca_regulatory.gold_capital_adequacy_ratio
UNION ALL
SELECT 
    'Liquidity Coverage Ratio' as metric,
    liquidity_coverage_ratio as value,
    CASE 
        WHEN liquidity_coverage_ratio >= 1.0 THEN 'Green'
        WHEN liquidity_coverage_ratio >= 0.8 THEN 'Amber'
        ELSE 'Red'
    END as status
FROM workspace.fca_regulatory.gold_liquidity_coverage_ratio
