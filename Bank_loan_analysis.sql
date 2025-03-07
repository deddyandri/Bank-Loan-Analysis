use [Bank Loan DB]

--A. BANK LOAN REPORT QUERY DOCUMENT

SELECT *
FROM Financial_loan

-- 1. Total Loan Application
SELECT COUNT(id) as Total_Application
FROM Financial_loan


-- 1a. MTD Loan Application

SELECT COUNT(id) as MTD_Total_Application FROM Financial_loan
WHERE MONTH(issue_date) = 12

-- 2. Total Funded Amount

SELECT 
	SUM(loan_amount) as Total_loan_amount
	from Financial_loan

-- 3. Total Amount Received
SELECT
	SUM(total_payment) as Total_loan_received
FROM
	Financial_loan

-- 4. Average Interest Rate
SELECT
	ROUND(AVG(int_rate), 4) * 100 as Average_int_rate
FROM
	Financial_loan

-- 5. Average Debt to Income Ratio
SELECT 
	AVG(dti)*100 as Average_DTI
FROM Financial_loan

-- GOOD LOAN ISSUE

-- 1 Good Loan Percentage
-- first find how many are loan_status with paid and current

SELECT
COUNT(id) from Financial_loan
WHERE loan_status ='Fully Paid' OR loan_status = 'Current')*100.0

-- then find total number of loan
SELECT
COUNT(id) from Financial_loan

-- divide all using subquery 
SELECT
	(SELECT
	COUNT(id) from Financial_loan
	WHERE loan_status ='Fully Paid' OR loan_status = 'Current')*100.
	/
	(SELECT
	COUNT(id) from Financial_loan)
as Good_Loan_Percentage

-- 2. Good Loan Applications

SELECT
COUNT(id) as Good_Loan_Applications
FROM
Financial_loan
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

-- 3.Good Loan Funded Amount
SELECT
	SUM(loan_amount) as Good_Loan_Funded_amount
	FROM
Financial_loan
	WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

-- 4. Good Loan Amount Received
SELECT
	SUM(total_payment) as Good_Loan_amount_received
FROM
	Financial_loan
WHERE 
	loan_status= 'Fully Paid' OR loan_status = 'Current'

-- BAD LOAN ISSUE
-- 1. Bad Loan Percentage
SELECT
	(SELECT
	COUNT(id) from Financial_loan
	WHERE loan_status ='Charged Off')*100.
	/
	(SELECT
	COUNT(id) from Financial_loan)
as Bad_Loan_Percentage

-- 2. Bad Loan Applications
SELECT
	COUNT(id) as Bad_Loan_Applications
FROM
	Financial_loan
WHERE
	loan_status ='Charged Off'

-- 3. Bad Loan Funded Amount
SELECT
	SUM(loan_amount) as Bad_loan_funded_amount
FROM
	Financial_loan
WHERE
	loan_status ='Charged Off'

-- 4. Bad Loan Amount Received
SELECT
	SUM(total_payment) as Bad_Loan_amount_received
FROM
	Financial_loan
WHERE
	loan_status = 'Charged Off'

-- LOAN STATUS
SELECT
	loan_status,
	COUNT(id) as LoanCount,
	SUM(total_payment) as Total_Maount_Received,
	SUM(loan_amount) as Total_Funded_Amount,
	AVG(int_rate * 100) as Interest_Rate,
	AVG(dti*100) as DTI
FROM
	Financial_loan
GROUP BY
	loan_status

-- B. BANK LOAN REPORT 

-- MONTH

SELECT
	MONTH(issue_date) as Month_Number,
	DATENAME(MONTH,issue_date) as Month_name,
	COUNT(id) as Total_Loan_Applications,
	SUM(loan_amount) as Total_Funded_Amount,
	SUM(total_payment) as Total_Amount_Received

FROM Financial_loan
GROUP BY MONTH(issue_date), DATENAME(MONTH, issue_date)

ORDER BY MONTH(issue_date)

-- STATE

SELECT
address_state as State,
	COUNT(id) as Total_Loan_Applications,
	SUM(loan_amount) as Total_Funded_Amount,
	SUM(total_payment) as Total_Amount_Received
FROM Financial_loan
GROUP BY address_state
ORDER BY address_state

-- order from biggest to lower

SELECT
address_state as State,
	COUNT(id) as Total_Loan_Applications,
	SUM(loan_amount) as Total_Funded_Amount,
	SUM(total_payment) as Total_Amount_Received
FROM Financial_loan
GROUP BY address_state
ORDER BY Total_Amount_Received DESC

--TERM
SELECT
term as Term,
	COUNT(id) as Total_Loan_Applications,
	SUM(loan_amount) as Total_Funded_Amount,
	SUM(total_payment) as Total_Amount_Received
FROM Financial_loan
GROUP BY term
ORDER BY Term

--Employee Length
SELECT
	emp_length as Employee_Length,
	COUNT(id) as Total_Loan_Applications,
	SUM(loan_amount) as Total_Funded_Amount,
	SUM(total_payment) as Total_Amount_Received
FROM Financial_loan
GROUP BY emp_length
ORDER BY emp_length

---Purpose
SELECT
	Purpose as Purpose,
	COUNT(id) as Total_Loan_Applications,
	SUM(loan_amount) as Total_Funded_Amount,
	SUM(total_payment) as Total_Amount_Received
FROM Financial_loan
GROUP BY Purpose
ORDER BY Purpose

--- Top Purpose
SELECT
	Purpose as Purpose,
	COUNT(id) as Total_Loan_Applications,
	SUM(loan_amount) as Total_Funded_Amount,
	SUM(total_payment) as Total_Amount_Received
FROM Financial_loan
GROUP BY Purpose
ORDER BY Total_Funded_Amount DESC

--Home Ownership

SELECT
	home_ownership as Home_Ownership,
	COUNT(id) as Total_Loan_Applications,
	SUM(loan_amount) as Total_Funded_Amount,
	SUM(total_payment) as Total_Amount_Received
FROM Financial_loan
GROUP BY home_ownership
ORDER BY Total_Funded_Amount DESC

