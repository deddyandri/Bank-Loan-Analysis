# Bank-Loan-Analysis

## Problem Statement

### DASHBOARD 1: SUMMARY ###

Key Performance Indicators (KPIs) Requirements:
1. ***Total Loan Applications*** :
   We need to calculate the total number of loan applications received during a specified period.
   Additionally, it is essential to monitor the Month-to-Date (MTD) Loan Applications and track changes Month-over-Month (MoM).
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

10. Good Loan v Bad Loan KPI’s
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
we would find out KPI number 1 ***Total Loan Applications***

```sql
SELECT 
	COUNT(id)  Total_Loan_application
FROM bank_loan_data 
```
the outcome are

![image](https://github.com/user-attachments/assets/57f6f012-ccc2-459b-a08c-09aded373b50)

now we would count the Month-to-Date (MTD) Loan Applications


