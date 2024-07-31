# Projects-- 

# 1] LOCKHEED-MARTIN-STOCK-PRICE-PREDICTION

Informative and impactful:

LMT Prediction with Surgical Precision: Our model pinpoints price within a narrow range, opening doors for data-driven investment strategies. Validating Market Mastery: Successful LMT prediction showcases the power of our model, unlocking valuable insights for the future. Future-oriented:

Beyond Bullseye: LMT prediction paves the way for next-level market forecasting, influencing crucial investment decisions with data-driven confidence. Evolution of Stock Insight: This LMT success marks a milestone, propelling our model towards unlocking even greater predictive power and market wisdom.

# 2] ADIDAS SALES DASHBOARD IN EXCEL

**Interactive Sales Dashboard for Adidas**
- Developed an advanced Excel dashboard to visualize and analyze Adidas sales data dynamically.
- Utilized pivot tables and various chart types (line, map, bar, and donut charts) for comprehensive data representation.
- Implemented slicers for year, product, and region to enable real-time data filtering and interactivity.
- Enhanced visual appeal and usability with consistent formatting, color schemes, and intuitive layout design.
- Enabled data-driven decision-making by providing clear insights into sales trends, regional performance, and sales methods.
- Demonstrated strong skills in data analysis, Excel functionalities, and dashboard creation.


**Adidas Sales Dashboard in Excel**

**Overview:**
This project demonstrates the creation of a dynamic and interactive sales dashboard for Adidas using Microsoft Excel. The dashboard visualizes sales data through various charts and enables real-time filtering with slicers for enhanced data analysis.

**Features:**
- **Data Visualization:** Line charts, map charts, bar charts, and donut charts to represent sales trends, regional performance, sales by retailer, and sales methods.
- **Dynamic Filtering:** Slicers for year, product, and region allowing users to interactively filter data and update charts in real time.
- **Enhanced Formatting:** Consistent color schemes, formatting, and layout design for a professional and intuitive user experience.
- **Pivot Tables:** Used pivot tables for data summarization and chart creation, ensuring accurate and comprehensive data representation.

**Steps Included:**
1. **Data Preparation:** Cleaned and organized raw sales data for analysis.
2. **Pivot Table Creation:** Summarized sales data by period, region, retailer, and method.
3. **Chart Generation:** Developed various charts to visualize the summarized data.
4. **Dashboard Design:** Designed the dashboard layout, added shapes, text boxes, and background images for a polished look.
5. **Slicer Integration:** Implemented slicers to allow dynamic filtering and linked them to all relevant charts and pivot tables.
6. **Final Touches:** Refined the slicers, removed unnecessary elements, and ensured all components were responsive to user input.

**Usage:**
- **Business Analysis:** Provides insights into sales performance across different periods, regions, and methods.
- **Decision Making:** Helps stakeholders make data-driven decisions based on clear and interactive visualizations.
- **Reporting:** Offers a comprehensive and visually appealing way to present sales data in reports and presentations.


# 3] PIZZA-ANALYSIS-DASHBOARD-POWER-BI -

This project involved analyzing a year's worth of sales data from a fictitious pizza place using Power BI. The data included details on orders, pizzas (type, size, quantity, price, ingredients), and timestamps.
The analysis aimed to:
Understand customer behavior: Determine the number of customers per day, identify peak hours, and measure average order size. Identify bestsellers and sales trends: Analyze pizza order frequency and total revenue to discover the most popular pizzas and track seasonality in sales. Optimize the menu and promotions: Leverage data insights to identify underperforming pizzas and suggest potential menu changes or promotions based on customer preferences. The project utilized DAX (Data Analysis Expressions) within Power BI to create various calculations.

Distinct order count: Count the number of unique orders each day. Total sales: Calculate the overall revenue generated throughout the year. Average pizzas per order: Divide the total quantity of pizzas by the total number of orders. Peak hours: Categorize orders into time slots based on timestamps to identify peak hours for sales. This project demonstrates proficiency in data analysis using Power BI, DAX calculations, and business intelligence concepts. It showcases the ability to extract valuable insights from data to inform decision-making and improve business operations.
Implemented interactive filters for exploration by pizza type, size, and order date.
Employed charts and graphs to reveal trends in sales, customer preferences, and revenue generation.

This project showcases expertise in data analysis, data visualization using Power BI, and creating informative dashboards. 

# 3] HOTEL BOOKING DATA ANALYSIS PROJECT

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



