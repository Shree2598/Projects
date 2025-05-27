
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


