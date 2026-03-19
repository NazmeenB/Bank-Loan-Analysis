select * from bank_loan_data


SELECT COUNT(id) AS Total_Loan_Applications FROM bank_loan_data

SELECT COUNT(id) AS MTD_Total_Loan_Applications FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date)=2021

SELECT COUNT(id) AS PMTD_Total_Loan_Applications FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date)=2021

--(MTD-PMTD)/PMTD 

--2. Total Funded Amount
select * from bank_loan_data

SELECT SUM(loan_amount) as Total_Funded_Amount FROM bank_loan_data

SELECT SUM(loan_amount) as MTD_Total_Funded_Amount FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

SELECT SUM(loan_amount) as PMTD_Total_Funded_Amount FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

--3. Total Amount Received

SELECT SUM(total_payment) AS Total_Amount_received FROM bank_loan_data


SELECT SUM(total_payment) AS MTD_Total_Amount_received FROM bank_loan_data
WHERE MONTH(issue_date) =12 AND YEAR(issue_date)=2021

SELECT SUM(total_payment) AS PMTD_Total_Amount_received FROM bank_loan_data
WHERE MONTH(issue_date) =11 AND YEAR(issue_date)=2021

--4. Average Intrest Rate
select * from bank_loan_data

SELECT AVG(int_rate) * 100 as Avg_Intrest_Rate FROM bank_loan_data

SELECT ROUND(AVG(int_rate),4) * 100 as MTD_Avg_Intrest_Rate FROM bank_loan_data
WHERE MONTH(issue_date)= 12 and YEAR(issue_date)=2021

SELECT ROUND(AVG(int_rate),4) * 100 as PMTD_Avg_Intrest_Rate FROM bank_loan_data
WHERE MONTH(issue_date)= 11 and YEAR(issue_date)=2021

--5. Average Dept-to-income Ratio(DTI):
select * from bank_loan_data

SELECT ROUND(AVG(dti),4) * 100 AS Avg_DTI FROM bank_loan_data

SELECT ROUND(AVG(dti),4) * 100 AS MTD_Avg_DTI FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date)=2021


SELECT ROUND(AVG(dti),4) * 100 AS PMTD_Avg_DTI FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date)=2021

-- SUMMARY OVERVIEW

select * from bank_loan_data

select loan_status  from bank_loan_data

-- Good Laon Percentage

SELECT
	(COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END)*100)
	/
	COUNT(id) AS Good_loan_percentage
FROM bank_loan_data

--Count Good Loan Applications

SELECT COUNT(id) AS Good_Loan_Applications FROM bank_loan_data
WHERE loan_status= 'Fully Paid' OR loan_status = 'Current'

--Good Loan Funded Amount
SELECT SUM(loan_amount) AS Good_Loan_Funded_Amount FROM bank_loan_data
WHERE loan_status= 'Fully Paid' OR loan_status = 'Current'

-- Good Loan Received Amount
SELECT SUM(total_payment) AS Good_Loan_Received_Amount FROM bank_loan_data
WHERE loan_status= 'Fully Paid' OR loan_status = 'Current'


--Bad Loan Percentage

SELECT
	(COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END)*100.0)
	/
	COUNT(id) AS Bad_loan_percentage
FROM bank_loan_data

-- Total Applications of Bad Loan
SELECT COUNT(id) AS Bad_Loan_Applications FROM bank_loan_data
WHERE loan_status= 'Charged Off'

--Bad Loan Funded Amount

SELECT SUM(loan_amount) AS Bad_Loan_Funded_Amount FROM bank_loan_data
WHERE loan_status= 'Charged Off'

-- bad Loan Received Amount
SELECT SUM(total_payment) AS Bad_Loan_Amount_Received FROM bank_loan_data
WHERE loan_status= 'Charged Off'

-- Loan Status Grid View

SELECT
        loan_status,
        COUNT(id) AS Total_Loan_applications,
        SUM(total_payment) AS Total_Amount_Received,
        SUM(loan_amount) AS Total_Funded_Amount,
        AVG(int_rate * 100) AS Interest_Rate,
        AVG(dti * 100) AS DTI
    FROM
        bank_loan_data
    GROUP BY
        loan_status


SELECT 
	loan_status, 
	SUM(total_payment) AS MTD_Total_Amount_Received, 
	SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 
GROUP BY loan_status


--For 2nd DASHBOARD: OVERVIEW

select * from bank_loan_data
 --1. Monthly Trends by Issue Date
SELECT 
    MONTH(issue_date) AS Month_Number,
    DATENAME(MONTH, issue_date) AS Month_Name,
    COUNT(id) as Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) as Total_Received_Amount
FROM bank_loan_data
GROUP BY MONTH(issue_date),DATENAME(MONTH, issue_date)
ORDER BY MONTH(issue_date) 

select * from bank_loan_data

--2. Regional Analysis by state
SELECT 
    address_state,
    COUNT(id) as Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) as Total_Received_Amount
FROM bank_loan_data
GROUP BY address_state
ORDER BY SUM(loan_amount) DESC

--3. Loan Term Analysis
SELECT 
    term,
    COUNT(id) as Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) as Total_Received_Amount
FROM bank_loan_data
GROUP BY term
ORDER BY term

--4. Employee Length Analysis
SELECT 
    emp_length,
    COUNT(id) as Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) as Total_Received_Amount
FROM bank_loan_data
GROUP BY emp_length
ORDER BY Count(id) DESC

--5. Loan Purpose Breakdown
select * from bank_loan_data

SELECT 
    purpose,
    COUNT(id) as Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) as Total_Received_Amount
FROM bank_loan_data
GROUP BY purpose
ORDER BY Count(id) DESC

-- 6. Home Ownership Analysis
select * from bank_loan_data

SELECT 
    home_ownership,
    COUNT(id) as Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) as Total_Received_Amount
FROM bank_loan_data
GROUP BY home_ownership
ORDER BY COUNT(id) DESC