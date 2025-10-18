# Phase 5.4 – Review Dashboard with Stakeholders

##  Objective
Present the completed **Power BI dashboard** to the **Chief Risk Officer (CRO)** and **Risk Analytics Team**, gather actionable feedback, and finalize improvements before publishing.

---

##  1️⃣ Stakeholder Audience

| Stakeholder | Role | Interest / Focus |
|--------------|------|------------------|
| **Chief Risk Officer (CRO)** | Executive decision-maker | Risk exposure, default rate, and customer portfolio health |
| **Risk Analytics Team** | Analysts | Data accuracy, segmentation logic, and credit score patterns |
| **BI Developer / Data Analyst (You)** | Developer | Present visuals, interpret insights, and note improvements |
| **Finance Team** | Optional reviewers | Alignment with financial KPIs (loan amount, interest revenue) |

---

##  2️⃣ Review Preparation Steps

| Step | Action | Tool / File |
|------|---------|-------------|
| 1 | Export initial dashboard visuals | Power BI Desktop |
| 2 | Create short slide deck summarizing findings | PowerPoint / Canva |
| 3 | Prepare a walkthrough demo (5–10 min) | Power BI Service or Desktop |
| 4 | Gather metrics summary | Power BI Table or Excel |
| 5 | Prepare feedback sheet | Excel / Google Form |

---

##  3️⃣ Key Dashboard Insights to Present

| Insight | Description | Visualization |
|----------|--------------|----------------|
| **Default Rate (%)** | Overall portfolio default percentage | KPI Card |
| **Credit Score vs Default** | Correlation between credit health and risk | Scatter / Correlation chart |
| **Loan Risk Distribution** | % of loans by Low, Medium, High risk | Donut Chart |
| **Default by Age Group** | Risk trend across age demographics | Stacked Bar Chart |
| **Loan Performance Over Time** | Trend of loan issuance and defaults | Line Chart |
| **Income vs Loan Amount** | Loan size by customer income | Scatter Plot |

---

##  4️⃣ Dashboard Walkthrough Script

> **Step 1: Overview**  
> - "This dashboard provides a holistic view of our loan portfolio performance and customer risk distribution."  
> - “All data is sourced live from the `dw.dw_loan_analysis` table in SQL Server.”  
>
> **Step 2: KPIs**  
> - “Our total loans stand at *X*, with a default rate of *Y%*.”  
> - “Average credit score is *Z*, and total loan value issued equals *$A million*.”  
>
> **Step 3: Risk Segmentation**  
> - “We observe that *N%* of loans fall under **Medium Risk**, which drives most defaults.”  
>
> **Step 4: Default by Demographics**  
> - “The **30–39 age group** shows the highest default rate, particularly within the medium-risk band.”  
>
> **Step 5: Performance Over Time**  
> - “Defaults spiked in *Q3 2023*, possibly due to macroeconomic tightening or interest rate changes.”  
>
> **Step 6: Recommendations**  
> - “We may consider adjusting credit policies or interest margins for high-risk and mid-income groups.”  

---

##  5️⃣ Feedback Collection Template

| Area | Feedback Type | Example Feedback | Priority |
|------|----------------|------------------|-----------|
| **KPIs** | Clarity | “Add KPI for Total Customers.” | Medium |
| **Risk Segmentation** | Logic | “Include credit score bands in tooltip.” | High |
| **Trend Chart** | Visual | “Add marker for monthly default peaks.” | Low |
| **Performance** | Speed | “Optimize visuals for faster refresh.” | Medium |
| **Data Quality** | Validation | “Verify interest rate average by region.” | High |

---

##  6️⃣ Implementing Feedback

| Action | Responsible | Tool | Deliverable |
|---------|--------------|------|--------------|
| Apply visual design changes | BI Developer | Power BI | Updated visuals |
| Verify data logic (DAX, filters) | Risk Analytics Team | SQL + Power BI | Validation report |
| Add new measures (if needed) | BI Developer | Power BI | Enhanced DAX |
| Document final adjustments | BI Developer | Word / Markdown | Final Report Notes |

---

##  7️⃣ Deliverables

| Deliverable | Description |
|--------------|--------------|
| **Presentation Deck** | Dashboard insights & findings summary |
| **Feedback Report** | Collected stakeholder comments |
| **Revised `.pbix` File** | Updated Power BI dashboard |
| **Final Approval Sign-Off** | From CRO / Risk Team |

---

##  Phase 5Outcome
Stakeholders review and approve the dashboard design.  
All comments are logged and incorporated for the final release.

---

##  Next Step: Phase 5– Publish Final Dashboard
This will include:
- Publishing to **Power BI Service**
- Setting **Row-Level Security (RLS)** by region or role
- Creating a **workspace and app**
- Generating the **final report link** for executive access
