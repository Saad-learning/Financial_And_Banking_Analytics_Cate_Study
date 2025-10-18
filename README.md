#  Financial & Banking Analytics Case Study  
## **Credit Risk & Loan Performance Analysis**

---

###  **Project Summary**
This case study explores **Credit Risk & Loan Performance Analysis** in the banking sector using **SQL, Python, and Power BI**.  
It simulates a real-world financial analytics workflow — from **data cleaning and warehouse design** to **risk segmentation** and **KPI visualization**.  

The project builds a unified analytical dataset (`dw.dw_loan_analysis`) combining customer, loan, and payment data.  
Key insights include default risk patterns, credit score correlations, and income-based repayment behaviors.  

The result is an **end-to-end financial analytics pipeline** that supports data-driven lending decisions through interactive **Power BI dashboards** and automated **ETL pipelines**.

---

##  **Project Objective**
To design a complete financial analytics solution that enables banks to:
- Identify and segment customers by **credit risk levels**  
- Monitor **loan performance and default rates**  
- Derive **actionable insights** for better lending decisions  

---

##  **Project Architecture**
The case study follows a structured, multi-phase analytics pipeline:

| Phase | Description |
|-------|--------------|
| **Phase 1 – Data Acquisition** | Generated and imported customer, loan, and payment datasets (`dim_customers`, `loan_applications`, `fact_payments`). |
| **Phase 2 – Data Cleaning & Loading** | Cleaned and validated data using SQL + Python, then loaded into the SQL Server `dw` schema. |
| **Phase 3 – Feature Engineering** | Created analytical dataset `dw.dw_loan_analysis` with derived features like `Total_Payments`, `Late_Payment_Rate`, and `Is_Default`. |
| **Phase 4 – KPI Development & Risk Segmentation** | Built `dw.dw_risk_segments` and calculated KPIs: Default Rate, Avg Loan Amount, Income Category, and Credit Score bands. |
| **Phase 5 – BI Dashboard (Power BI)** | Designed interactive dashboard for tracking Credit Risk and Loan Performance trends. |

---

##  **Tech Stack**
- **SQL Server (T-SQL):** Data modeling, transformation, and warehouse design  
- **Python (Pandas, SQLAlchemy, pypyodbc):** ETL automation and data validation  
- **Power BI:** Visualization and KPI dashboard  
- **Excel:** Initial data profiling and verification  

---

##  **Key Insights**
- Customers with **Credit Score < 600** have a **4× higher default rate**.  
- **Negative correlation (-0.68)** between Credit Score and Default Probability.  
- High-income borrowers maintain **90%+ on-time payment rates**.  
- Certain regions and loan types exhibit **higher late payment concentrations**, indicating localized credit risk.  

---

---

##  **Deliverables**
✅ Cleaned & validated SQL Warehouse (`dw.dw_loan_analysis`)  
✅ Risk Segmentation Table (`dw.dw_risk_segments`)  
✅ Python ETL & Analytics Notebooks  
✅ Power BI Dashboard for Credit Risk & Loan Performance  
✅ PDF Summary Report (KPIs + Visual Findings)

---

##  **Skills Demonstrated**
- Data Cleaning & Feature Engineering (SQL + Python)  
- Data Warehouse Design & Governance (QA Logs)  
- Financial KPI Computation & Risk Analysis  
- Power BI Dashboard Development  
- Business Storytelling through Analytics  

---

##  **Dashboard Preview**
> The Power BI dashboard visualizes credit risk levels, default rates, and loan performance KPIs with interactive filters for **Region, Year, Income Category, and Risk Category**.

*(Add image or link once published on Power BI Service or GitHub repo)*

---

##  **Outcome**
A complete **end-to-end Financial Analytics solution** combining engineering, analytics, and business intelligence — transforming raw loan data into actionable insights for **data-driven lending decisions**.

---

###  **Author**
**Saad Attia**  
Data Analyst | Financial Analytics | SQL | Python | Power BI  
 [Connect on LinkedIn](https://www.linkedin.com/in/) *(https://www.linkedin.com/in/saad-attia-20637b387/)*  

---

###  **How to Use**
1. Clone the repository  
2. Load datasets into SQL Server  
3. Run Python notebooks to perform ETL and feature engineering  
4. Connect Power BI to your SQL database for dashboard visualization  

---

###  **Keywords**
`Credit Risk` • `Loan Performance` • `Data Warehouse` • `ETL` • `Python` • `SQL Server` • `Power BI` • `Financial Analytics`

---



