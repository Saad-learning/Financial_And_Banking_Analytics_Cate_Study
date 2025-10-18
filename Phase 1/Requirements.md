# Phase 1: Project Planning & Requirements  

**Objective:**  
Align project scope, stakeholders, and success metrics before data work begins.

---

## 1.1 Project Scope Document  

**Project Title:** Credit Risk Analysis & BI Dashboard  

**Objective:**  
To analyze customer credit behavior, identify factors affecting default risk, and build a data-driven Power BI dashboard that supports better lending decisions and ROI optimization.  

**Scope:**  
- Analyze loan, payment, and customer demographic data  
- Calculate key KPIs (Default Rate, Approval Rate, ROI, Recovery Rate)  
- Build a clean data warehouse (SQL-based)  
- Design Power BI dashboard for executive insights  

**In-Scope:**  
- Data cleaning, integration, and transformation
- Exploratory data analysis (EDA)  
- Predictive modeling (optional)  
- BI visualization and reporting  

**Out-of-Scope:**  
- Real-time data streaming  
- Integration with external credit bureau APIs  

**Stakeholders:**  
- **CRO (Chief Risk Officer):** Project sponsor  
- **Data Analyst:** Lead analysis and dashboard  
- **Data Engineer:** Manage data ETL and pipelines  
- **Business Analyst:** Manage requirements and communication  

**Success Criteria:**  
- BI dashboard deployed and used by CRO  
- 10% improvement in credit approval accuracy  
- Data quality score >95% after cleaning  

---

## 1.2 KPI List  

| KPI | Description | Formula | Owner |
|------|--------------|----------|--------|
| **Default Rate** | % of customers who defaulted | `(Defaults / Total Loans) * 100` | Risk Team |
| **Approval Rate** | % of approved loan applications | `(Approved / Total Applications) * 100` | Credit Ops |
| **ROI** | Return on investment per customer | `(Profit - Cost) / Cost * 100` | Finance |
| **Recovery Rate** | % of recovered funds after default | `(Recovered / Defaulted) * 100` | Collections |
| **Customer Retention** | % of repeat borrowers | `(Repeat Customers / Total Customers) * 100` | Marketing |

---

##  1.3 Data Dictionary  

| Table | Field | Type | Description | Source |
|--------|--------|------|-------------|---------|
| **customers** | `customer_id` | INT | Unique ID | CRM |
|  | `age` | INT | Customer age | CRM |
|  | `income` | FLOAT | Annual income | CRM |
| **loans** | `loan_id` | INT | Loan identifier | Loan System |
|  | `customer_id` | INT | FK to customers | Loan System |
|  | `loan_amount` | FLOAT | Amount borrowed | Loan System |
|  | `loan_status` | VARCHAR | Approved / Rejected / Defaulted | Loan System |
| **payments** | `payment_id` | INT | Unique payment ID | Payment Gateway |
|  | `loan_id` | INT | FK to loans | Payment Gateway |
|  | `payment_date` | DATE | Date of payment | Payment Gateway |
|  | `payment_amount` | FLOAT | Amount paid | Payment Gateway |

---

## 1.4 Communication Plan  

| Stakeholder | Role | Communication Type | Frequency | Channel |
|--------------|------|--------------------|------------|----------|
| **CRO** | Project Sponsor | Executive summary | Bi-weekly | Email / Meeting |
| **Data Analyst** | Project Lead | Progress report | Weekly | Slack / Report |
| **Data Engineer** | ETL & Database | Technical sync | Weekly | MS Teams |
| **Business Analyst** | Coordinator | Project status | Weekly | Notion / Email |
| **Risk Team** | Reviewer | KPI updates | Monthly | Dashboard Review |

---

