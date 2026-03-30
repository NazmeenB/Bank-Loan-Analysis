# 🏦 Bank Loan Analysis

An end-to-end Data Analyst project analyzing 38,576 bank loan records using SQL, Python, and Power BI.

---

## 🛠️ Tools Used
- **MS SQL Server** — KPI queries & data validation
- **Python** — EDA & visualizations (Pandas, Matplotlib, Seaborn, Plotly)
- **Power BI** — Interactive dashboards

---

## 📊 Key KPIs
- Total Loan Applications, Funded Amount & Amount Received (MTD & PMTD)
- Average Interest Rate & DTI
- Good Loan vs. Bad Loan percentage (Good = Fully Paid / Current, Bad = Charged Off)

## 📈 Analysis Covered
- Monthly trends | State-wise distribution | Loan purpose breakdown
- Loan term analysis | Employment length | Home ownership patterns

---

## ▶️ How to Run
```bash
# Python
pip install pandas numpy matplotlib seaborn plotly
jupyter notebook Bank_Loan_Analysis.ipynb
```
For SQL: Import `financial_loan.csv` into SQL Server and run `SQLQuery1.sql`  
For Power BI: Open `.pbix` file and refresh data source connection

---

## 💡 Key Insights
- ~86% of loans are good loans
- Debt consolidation is the most common loan purpose
- Borrowers with 10+ years employment receive the highest funded amounts
