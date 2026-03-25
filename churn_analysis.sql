-- Total Customers
SELECT COUNT(*) FROM telco_churn;

-- Churned Customers
SELECT COUNT(*) 
FROM telco_churn
WHERE Churn = 'Yes';

-- Churn Rate
SELECT 
COUNT(CASE WHEN Churn='Yes' THEN 1 END) * 100.0 / COUNT(*) AS churn_rate
FROM telco_churn;