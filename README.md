# 🏦 Bank Loan Analysis

An end-to-end Data Analyst project analyzing **38,576 bank loan records** using SQL, Python, and Power BI — covering KPI tracking, loan performance classification, and interactive dashboard reporting.

---

## 🛠️ Tools Used
- **MS SQL Server** — KPI queries & data validation
- **Python** — EDA & visualizations (Pandas, NumPy, Matplotlib, Seaborn, Plotly)
- **Power BI** — Interactive dashboards (Summary + Overview)
- **Excel** — Data design sheet & pivot analysis

---

## 📊 Dataset
- **Records:** 38,576 loans | **Columns:** 24
- **Key fields:** `loan_status`, `loan_amount`, `total_payment`, `int_rate`, `dti`, `issue_date`, `address_state`, `purpose`, `emp_length`, `home_ownership`, `term`, `grade`

---

## 📈 KPI Results (from actual data)

### Primary KPIs
| KPI | Total | MTD (Dec) | PMTD (Nov) | MoM Change |
|---|---|---|---|---|
| Loan Applications | 38,576 | 4,314 | 4,035 | +6.9% |
| Funded Amount | $435.8M | $54.0M | $47.8M | +13.0% |
| Amount Received | $473.1M | $58.1M | $50.1M | +15.8% |
| Avg Interest Rate | 12.05% | 12.36% | 11.94% | +3.5% |
| Avg DTI | 13.33% | 13.67% | 13.30% | +2.7% |

### Good Loan vs Bad Loan
| Category | Applications | Funded Amount | Amount Received |
|---|---|---|---|
| ✅ Good Loan (Fully Paid + Current) | 33,243 (86.2%) | $370.2M | $435.8M |
| ❌ Bad Loan (Charged Off) | 5,333 (13.8%) | $65.5M | $37.3M |

### Loan Status Breakdown
| Status | Count | Funded Amount | Avg Interest Rate |
|---|---|---|---|
| Fully Paid | 32,145 | $351.4M | 11.64% |
| Charged Off | 5,333 | $65.5M | 13.88% |
| Current | 1,098 | $18.9M | 15.10% |

---

## 🔍 Analysis Breakdown

**Monthly Trends** — Applications grew consistently from 2,332 (Jan) to 4,314 (Dec)

**Top Loan Purposes**
| Purpose | Applications |
|---|---|
| Debt Consolidation | 18,214 |
| Credit Card | 4,998 |
| Other | 3,824 |
| Home Improvement | 2,876 |

**Loan Term** — 36 months: 28,237 | 60 months: 10,339

**Top States** — CA (6,894), NY (3,701), TX (2,664), FL (2,773)

**Home Ownership** — Rent: 18,439 | Mortgage: 17,198 | Own: 2,838

**Employment Length** — 10+ years borrowers are the largest group (8,870)

---

## ▶️ How to Run
```bash
# Python
pip install pandas numpy matplotlib seaborn plotly
jupyter notebook Bank_Loan_Analysis.ipynb
```
- **SQL:** Import `financial_loan.csv` into SQL Server → run `SQLQuery1.sql`
- **Power BI:** Open `.pbix` → update data source → refresh

