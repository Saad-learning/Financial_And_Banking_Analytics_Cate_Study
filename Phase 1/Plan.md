# 🏦 Financial & Banking Analytics Case Study  
### Project Title: “Credit Risk & Loan Performance Analysis”  
**Department:** Data & Business Intelligence  
**Industry:** Finance / Banking  

---

##  Project Overview

**Project Goal:**  
Enhance the bank’s credit risk assessment process by identifying high-risk customer segments and improving loan approval accuracy through data-driven insights.

**Business Context:**  
The lending division has experienced inconsistencies in loan performance and default rates. The Data Analytics team has been tasked with developing an analytical framework to monitor, predict, and optimize loan decisions across various customer segments.

---

## 👥 Stakeholders

| Role | Name / Department | Responsibility |
|------|-------------------|----------------|
| **Project Sponsor** | Chief Risk Officer (CRO) | Define business KPIs and oversee model integration |
| **Project Owner** | Head of Credit Risk | Ensure findings align with regulatory and business policies |
| **Data Analyst** | *You (Saad Attia)* | Lead data preparation, analysis, and visualization |
| **Data Engineer** | BI & Data Infrastructure Team | Build SQL warehouse and manage ETL pipelines |
| **Business Analyst** | Lending Strategy Department | Translate insights into operational recommendations |
| **Power BI Developer** | BI Visualization Team | Build dashboards for executives and credit managers |

---

##  Objectives

1. Identify **risk patterns** among borrowers based on demographics, income, and credit history.  
2. Improve **loan approval decisions** by integrating data-driven insights into approval criteria.  
3. Monitor **loan performance KPIs**, such as default rates and recovery ratios.  
4. (Optional) Build a **predictive model** using Python to estimate loan default probability.  

---

##  Tools & Technologies

| Category | Tools |
|-----------|-------|
| **Data Storage** | SQL Server / PostgreSQL |
| **ETL & Analysis** | Python (Pandas, NumPy, Scikit-learn) |
| **Visualization** | Power BI |
| **Data Source** | Kaggle’s Loan Default Prediction or Bank Marketing Dataset |

---

##  Deliverables

| Phase | Deliverable | Description |
|-------|--------------|-------------|
| **1. Planning** | Project Scope Document | Stakeholder alignment and KPI definitions |
| **2. Data Preparation** | Cleaned Master Dataset | Unified dataset ready for analysis |
| **3. SQL Warehouse** | Staging + Fact Tables | Normalized structure for analytics |
| **4. BI Dashboard** | Power BI Report | KPIs, Risk Segments, Loan Performance Overview |
| **5. Predictive Model (Optional)** | Python Model | Predict loan default probability |

---

##  Data Model Design

We will build a **3-table relational model** to simulate realistic financial data.

---

###  Main Table: `loan_applications`

| Column | Type | Description |
|--------|------|-------------|
| `Loan_ID` | INT | Unique loan identifier |
| `Customer_ID` | INT | Links to customer table |
| `Loan_Amount` | FLOAT | Total loan value |
| `Loan_Term_Months` | INT | Duration of the loan |
| `Interest_Rate` | FLOAT | Annual interest rate (%) |
| `Loan_Purpose` | VARCHAR | Purpose (Home, Car, Education, Business, Personal) |
| `Application_Date` | DATE | When the loan was applied for |
| `Approval_Status` | VARCHAR | Approved / Rejected |
| `Default_Status` | VARCHAR | Defaulted / Paid |
| `Monthly_Income` | FLOAT | Borrower’s monthly income |
| `Credit_Score` | INT | Ranges from 300–850 |
| `Employment_Length` | INT | Years employed |
| `Marital_Status` | VARCHAR | Single / Married / Divorced |
| `Age` | INT | Age of applicant |
| `Region` | VARCHAR | Geographic region |
| `Gender` | VARCHAR | Male / Female / Other |

---

###  Supporting Table: `dim_customers`

| Column | Type | Description |
|--------|------|-------------|
| `Customer_ID` | INT | Primary key |
| `Full_Name` | VARCHAR | Customer name |
| `Gender` | VARCHAR | Gender |
| `Date_of_Birth` | DATE | Used to calculate Age |
| `Region` | VARCHAR | Region or city |
| `Education_Level` | VARCHAR | High School / Bachelor / Master / PhD |
| `Employment_Status` | VARCHAR | Employed / Self-employed / Unemployed / Retired |
| `Annual_Income` | FLOAT | Reported income |
| `Credit_History_Length` | INT | Years of credit history |
| `Credit_Score` | INT | Last known credit score |

---

###  Supporting Table: `fact_payments`

| Column | Type | Description |
|--------|------|-------------|
| `Payment_ID` | INT | Unique transaction |
| `Loan_ID` | INT | FK to loan table |
| `Payment_Date` | DATE | Date of payment |
| `Payment_Amount` | FLOAT | Amount paid |
| `Remaining_Balance` | FLOAT | Balance after payment |
| `Is_Late` | BIT | Whether payment was late |
| `Days_Late` | INT | Number of days late |

---

##  Analytical Focus Areas

1. **Loan Performance KPIs**
   - Default Rate (%)
   - Average Interest Income
   - On-time Payment Ratio
   - Customer Retention Rate  

2. **Risk Segmentation**
   - By Credit Score
   - By Employment Length
   - By Loan Purpose
   - By Region  

3. **Predictive Analytics (Optional)**
   - Logistic Regression or Random Forest to predict default probability.  

---

##  Next Step (Choose One)

1. ** Option A — Generate Synthetic Dataset in Python (Pandas)**  
   → Create 3 tables with realistic random data.

2. ** Option B — Create SQL Scripts for Staging Tables**  
   → Build `stg_loan_applications`, `stg_customers`, and `stg_payments` in SQL.

3. ** Option C — Start Phase 2: Data Cleaning Plan**  
   → Define cleaning rules (missing values, invalid credit scores, etc.)

---
