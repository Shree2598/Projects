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


![image](https://github.com/user-attachments/assets/1b7c60d7-32d7-490e-b6e8-65abf6c7f7d9)

