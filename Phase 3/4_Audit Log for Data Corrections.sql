--| Column             | Type              | Description                                                         |--
--| ------------------ | ----------------- | ------------------------------------------------------------------- |--
--| `Audit_ID`         | INT IDENTITY(1,1) | Unique identifier for each audit entry                              |--
--| `Table_Name`       | NVARCHAR(100)     | Name of the table corrected or validated (e.g., `dw_loan_analysis`) |--
--| `Column_Name`      | NVARCHAR(100)     | Name of the column involved in correction                           |--
--| `Record_ID`        | NVARCHAR(50)      | Loan_ID or Customer_ID affected                                     |--
--| `Old_Value`        | NVARCHAR(255)     | Value before correction                                             |--
--| `New_Value`        | NVARCHAR(255)     | Value after correction                                              |--
--| `Change_Type`      | NVARCHAR(50)      | e.g., “Correction”, “Validation Passed”, “Missing Value Filled”     |--
--| `Changed_By`       | NVARCHAR(100)     | Analyst or system that made the change                              |--
--| `Change_Timestamp` | DATETIME          | Date and time of change                                             |--
--| `Remarks`          | NVARCHAR(255)     | Additional notes or context                                         |--

------ Create the Audit Log Table in SQL ------

CREATE TABLE dbo.qa_audit_log (
    Audit_ID INT IDENTITY(1,1) PRIMARY KEY,
    Table_Name NVARCHAR(100),
    Column_Name NVARCHAR(100),
    Record_ID NVARCHAR(50),
    Old_Value NVARCHAR(255),
    New_Value NVARCHAR(255),
    Change_Type NVARCHAR(50),
    Changed_By NVARCHAR(100),
    Change_Timestamp DATETIME DEFAULT GETDATE(),
    Remarks NVARCHAR(255)
);

------ Insert a “Validation Passed” Record (for traceability) ------
INSERT INTO dbo.qa_audit_log (
    Table_Name, Column_Name, Change_Type, Changed_By, Remarks
)
VALUES 
('dw_loan_analysis', 'Credit_Score_Final', 'Validation Passed', 'System', 'All Credit Scores within range (300–850)'),
('dw_loan_analysis', 'Annual_Income', 'Validation Passed', 'System', 'All Annual Income values within range (5,000–500,000)');

------ Verify Audit Entries ------
SELECT * 
FROM dbo.qa_audit_log
ORDER BY Change_Timestamp DESC;
