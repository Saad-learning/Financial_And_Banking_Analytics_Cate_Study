                 ----- Validation Rules ------
---| Field                      | Rule                                      | Action if Invalid                   |
---| -------------------------- | ----------------------------------------- | ----------------------------------- |
---| `Credit_Score_Final`       | Must be between **300 and 850**           | Flag as "Invalid Credit Score"      |
---| `Annual_Income`            | Must be between **5,000 and 500,000 USD** | Flag as "Outlier Income"            |
---| `Is_Default`               | Must be **0 or 1**                        | Flag as "Invalid Default Flag"      |
---| `Loan_Amount`              | Must be positive                          | Flag as "Negative/Zero Loan Amount" |

--------------------- Step 1 – SQL Validation Queries ------------------------------

--- Validate Credit Scores

SELECT 
    Customer_ID
    ,Loan_ID
    ,Credit_Score_Final
    ,CASE 
        WHEN Credit_Score_Final < 300 
            THEN 'Below Minimum'
        WHEN Credit_Score_Final > 850 
            THEN 'Above Maximum'
        WHEN Credit_Score_Final IS NULL 
            THEN 'Missing Credit Score'
        ELSE 'Valid'
    END AS CreditScore_Status
FROM 
    dbo.dw_loan_analysis
WHERE 
    Credit_Score_Final IS NULL 
     OR Credit_Score_Final < 300 
     OR Credit_Score_Final > 850;

--- Validate Annual Income

SELECT 
    Customer_ID
    ,Loan_ID
    ,Annual_Income
    ,CASE 
        WHEN Annual_Income < 5000 
            THEN 'Too Low'
        WHEN Annual_Income > 500000 
            THEN 'Too High'
        WHEN Annual_Income IS NULL 
            THEN 'Missing Income'
        ELSE 'Valid'
    END AS Income_Status
FROM 
    dbo.dw_loan_analysis
WHERE 
    Annual_Income IS NULL 
        OR Annual_Income < 5000 
        OR Annual_Income > 500000;

--- Validate Default Flag

SELECT 
    Loan_ID,
    Is_Default
FROM 
    dbo.dw_loan_analysis
WHERE 
    Is_Default NOT IN (0, 1);