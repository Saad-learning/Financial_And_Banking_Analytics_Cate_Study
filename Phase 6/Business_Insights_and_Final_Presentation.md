# Phase 6: Business Insights & Final Presentation

##  Objective
Present findings and actionable insights to stakeholders based on the credit risk and loan performance analysis.

---

##  Tasks Overview

| Task ID | Task Description | Responsible | Deliverable |
|----------|------------------|--------------|--------------|
| **6.1** | Summarize key insights (Top risk segments, trends, performance) | Data Analyst | Insights Report |
| **6.2** | Create presentation slides with visuals and KPIs | BI Developer | PowerPoint Deck |
| **6.3** | Present recommendations to CRO and Risk Team | Project Lead | Final Presentation |
| **6.4** | Document next steps (model deployment, new data tracking) | Business Analyst | Implementation Plan |

---

##  Key Deliverables Summary

| Deliverable | Description | Owner |
|--------------|-------------|-------|
| **Clean Master Dataset** | Unified and validated data source used for analysis | Data Analyst |
| **SQL Data Warehouse** | Final schema with dimension and fact tables (`dw.customers`, `dw.loan_applications`, `dw.payments`, `dw.dw_loan_analysis`) | Data Engineer |
| **Power BI Dashboard** | Executive-level report showing credit risk, loan defaults, income trends, and KPIs | BI Developer |
| **Predictive Model (Optional)** | Loan default probability estimator trained on customer features | Data Scientist |
| **Final Presentation Deck** | Summary of key findings, risk segments, and recommendations for CRO | Project Lead |

---

##  Example Insights to Include

| Insight Category | Example Finding | Business Impact |
|------------------|----------------|----------------|
| **Risk Segmentation** | 42% of portfolio in Medium Risk; contributes to 67% of defaults | Focus on tightening credit score policy for Medium Risk group |
| **Credit Score Trend** | Defaults sharply increase when credit score < 620 | Implement stricter loan approval thresholds |
| **Income vs Loan Amount** | Low-income borrowers take smaller loans but default more often | Adjust loan terms or require guarantor for low-income groups |
| **Default Timing** | 60% of defaults occur within first 6 months of disbursement | Strengthen early repayment monitoring and communication |
| **Regional Performance** | Region B has highest loan disbursement but also highest default rate | Reevaluate branch underwriting strategy |

---

##  Final Deliverables Package

| File | Description |
|------|--------------|
| `Credit_Risk_Insights_Report.pdf` | Written report summarizing analytical findings |
| `Credit_Risk_Presentation.pptx` | PowerPoint presentation with visuals and KPIs |
| `Credit_Risk_Loan_Performance.pbix` | Final Power BI dashboard |
| `dw_dw_loan_analysis.sql` | SQL script for cleaned data model |
| `Implementation_Plan.md` | Recommendations and next steps for model deployment |

---

##  Next Steps After Presentation

1. **Deploy Predictive Risk Model (if selected)**  
   - Use logistic regression or random forest for default prediction.  
   - Store results in a new SQL table `dw.loan_risk_predictions`.

2. **Automate Data Refresh**  
   - Schedule Power BI refresh via Gateway every 24 hours.  

3. **Extend Dashboard Coverage**  
   - Include repayment trends, credit utilization, and profitability metrics.  

4. **Establish Data Governance**  
   - Implement QA logging, periodic audits, and RLS-based access control.

---

##  Phase 6 Outcome
- Executives understand the full credit risk landscape.  
- Data-driven recommendations guide loan policy and risk management decisions.  
- Analytics workflow (SQL + Python + Power BI) completed successfully.

---
