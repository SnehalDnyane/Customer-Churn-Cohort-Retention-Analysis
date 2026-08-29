SELECT 
  CASE 
    WHEN tenure = 0 THEN '0_months'
    WHEN tenure BETWEEN 1 AND 3 THEN '1_to_3_months'
    WHEN tenure BETWEEN 4 AND 6 THEN '4_to_6_months'
    WHEN tenure BETWEEN 7 AND 12 THEN '7_to_12_months'
    WHEN tenure BETWEEN 13 AND 24 THEN '13_to_24_months'
    ELSE '25plus_months'
  END as tenure_cohort,
  
  Contract,
  PaymentMethod,
  InternetService,
  
  COUNT(DISTINCT customerID) as total_customers,
  SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) as churned_customers,
  COUNT(DISTINCT customerID) - SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) as retained_customers,
  
  ROUND(100 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(DISTINCT customerID), 2) as churn_rate_pct,
  ROUND(100 * (COUNT(DISTINCT customerID) - SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)) / COUNT(DISTINCT customerID), 2) as retention_rate_pct

FROM customers

GROUP BY tenure_cohort, Contract, PaymentMethod, InternetService
ORDER BY 
  CASE 
    WHEN tenure_cohort = '0_months' THEN 1
    WHEN tenure_cohort = '1_to_3_months' THEN 2
    WHEN tenure_cohort = '4_to_6_months' THEN 3
    WHEN tenure_cohort = '7_to_12_months' THEN 4
    WHEN tenure_cohort = '13_to_24_months' THEN 5
    ELSE 6
  END;