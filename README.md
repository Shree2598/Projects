
![image](https://github.com/user-attachments/assets/8cc77d05-da46-4c59-8592-3141afc16591)

# Projects-- 


# 1] HOTEL BOOKING DATA ANALYSIS PROJECT

**SQL and Power BI Hotel Booking Data Analysis Project**

- **Data Integration**: Combined hotel booking data from 2018, 2019, and 2020 using SQL UNION operations.
- **Exploratory Data Analysis (EDA)**: Conducted EDA to determine yearly revenue growth, parking lot requirements, and trends.
- **Revenue Calculation**: Generated revenue metrics based on Average Daily Rate (ADR) and stay duration.
- **Data Visualization**: Created comprehensive visualizations in Power BI to showcase trends and insights.
- **Advanced SQL Operations**: Performed data preprocessing and left joins with market segment and meal cost data.
- **Insight Generation**: Identified trends such as revenue growth and ADR changes.

 

This project aims to provide a comprehensive analysis of hotel booking data from 2018 to 2020 using SQL for data manipulation and Power BI for visualization. The goal is to identify trends, calculate revenue, and inform business decisions such as parking lot expansion and discount strategies.

## Project Structure

1. **Data Integration**:
    - Combined hotel booking data from the years 2018, 2019, and 2020.
    - Used SQL UNION operations to merge datasets.

    ```sql
    SELECT * FROM dbo.['2018$']
    UNION
    SELECT * FROM dbo.['2019$']
    UNION
    SELECT * FROM dbo.['2020$']
    ```

2. **Exploratory Data Analysis (EDA)**:
    - Answered key questions:
        - Is our hotel revenue growing yearly?
        - Should we increase our parking lot size?
        - What trends can we see in the data?

    - Created a temporary table for ease of analysis:

    ```sql
    WITH hotels AS (
        SELECT * FROM dbo.['2018$']
        UNION
        SELECT * FROM dbo.['2019$']
        UNION
        SELECT * FROM dbo.['2020$']
    )
    SELECT * FROM hotels;
    ```

3. **Revenue Calculation**:
    - Calculated revenue using Average Daily Rate (ADR) and stay duration:

    ```sql
    SELECT
        (stays_in_week_nights + stays_in_weekend_nights) * adr AS revenue
    FROM hotels;
    ```

4. **Data Preprocessing**:
    - Performed left join operations to integrate market segment and meal cost data:

    ```sql
    WITH hotels AS (
        SELECT * FROM dbo.['2018$']
        UNION
        SELECT * FROM dbo.['2019$']
        UNION
        SELECT * FROM dbo.['2020$']
    )
    SELECT * FROM hotels
    LEFT JOIN dbo.market_segment$ ON hotels.market_segment = market_segment$.market_segment
    LEFT JOIN dbo.meal_cost$ ON meal_cost$.meal = hotels.meal;
    ```

5. **Data Visualization in Power BI**:
    - Connected Power BI to the SQL Server database.
    - Used SQL query to fetch the combined and preprocessed data:

    ```sql
    WITH hotels AS (
        SELECT * FROM dbo.['2018$']
        UNION
        SELECT * FROM dbo.['2019$']
        UNION
        SELECT * FROM dbo.['2020$']
    )
    SELECT * FROM hotels
    LEFT JOIN dbo.market_segment$ ON hotels.market_segment = market_segment$.market_segment
    LEFT JOIN dbo.meal_cost$ ON meal_cost$.meal = hotels.meal;
    ```

    - Created visualizations to display key insights:
        1. Revenue trends from 2018 to 2020.
        2. Average Daily Rate (ADR) changes.
        3. Booking trends and customer stay patterns.
        4. Discount strategies impact.

## Insights and Findings

1. **Revenue Trends**:
    - Revenue increased from 2018 to 2019.
    - Revenue decreased from 2019 to 2020.

2. **Average Daily Rate (ADR)**:
    - ADR increased from $99.53 in 2019 to $104.46 in 2020.

3. **Booking Trends**:
    - Total number of nights booked decreased from 2019 to 2020.

4. **Discount Strategies**:
    - The hotel increased discount percentages from 2019 to 2020 to attract more customers.

## Conclusion

This project demonstrates the effective use of SQL and Power BI for data integration, analysis, and visualization. By combining and analyzing hotel booking data over three years, valuable insights were gained to inform strategic business decisions.
This Hotel Booking Data Analysis Project effectively utilized SQL and Power BI to integrate and analyze hotel booking data from 2018 to 2020. By combining datasets using SQL UNION operations and performing advanced SQL preprocessing, we created a comprehensive data foundation for analysis. The exploratory data analysis (EDA) provided critical insights into revenue growth, parking lot requirements, and booking trends. Calculating revenue metrics based on the Average Daily Rate (ADR) and stay duration revealed fluctuations in revenue and ADR over the years. Data visualizations in Power BI highlighted key insights such as revenue trends, ADR changes, and booking patterns, facilitating informed business decisions regarding parking lot expansion and discount strategies. Overall, this project showcases the power of SQL and Power BI in driving data-driven decisions in the hospitality industry.

## Requirements

- SQL Server
- Power BI Desktop
- Power BI DAX
- Power Query
- CSV File
- Data Warehousing 


# 2] Indian General Election 2024 Result Analysis Using SQL  

This project performs end-to-end real-time data analysis on the 2024 Indian General (Lok Sabha) Elections using SQL Server. It simulates an industry-grade SQL development environment with a multi-table relational schema, complex queries, and insight extraction based on real-world data.   


![Screenshot 2025-05-27 204547](https://github.com/user-attachments/assets/e5daf5f2-3df9-41be-adb6-bb15b86c2f3f)


# Project Objective
To extract, model, and analyze publicly available election data of the 2024 Indian General Elections using SQL Server. This includes:

Identifying vote distributions

Analyzing party and alliance performance

Breaking down state-wise and constituency-wise results

Understanding margins of victory and top-performing candidates

# Tech Stack
Database: SQL Server Management Studio (SSMS)

Language: T-SQL (Transact-SQL)

Data Source: Real-time election data scraped from Kaggle and public records

Tables Used:

Constituency_Wise_Details

Constituency_Results

Party_Wise_Results

State_Wise_Results

States

 # Process Overview
## 1. Database Setup & Schema Design
Created a new database: India_Election_Results.

Imported 5 CSV datasets using SSMS’s Flat File Import Wizard.

Normalized the schema with primary and foreign key relationships.

Designed an ER Diagram to visualize table relations (fact and dimension tables).

## 2. Schema Relationships
Fact Table: Constituency_Results

Dimension Tables: States, Party_Wise_Results, Constituency_Wise_Details, State_Wise_Results

Foreign Keys linked on:

Constituency_ID

State_ID

Party_ID

Parliament_Constituency

## Key Problem Statements Solved
1] Total Seats in the Country

2] Query to count all unique constituencies (543 seats).

3] State-wise Seat Distribution

4] Used joins to aggregate seat counts by state.

5] Seats Won by NDA & INDIA Alliances

6] Used CASE statements and hard-coded party lists to aggregate results.

7] Alliance-Wise Victory Distribution

8] Summarized which alliance dominated each state.

9] Top 10 Candidates with Highest EVM Votes

10] Margin of Victory Analysis

11] Winner vs runner-up margin in each constituency.

12] EVM vs Postal Votes Distribution

13] Drill-down into voting patterns per method.

14] Maharashtra-Specific Deep Dive

15] Custom analysis for total candidates, parties, votes, and alliances.

## Advanced SQL Concepts Used
1] JOIN, INNER JOIN, LEFT JOIN

2] GROUP BY, ORDER BY, HAVING

3] CASE WHEN logic

4] Aggregations: SUM, COUNT, DISTINCT, MAX, MIN

5] Data cleaning and transformation during import 





## 3] Title: Oracle PL/SQL Banking Core System
This Oracle SQL & PL/SQL project implements a foundational banking system. It features robust transaction processing (deposits, withdrawals, balance checks) for customer accounts, complete with automated auditing of all balance changes and safeguards against negative balances via triggers. The system also includes procedures for listing accounts by branch and a function for aggregated branch reporting.


This project serves as a practical example for understanding:

PL/SQL procedural programming (Procedures, Functions, Cursors).
Database-level integrity constraints and business logic enforcement using Triggers.
Transactional consistency and auditing in a relational database environment.
Basic data manipulation and querying in Oracle SQL. 

here are the queries that i utilised 




SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE PROCESS_ACCOUNT_OPS_PROC (
    p_account_number IN account.act_no%TYPE,
    p_operation_opt  IN NUMBER,   -- 1 for Deposit, 2 for Withdrawal, 3 for Balance check
    p_amount         IN NUMBER DEFAULT NULL -- Amount is optional, only used for deposit/withdrawal
)
IS
    v_current_balance  account.act_balance%TYPE;
    v_old_balance      account.act_balance%TYPE; -- To capture balance before update
    v_new_balance      account.act_balance%TYPE;
BEGIN
    -- Select the current balance. If account_number not found, NO_DATA_FOUND will be raised.
    SELECT act_balance INTO v_current_balance
    FROM account
    WHERE act_no = p_account_number;

    v_old_balance := v_current_balance; -- Store original balance before potential modification

    IF p_operation_opt = 1 THEN -- Deposit
        IF p_amount IS NULL OR p_amount <= 0 THEN
            DBMS_OUTPUT.PUT_LINE('------------------------------------');
            DBMS_OUTPUT.PUT_LINE('Deposit Failed: Invalid deposit amount.');
            DBMS_OUTPUT.PUT_LINE('Your current balance is Rs. ' || v_current_balance);
            DBMS_OUTPUT.PUT_LINE('------------------------------------');
            RETURN; -- Exit procedure if amount is invalid
        END IF;

        v_new_balance := v_current_balance + p_amount;
        UPDATE account
        SET act_balance = v_new_balance
        WHERE act_no = p_account_number;

        DBMS_OUTPUT.PUT_LINE('------------------------------------');
        DBMS_OUTPUT.PUT_LINE('Deposit Successful!');
        DBMS_OUTPUT.PUT_LINE('Rs. ' || p_amount || ' has been credited to your account.');
        DBMS_OUTPUT.PUT_LINE('Your final balance is Rs. ' || v_new_balance);
        DBMS_OUTPUT.PUT_LINE('------------------------------------');

    ELSIF p_operation_opt = 2 THEN -- Withdrawal
        IF p_amount IS NULL OR p_amount <= 0 THEN
            DBMS_OUTPUT.PUT_LINE('------------------------------------');
            DBMS_OUTPUT.PUT_LINE('Withdrawal Failed: Invalid withdrawal amount.');
            DBMS_OUTPUT.PUT_LINE('Your current balance is Rs. ' || v_current_balance);
            DBMS_OUTPUT.PUT_LINE('------------------------------------');
            RETURN; -- Exit procedure if amount is invalid
        END IF;

        IF (p_amount <= v_current_balance) THEN
            v_new_balance := v_current_balance - p_amount;
            UPDATE account
            SET act_balance = v_new_balance
            WHERE act_no = p_account_number;

            DBMS_OUTPUT.PUT_LINE('------------------------------------');
            DBMS_OUTPUT.PUT_LINE('Withdrawal Successful!');
            DBMS_OUTPUT.PUT_LINE('Rs. ' || p_amount || ' has been debited from your account.');
            DBMS_OUTPUT.PUT_LINE('Your final balance is Rs. ' || v_new_balance);
            DBMS_OUTPUT.PUT_LINE('------------------------------------');
        ELSE
            DBMS_OUTPUT.PUT_LINE('------------------------------------');
            DBMS_OUTPUT.PUT_LINE('Transaction Failed: Your withdrawal amount is greater than balance.');
            DBMS_OUTPUT.PUT_LINE('Your final balance is Rs. ' || v_current_balance); -- Balance remains unchanged
            DBMS_OUTPUT.PUT_LINE('------------------------------------');
        END IF;

    ELSIF p_operation_opt = 3 THEN -- Check Balance
        DBMS_OUTPUT.PUT_LINE('------------------------------------');
        DBMS_OUTPUT.PUT_LINE('Your balance is Rs. ' || v_current_balance);
        DBMS_OUTPUT.PUT_LINE('------------------------------------');

    ELSE -- Invalid option
        DBMS_OUTPUT.PUT_LINE('------------------------------------');
        DBMS_OUTPUT.PUT_LINE('Invalid Option: Please enter 1 for Deposit, 2 for Withdrawal, or 3 for Balance check.');
        DBMS_OUTPUT.PUT_LINE('Your current balance for account ' || p_account_number || ' is Rs. ' || v_current_balance);
        DBMS_OUTPUT.PUT_LINE('------------------------------------');
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('------------------------------------');
        DBMS_OUTPUT.PUT_LINE('Error: Account number ' || p_account_number || ' not found.');
        DBMS_OUTPUT.PUT_LINE('Transaction Aborted.');
        DBMS_OUTPUT.PUT_LINE('------------------------------------');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('------------------------------------');
        DBMS_OUTPUT.PUT_LINE('An unexpected error occurred in PROCESS_ACCOUNT_OPS_PROC: ' || SQLERRM);
        DBMS_OUTPUT.PUT_LINE('------------------------------------');
END;


---------------------------------------------------------------------------------------------------------
CREATE OR REPLACE PROCEDURE LIST_BRANCH_ACCOUNTS_PROC (
    p_branch_name IN account_branch.act_branch%TYPE
)
IS
    -- Define an explicit cursor to select account details for a given branch
    CURSOR c_branch_accounts IS
        SELECT
            a.act_no,
            a.act_name,
            a.act_balance
        FROM
            account a
        JOIN
            account_branch ab ON a.act_no = ab.act_no
        WHERE
            ab.act_branch = p_branch_name
        ORDER BY
            a.act_name;

    v_any_accounts_found BOOLEAN := FALSE;
BEGIN
    DBMS_OUTPUT.PUT_LINE('------------------------------------');
    DBMS_OUTPUT.PUT_LINE('Accounts in Branch: ' || p_branch_name);
    DBMS_OUTPUT.PUT_LINE('------------------------------------');

    FOR rec_account IN c_branch_accounts LOOP
        DBMS_OUTPUT.PUT_LINE('Account No: ' || rec_account.act_no ||
                             ', Name: ' || rec_account.act_name ||
                             ', Balance: Rs. ' || rec_account.act_balance);
        v_any_accounts_found := TRUE;
    END LOOP;

    IF NOT v_any_accounts_found THEN
        DBMS_OUTPUT.PUT_LINE('No accounts found for the branch: ' || p_branch_name || '.');
    END IF;
    DBMS_OUTPUT.PUT_LINE('------------------------------------');

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('------------------------------------');
        DBMS_OUTPUT.PUT_LINE('An error occurred in LIST_BRANCH_ACCOUNTS_PROC: ' || SQLERRM);
        DBMS_OUTPUT.PUT_LINE('------------------------------------');
END;

-----------------------------------------------------------------------------------------------------------
CREATE TABLE bank_transaction_log (
    log_id          NUMBER PRIMARY KEY, -- Populated by sequence and trigger
    act_no          VARCHAR2(10) NOT NULL,
    old_balance     NUMBER(10),
    new_balance     NUMBER(10),
    action_type     VARCHAR2(20) NOT NULL, -- e.g., 'DEPOSIT', 'WITHDRAWAL', 'INITIAL'
    action_date     DATE DEFAULT SYSDATE NOT NULL,
    performed_by    VARCHAR2(100) DEFAULT USER NOT NULL
);

-----------------------------------------------------------------------------------------------
-- Sequence for bank_transaction_log
CREATE SEQUENCE bank_trans_log_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

-- Trigger to populate log_id from sequence BEFORE INSERT on bank_transaction_log
CREATE OR REPLACE TRIGGER TRG_BANK_TRANS_LOG_SEQ
BEFORE INSERT ON bank_transaction_log
FOR EACH ROW
BEGIN
    IF :NEW.log_id IS NULL THEN
        SELECT bank_trans_log_seq.NEXTVAL INTO :NEW.log_id FROM DUAL;
    END IF;
END;
/



CREATE OR REPLACE TRIGGER TRG_ACCOUNT_BALANCE_CHANGE
AFTER UPDATE OF act_balance ON account
FOR EACH ROW
DECLARE
    v_action_type VARCHAR2(20);
BEGIN
    IF :NEW.act_balance > :OLD.act_balance THEN
        v_action_type := 'DEPOSIT';
    ELSIF :NEW.act_balance < :OLD.act_balance THEN
        v_action_type := 'WITHDRAWAL';
    ELSE
        -- No actual balance change, perhaps some other column was updated
        RETURN;
    END IF;

    -- Insert into the bank_transaction_log table
    INSERT INTO bank_transaction_log (act_no, old_balance, new_balance, action_type, performed_by)
    VALUES (:NEW.act_no, :OLD.act_balance, :NEW.act_balance, v_action_type, USER);

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error in TRG_ACCOUNT_BALANCE_CHANGE: ' || SQLERRM);
END;
--------------------------------------------------------------------------------------------------------
---function--------

CREATE OR REPLACE FUNCTION GET_BRANCH_ACCOUNT_COUNT_FUNC (
    p_branch_name IN account_branch.act_branch%TYPE
)
RETURN NUMBER
IS
    v_account_count NUMBER := 0;
BEGIN
    SELECT COUNT(a.act_no)
    INTO v_account_count
    FROM account a
    JOIN account_branch ab ON a.act_no = ab.act_no
    WHERE ab.act_branch = p_branch_name;

    RETURN v_account_count;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error in GET_BRANCH_ACCOUNT_COUNT_FUNC: ' || SQLERRM);
        RETURN -1; -- Return -1 to indicate an error
END;


---------------------------------------------------------------------------------

EXEC PROCESS_ACCOUNT_OPS_PROC('19DCS011', 1, 20000);
COMMIT; 
SELECT * FROM account where act_no = '19DCS011';
SELECT * FROM account_branch ;
SELECT * FROM account_city ;

SELECT * FROM bank_transaction_log ; -- Check audit log

EXEC LIST_BRANCH_ACCOUNTS_PROC('Mumbai'); 

-----------------------------------------------------------------------------------

