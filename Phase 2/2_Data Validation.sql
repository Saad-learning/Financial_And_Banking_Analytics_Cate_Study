---------- Data Validation ---------
---- Row Count for Eatch Table 

SELECT 
	'stg_loan_applications' AS TableName
	, COUNT(*) AS Total_Rows 
FROM 
	stg.stg_loan_applications
UNION ALL

SELECT 
	'stg_customers'
	, COUNT(*) 
FROM 
	stg.stg_dim_customers
UNION ALL

SELECT 
	'stg_payments'
	, COUNT(*)
FROM 
	stg.stg_fact_payments;

---- Check for Duplicates
-- in stg_loan_applications

SELECT 
	Loan_ID
	,COUNT(*) AS Duplicate_Count
FROM
	stg.stg_loan_applications
GROUP BY 
	Loan_ID
HAVING 
	COUNT(*) > 1;

-- in stg_dim_customers

SELECT 
	Customer_ID
	, COUNT(*) AS Duplicate_Count
FROM 
	stg.stg_dim_customers
GROUP BY 
	Customer_ID
HAVING 
	COUNT(*) > 1;

-- in stg_fact_payments
SELECT 
	Payment_ID
	,COUNT(*) AS Duplicate_Count
FROM
	stg.stg_fact_payments
GROUP BY
	Payment_ID
HAVING
	COUNT(*) > 1;

---- Missing (NULL) Values Check
-- in stg_loan_applications
SELECT 
    SUM(CASE 
			WHEN Loan_ID IS NULL 
				THEN 1 ELSE 0 
		END) AS Missing_Loan_ID,
    SUM(CASE 
			WHEN Customer_ID IS NULL 
				THEN 1 ELSE 0 
		END) AS Missing_Customer_ID,
    SUM(CASE 
			WHEN Loan_Amount IS NULL 
				THEN 1 ELSE 0 
		END) AS Missing_LoanAmount,
    SUM(CASE 
			WHEN Loan_Term_Months IS NULL 
				THEN 1 ELSE 0 
		END) AS Missing_TermMonths,
    SUM(CASE 
			WHEN Interest_Rate IS NULL 
				THEN 1 ELSE 0 
		END) AS Missing_InterestRate,
    SUM(CASE 
			WHEN Application_Date IS NULL 
				THEN 1 ELSE 0 
		END) AS Missing_ApplicationDate
FROM 
	stg.stg_loan_applications;

-- in stg_dim_customers
SELECT 
    SUM(CASE 
			WHEN Customer_ID IS NULL 
				THEN 1 ELSE 0 
			END) AS Missing_Customer_ID,
    SUM(CASE 
			WHEN Full_Name IS NULL 
				THEN 1 ELSE 0
		END) AS Missing_CustomerName,
    SUM(CASE 
			WHEN Date_of_Birth IS NULL 
				THEN 1 ELSE 0 
		END) AS Missing_DateOfBirth,
    SUM(CASE 
			WHEN Gender IS NULL 
				THEN 1 ELSE 0 
		END) AS Missing_Gender,
    SUM(CASE 
			WHEN Annual_Income IS NULL 
				THEN 1 ELSE 0 
		END) AS Missing_Income
FROM stg.stg_dim_customers;

-- in stg_fact_payments
SELECT 
    SUM(CASE 
			WHEN Payment_ID IS NULL 
				THEN 1 ELSE 0 
		END) AS Missing_Payment_ID,
    SUM(CASE 
			WHEN Loan_ID IS NULL 
				THEN 1 ELSE 0 
		END) AS Missing_Loan_ID,
    SUM(CASE 
			WHEN Payment_Date IS NULL 
				THEN 1 ELSE 0 
		END) AS Missing_PaymentDate,
    SUM(CASE 
			WHEN Payment_Amount IS NULL 
				THEN 1 ELSE 0 
		END) AS Missing_PaymentAmount
FROM stg.stg_fact_payments;

---- Outlier Detection
-- Loan Amount Outliers
SELECT
	Loan_ID
	,Loan_Amount
FROM
	stg.stg_loan_applications
WHERE 
	Loan_Amount < 1000 OR Loan_Amount > 1000000
ORDER BY
	Loan_Amount;

-- Interest Rate Outliers
SELECT
	Loan_ID
	,Interest_Rate
FROM
	stg.stg_loan_applications
WHERE 
	Interest_Rate < 0 OR Interest_Rate > 0.5
ORDER BY
	Interest_Rate;

-- Payment Amount Outliers
SELECT
	Payment_ID
	,Payment_Amount
FROM
	stg.stg_fact_payments
WHERE
	Payment_Amount < 0 OR Payment_Amount > 100000
ORDER BY 
	Payment_Amount;

---- Logical Consistency Checks
-- Loan Term <= 0
SELECT 
	Loan_ID
	,Loan_Term_Months
FROM
	stg.stg_loan_applications
WHERE
	Loan_Term_Months <= 0;

-- Missing Customer Reference 
SELECT
	l.Loan_ID
	,l.Customer_ID
FROM
	stg.stg_loan_applications l
LEFT JOIN
	stg.stg_dim_customers c	
ON
	l.Customer_ID = c.Customer_ID
WHERE
	c.Customer_ID IS NULL;

-- Payment Without Matching Loan
SELECT 
	p.Payment_ID
	,p.Loan_ID
FROM stg.stg_fact_payments p
LEFT JOIN
	stg.stg_loan_applications l
ON
	p.Loan_ID = l.Loan_ID
WHERE 
	l.Loan_ID IS NULL;

---- Combined Summary Report
SELECT
	'stg.stg_loan_applications' AS TableName
	,COUNT(*) AS TotalRows
	,(
		SELECT 
			COUNT(*) 
		FROM(
			SELECT 
				Loan_ID
			FROM
				stg.stg_loan_applications
			GROUP BY
				Loan_ID
			HAVING
				COUNT(*) > 1
			) AS d 
	) AS DuplicateCount
	,SUM(CASE
			WHEN Loan_Amount IS NULL
				THEN 1 ELSE 0
		END) AS MissingLonaAmount
FROM
	stg.stg_loan_applications
UNION ALL

SELECT
	'stg.stg_dim_customers'
	,COUNT(*)
	,(
		SELECT
			COUNT(*)
		FROM(
			SELECT 
				Customer_ID
			FROM 
				stg.stg_dim_customers
			GROUP BY 
				Customer_ID
			HAVING
				COUNT(*) > 1
			) AS d
	)
	,SUM(CASE
		WHEN Annual_Income IS NULL
			THEN 1 ELSE 0
		END)
FROM
	stg.stg_dim_customers
UNION ALL

SELECT
	'stg.stg_fact_payments'
	,COUNT(*)
	,(
		SELECT
			COUNT(*)
		FROM(
			SELECT
				Payment_ID
			FROM
				stg.stg_fact_payments
			GROUP BY
				Payment_ID
			HAVING COUNT(*) > 1
			) AS d
	)
	,SUM(CASE
		WHEN Payment_Amount IS NULL 
			THEN 1 ELSE 0
		END)
FROM
	stg.stg_fact_payments;