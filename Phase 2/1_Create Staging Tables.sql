-- Create schema 
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'stg')
BEGIN
	EXEC('CREATE SCHEMA stg');
END
GO

--  stg_dim_customers
IF OBJECT_ID('stg.stg_dim_customers', 'U') IS NOT NULL
    DROP TABLE stg.stg_dim_customers;
GO

SELECT *
INTO stg.stg_dim_customers
FROM dbo.dim_customers;
GO

-- stg_loan_applications
IF OBJECT_ID('stg.stg_loan_applications', 'U') IS NOT NULL
    DROP TABLE stg.stg_loan_applications;
GO

SELECT *
INTO stg.stg_loan_applications
FROM dbo.loan_applications;
GO


-- stg_fact_payments
IF OBJECT_ID('stg.stg_fact_payments', 'U') IS NOT NULL
    DROP TABLE stg.stg_fact_payments;
GO

SELECT *
INTO stg.stg_fact_payments
FROM dbo.fact_payments;
GO