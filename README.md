# Customer Churn Analysis

Analyzed 7,043 telecom customers to identify churn drivers — discovered month-to-month contracts churn 15x more than two-year contracts (42.7% vs 2.8%), representing $139K monthly revenue loss. Built SQL-based risk segmentation model and interactive 3-page Power BI dashboard with cohort retention tracking.

## Key Findings

- **Contract Type:** Month-to-month churn at 42.7% vs 2.83% for two-year contracts
- **Internet Service:** Fiber optic churn at 41.89%, DSL at 18.96%
- **Payment Method:** Electronic check users churn at 45.29% vs 16% for automatic payments
- **Cohort Retention:** 55% churn in first 12 months; critical intervention window is months 1-3

## Files

- `01_setup.sql`, `02_clean.sql`, `03_analysis.sql` — Data cleaning & analysis queries
- `cohort_analysis.sql` — Cohort retention tracking
- `cohort_retention.py` — Python script generating retention metrics
- `customers_cleaned_final.csv` — Cleaned dataset
- `Churn_Analysis.pbix` — Power BI dashboard (4 pages)

## Power BI Dashboard

- **Page 1:** Churn overview (KPIs, segmentation)
- **Page 2:** Risk analysis (churned customers breakdown)
- **Page 3:** Service usage analysis
- **Page 4:** Cohort retention patterns

## Tools

MySQL 8.0 | Power BI Desktop | Python (Pandas)

## Dataset

IBM Telco Customer Churn (Kaggle)
