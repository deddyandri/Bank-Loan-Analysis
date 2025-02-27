# Bank-Loan-Analysis

## Problem Statement

### DASHBOARD 1: SUMMARY ###

Key Performance Indicators (KPIs) Requirements:
1. ***Total Loan Applications*** :
   We need to calculate the total number of loan applications received during a specified period.
   Additionally, it is essential to monitor the Month-to-Date (MTD) Loan Applications.
3. ***Total Funded Amount*** :
   Understanding the total amount of funds disbursed as loans is crucial.
   We also want to keep an eye on the MTD Total Funded Amount and analyse the Month-over-Month (MoM) changes in this metric.
5. ***Total Amount Received*** :
   Tracking the total amount received from borrowers is essential for assessing the bank's cash flow and loan repayment.
   We should analyse the Month-to-Date (MTD) Total Amount Received and observe the Month-over-Month (MoM) changes.
7. ***Average Interest Rate***:
   Calculating the average interest rate across all loans, MTD, and monitoring the Month-over-Month (MoM) variations
   in interest rates will provide insights into our lending portfolio's overall cost.
9. ***Average Debt-to-Income Ratio (DTI)*** :
   Evaluating the average DTI for our borrowers helps us gauge their financial health.
   We need to compute the average DTI for all loans, MTD, and track Month-over-Month (MoM) fluctuations.

10. ***Good Loan v Bad Loan KPI’s***
    **Good Loan:**
    * Good Loan Application Percentage
    * Good Loan Applications
    * Good Loan Funded Amount
    * Good Loan Total Received Amount

    **Bad Loan :**
    * Bad Loan Application Percentage
    * Bad Loan Applications
    * Bad Loan Funded Amount
    * Bad Loan Total Received Amount

### ***Loan Status Grid View***
In order to gain a comprehensive overview of our lending operations and monitor the performance of loans, 
we aim to create a grid view report categorized by 'Loan Status.’ By providing insights into metrics 
such as **'Total Loan Applications,'** **'Total Funded Amount,'** **'Total Amount Received,'** 
**'Month-to-Date (MTD) Funded Amount,'** **'MTD Amount Received,'** **'Average Interest Rate,'** 
and **'Average Debt-to-Income Ratio (DTI),'** 
this grid view will empower us to make data-driven decisions and assess the health of our loan portfolio.

---

### DASHBOARD 2: OVERVIEW ###
CHARTS
1. ***Monthly Trends by Issue Date (Line Chart)***:  To identify seasonality and long-term trends in lending activities
2. ***Regional Analysis by State (Filled Map)***: To identify regions with significant lending activity and assess regional disparities
3. ***Loan Term Analysis (Donut Chart)***: To allow the client to understand the distribution of loans across various term lengths.
4. ***Employee Length Analysis (Bar Chart)***: How lending metrics are distributed among borrowers with different employment lengths,
   helping us assess the impact of employment history on loan applications.
6. ***Loan Purpose Breakdown (Bar Chart)***: Will provide a visual breakdown of loan metrics based on the stated purposes of loans,
   aiding in the understanding of the primary reasons borrowers seek financing.
8. ***Home Ownership Analysis (Tree Map)***: For a hierarchical view of how home ownership impacts loan applications and disbursements.

### Metrics to be shown : 
**'Total Loan Applications,'** **'Total Funded Amount,'** and **'Total Amount Received'**

---

### DASHBOARD 3: DETAILS ###

GRID
Need for a comprehensive 'Details Dashboard' that provides a consolidated view of all the essential information within our loan data. 
This Details Dashboard aims to offer a holistic snapshot of key loan-related metrics and data points, enabling users to access critical 
information efficiently.

Objective:
The primary objective of the Details Dashboard is to provide a comprehensive and user-friendly interface for accessing vital loan data. 
It will serve as a one-stop solution for users seeking detailed insights into our loan portfolio, borrower profiles, and loan performance.

---
## Steps Process

Firstly we have to check the file, data type whether the data type is appropriate 

especially those related to dates and numbers

### Create Database

![image](https://github.com/user-attachments/assets/627d6144-34a8-46ea-899c-da637d9adeac)

we can name it with Bank Loan DB then click OK

![image](https://github.com/user-attachments/assets/d5b3ed99-c1a9-44bf-9ecd-b30e55b58151)

we can see Bank Loan DB has been created

![image](https://github.com/user-attachments/assets/6852e8e2-e4ba-48cc-8005-4ba7dc5c9501)

### Import files

right click on Bank Loan DB then task, and import flat file

<image src="https://github.com/user-attachments/assets/ea7155c8-3c31-4ec0-8409-202081d26660" width=50% heigh=50% />

There will be import flat file windows, in the specify input file section, 

browse the location of the csv file that we will import.

<image src="https://github.com/user-attachments/assets/6e808ff6-f210-45b2-95d9-981f2bc3b120" width=50% heigh=50% />

the file name is financial_loan.csv 

![image](https://github.com/user-attachments/assets/6ebf9bef-0520-4ad7-b41d-39c8485ad089)

new table name automatically names it financial_loan

<image src="https://github.com/user-attachments/assets/90165032-ac10-4a18-b6d1-3e7bb701f02e" width=60% heigh=60% />

we change it with bank_loan_data

<image src="https://github.com/user-attachments/assets/7b8e0129-810e-4661-a99c-d8905ff103e6" width=60% heigh=60% />

on the preview data, we can see a query that similar with csv data , then click next

<image src="https://github.com/user-attachments/assets/8a27e671-4d03-4e6a-8758-e292ff25d6c2" width=60% heigh=60% />

on the modify columns, we will add a primary key and change some data type

<image src="https://github.com/user-attachments/assets/b6838619-fb72-4c46-986f-1f166957ef5f" width=60% heigh=60% />

we make the id column the primary key, and nvarchar is changed to varchar, then click next and finish

![image](https://github.com/user-attachments/assets/67a7f3e3-9dfd-4f7a-b814-d5c97263cd0e)

### Error Message

<image src="https://github.com/user-attachments/assets/17973bc1-923d-49fc-9c98-0fbd7b14e7db" width=60% heigh=60% />

click on the error sign 

the message says 

![image](https://github.com/user-attachments/assets/5ff5d168-d96d-42e3-9611-aed10e8bf84e)

then we go back to modify column , then find total_payment and loan_amount

![image](https://github.com/user-attachments/assets/66c0893a-aad1-4866-9e41-a90b0afab302)

we change data type from smallint into int, then click next

![image](https://github.com/user-attachments/assets/31fc2397-6387-4fd1-908a-22e79fde2717)

there is still an error says 

![image](https://github.com/user-attachments/assets/307452bb-fe51-4ac0-89f5-c16082cbe0a6)

we will check by open CSV file, to find what column that consist of more than 50 character
we see that column emp_title shows over 50 characters

<image src="https://github.com/user-attachments/assets/6c2a7920-80a7-4931-a62c-0886ba1cb774" width=60% heigh=60% />

chnge Data type of Column name "emp_title" into varchar(100) type manually or varchar(MAX)

![image](https://github.com/user-attachments/assets/4cf86c5b-1970-4528-89f7-95c6f399ad25)

dont forget to uncheck the bottom of preview data

![image](https://github.com/user-attachments/assets/1b4e7219-e8d0-4291-ba92-a1e631c21cf8)

then we can click next until finish and close

we start with blank query, then click on New Query

![image](https://github.com/user-attachments/assets/ba20cbda-2bf8-408a-b9d3-46fb8d2264bb)

type 

```sql
SELECT * FROM bank_loan_data
```
we got

![image](https://github.com/user-attachments/assets/e6d9b42f-8a7a-43da-a459-e091be5ae537)

---
## Bank Requirement : 
1 Total Loan Applications

```sql
-- 1. Total Loan Application
SELECT 
	COUNT(id)  Total_Loan_application
FROM bank_loan_data 
```
the outcome are

![image](https://github.com/user-attachments/assets/57f6f012-ccc2-459b-a08c-09aded373b50)

1a. Month-to-Date (MTD) Loan Applications

```sql
-- 1a. MTD Loan Application

SELECT COUNT(id) as MTD_Total_Application FROM Financial_loan
WHERE MONTH(issue_date) = 12
```
we got

![image](https://github.com/user-attachments/assets/2306a79b-0158-492c-bd06-06633c896502)

2. Total Funded Amount
   
```sql
-- 2. Total Funded Amount

SELECT 
	SUM(loan_amount) as Total_loan_amount
	from Financial_loan
```
result

![image](https://github.com/user-attachments/assets/a38f8e17-7611-4bd2-9a65-37bcdb71a7b9)

3. Total Amount Received

```sql
-- 3. Total Amount Received
SELECT
	SUM(total_payment) as Total_loan_received
FROM
	Financial_loan
```
result

![image](https://github.com/user-attachments/assets/c0226b8b-cea7-4824-b75b-697f3409222d)

now we want to know the average interset rate

we use coulumn

![image](https://github.com/user-attachments/assets/6c6d80ca-6215-48f6-8613-1174eed0998a)

4.  Average Interest Rate
```sql
-- 4. Average Interest Rate
SELECT
	ROUND(AVG(int_rate), 4) as Average_int_rate
FROM
	Financial_loan
```
the result is

![image](https://github.com/user-attachments/assets/52b62cb4-4a76-457c-92d3-4723d4aec678)

we need it in percentage form

```sql
SELECT
	ROUND(AVG(int_rate), 4) * 100 as Average_int_rate
FROM
	Financial_loan
```

end result is

![image](https://github.com/user-attachments/assets/a8300e27-0c7e-474f-bce9-59b35ef0e107)


5. Average Debt to Income Ratio
A debt-to-income (DTI) ratio is a percentage that measures how much of your monthly income goes toward debt.
It's calculated by dividing your total monthly debt by your gross monthly income

Purpose: DTI measures the borrower's debt burden relative to income. It gauges the borrower's capacity to take on additional debt.
Use for Banks: Banks use DTI to assess a borrower's ability to handle loan payments and make responsible lending decisions.

from the financial loan table, the debt to income ratio column is already available, 
so we don't need to divide montly debt by gross montly income.
the column name is dti

![image](https://github.com/user-attachments/assets/debcad40-9ae8-4b29-93a6-84440629a693)

```sql
-- 5. Average Debt to Income Ratio
SELECT 
	AVG(dti)*100 as Average_DTI
FROM Financial_loan
```

the result :

![image](https://github.com/user-attachments/assets/449f76aa-0cdb-4f22-a0fd-ab28ac05a11d)

---
# Good Loan Issued

1. Good Loan Percentage

first, we will review the financial loan table, 

there is a column called loan_status that will give the results of 

the Good loan and Bad loan values for the Good vs Bad Loan column.

![image](https://github.com/user-attachments/assets/a051d694-c5ba-4145-a0eb-176ee063c39f)

Good loan categories are those with Fully paid and Current status.

while the Bad Loan category is Charged Off.

![image](https://github.com/user-attachments/assets/f88785d5-2783-41fb-bc3c-64ff5c3c3c21)

we first find how many are loan_status with fully paid and current 

```sql
SELECT
	COUNT(id) from Financial_loan
	WHERE loan_status ='Fully Paid' OR loan_status = 'Current'
```
the result is 33.243

![image](https://github.com/user-attachments/assets/73bb0703-4d8e-458b-aed2-dc0e01bacd71)

then find total number of loan
```sql
COUNT(id) from Financial_loan
```
we got 38.576 

![image](https://github.com/user-attachments/assets/05a14bf7-6209-4688-84db-5fbf0f6b487f)

now we can divide all using subquery method, and name it as Good Loan Percentage

```sql
SELECT
	(SELECT
	COUNT(id) from Financial_loan
	WHERE loan_status ='Fully Paid' OR loan_status = 'Current')*100.
	/
	(SELECT
	COUNT(id) from Financial_loan)
as Good_Loan_Percentage
```
the final result is 86.17 %

2. Good Loan Application

as we have made before

```sql
SELECT
COUNT(id) as Good_Loan_Applications
FROM
Financial_loan
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'
```
we get the same result as above

![image](https://github.com/user-attachments/assets/e230d0dd-1eb9-44b0-b5ef-2010d8b2f18b)


3. Good Loan Funded Amount

Loan funded means, loans provided by banks to customers

from the given file there are loan_amount and total_payment columns

![image](https://github.com/user-attachments/assets/b91dd28a-5ec1-470d-b4be-86981080c5c4)

A loan amount is the total amount of money customers borrow, 

while total payments is the total amount of money customers will pay back over the life of the loan

we will use loan_amount column just for Good Loan Status

```sql
-- 3. Good Loan Funded Amount
SELECT
	SUM(loan_amount) as Good_Loan_Funded_amount
	FROM
Financial_loan
	WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'
```
the result is $ 370.224.850

![image](https://github.com/user-attachments/assets/4864df1a-3509-4e63-94e6-6b3da87095b9)

4. Good Loan Amount Received
```sql
-- 4. Good Loan Amount Received
SELECT
	SUM(total_payment) as Good_Loan_amount_received
FROM
	Financial_loan
WHERE 
	loan_status= 'Fully Paid' OR loan_status = 'Current'
```
the result is $ 435.786.170

![image](https://github.com/user-attachments/assets/102020f4-306b-4abd-b211-63a2b1ee8fdd)


# Bad Loan Issued

similar with above query, just change loan_status into "Charge Off"

1. Bad Loan Percentage
   
```sql

-- 1. Bad Loan Percentage
SELECT
	(SELECT
	COUNT(id) from Financial_loan
	WHERE loan_status ='Charged Off')*100.
	/
	(SELECT
	COUNT(id) from Financial_loan)
as Bad_Loan_Percentage
```

the result is 13,8 %

![image](https://github.com/user-attachments/assets/b2f03d50-17c3-47db-b33c-5cd173eec369)

2. Bad Loan Application

```sql
-- 2. Bad Loan Applications
SELECT
	COUNT(id) as Bad_Loan_Applications
FROM
	Financial_loan
WHERE
	loan_status ='Charged Off'
```

results is 5.333 bad loan application

![image](https://github.com/user-attachments/assets/0418b92c-75f7-4450-a6de-add5931acf75)

3. Bad Loan Funded Amount

```sql
-- 3. Bad Loan Funded Amount
SELECT
	SUM(loan_amount) as Bad_loan_funded_amount
FROM
	Financial_loan
WHERE
	loan_status ='Charged Off'
```

the result is $ 65.532.225

![image](https://github.com/user-attachments/assets/8af9ee5a-eb1c-42a4-a0aa-75be19d31421)

4. Bad Loan Amount Received

```sql
-- 4. Bad Loan Amount Received
SELECT
	SUM(total_payment) as Bad_Loan_amount_received
FROM
	Financial_loan
WHERE
	loan_status = 'Charged Off'
```

the result is $ 37.284.763

![image](https://github.com/user-attachments/assets/0d7aad40-e991-43d9-8ef4-b7cc78fbf3f8)

---
## Loan Status

```sql
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
```

the result, we will use it as Visualization on PowerBI Desktop

![image](https://github.com/user-attachments/assets/1ecafd09-8ef4-445e-9bca-bf67b788011d)

---
## Bank Loan Report

### MONTH 
to find Total Funded Amount and Total Amount Received for every month

we will use column

id, issue_date , loan_amount and total_payment 

```sql
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
```

the result are

![image](https://github.com/user-attachments/assets/6df0b1fc-a5a8-468c-926d-4ca5b9cb34cf)

### STATE

we will look for any State related to this bank loan

we will use id, addres_state, loan_amount and total_payment column

```sql
-- STATE

SELECT
address_state as State,
	COUNT(id) as Total_Loan_Applications,
	SUM(loan_amount) as Total_Funded_Amount,
	SUM(total_payment) as Total_Amount_Received
FROM Financial_loan
GROUP BY address_state
ORDER BY address_state
```

we got

![image](https://github.com/user-attachments/assets/7fd775cf-c600-4917-8675-571e98dde999)

we would list from the biggest loan amount received to the lowest

```sql
-- order from biggest to lower

SELECT
address_state as State,
	COUNT(id) as Total_Loan_Applications,
	SUM(loan_amount) as Total_Funded_Amount,
	SUM(total_payment) as Total_Amount_Received
FROM Financial_loan
GROUP BY address_state
ORDER BY Total_Amount_Received DESC
```
the result are CA (California), NY(New York) and TX(Texas) are the biggest Loan State , and also the biggest Total loan Application

![image](https://github.com/user-attachments/assets/b4b64582-e865-4453-b6d8-a993d2e90762)

### Term

Term defines the duration of the loan in months. It sets the repayment period.
Banks use the term to structure loan agreements, calculate interest payments, and manage loan maturities.

we will know how much term this loan is given

```sql
--TERM
SELECT
term as Term,
	COUNT(id) as Total_Loan_Applications,
	SUM(loan_amount) as Total_Funded_Amount,
	SUM(total_payment) as Total_Amount_Received
FROM Financial_loan
GROUP BY term
ORDER BY Term
```

the resuls :

![image](https://github.com/user-attachments/assets/eee7e807-6d2d-439b-859e-10eaf207c9f4)

### Employee Length

next, we will find employee length
***Purpose***: Employee Length provides insights into the borrower's employment stability. 

Longer employment durations may indicate greater job security.

***Use for Banks***: Banks consider employment length when assessing a borrower's ability to repay. 

Stable employment often translates to a lower default risk.

we use emp_length column

```sql
--Employee Length
SELECT
	emp_length as Employee_Length,
	COUNT(id) as Total_Loan_Applications,
		SUM(loan_amount) as Total_Funded_Amount,
		SUM(total_payment) as Total_Amount_Received
FROM Financial_loan
GROUP BY emp_length
ORDER BY emp_length
```

the result are

![image](https://github.com/user-attachments/assets/573a05a0-e111-40a1-8d69-28163341039b)

### Purpose

```sql
---Purpose
SELECT
	Purpose as Purpose,
	COUNT(id) as Total_Loan_Applications,
	SUM(loan_amount) as Total_Funded_Amount,
	SUM(total_payment) as Total_Amount_Received
FROM Financial_loan
GROUP BY Purpose
ORDER BY Purpose
```
we got

![image](https://github.com/user-attachments/assets/f58279ba-1530-4486-b774-3d2e962f777e)

then we will find the top purpose based on Total Funded amount

```sql
--- Top Purpose
SELECT
	Purpose as Purpose,
	COUNT(id) as Total_Loan_Applications,
	SUM(loan_amount) as Total_Funded_Amount,
	SUM(total_payment) as Total_Amount_Received
FROM Financial_loan
GROUP BY Purpose
ORDER BY Total_Funded_Amount DESC
```
We know that debt consolidation, credit cards, and home improvement 

are the biggest purpose of borrowers.

![image](https://github.com/user-attachments/assets/9543868d-2ae2-43ae-8a61-cccc5d83b0ad)

### Home Ownership

in the csv file, there is a column named home_ownership

![image](https://github.com/user-attachments/assets/ca9527c8-088c-4bfe-b24d-3db6b0d65045)

Home Ownership indicates the borrower's housing status. It offers insights into financial stability.

Banks use this field to assess collateral availability and borrower stability. Homeowners may have lower default rates

--Home Ownership
```sql
SELECT
	home_ownership as Home_Ownership,
	COUNT(id) as Total_Loan_Applications,
	SUM(loan_amount) as Total_Funded_Amount,
	SUM(total_payment) as Total_Amount_Received
FROM Financial_loan
GROUP BY home_ownership
ORDER BY home_ownership
```

the result are 

![image](https://github.com/user-attachments/assets/035303c9-360b-4955-b6ff-2576a70204c0)




