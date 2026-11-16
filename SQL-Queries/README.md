# SQL Queries – Superstore Analysis

This folder contains the MySQL script used for data cleaning and preparation of the Superstore dataset.

## SQL Scripts

| File | Description |
|---|---|
| `01-Data-Cleaning.sql` | Converts order and shipping dates into DATE data types, calculates shipping duration using DATEDIFF(), and calculates customer order counts using a CTE and LEFT JOIN. |

## SQL Skills Demonstrated

- Date conversion using STR_TO_DATE().
- Date calculations using DATEDIFF().
- Common Table Expressions (CTEs).
- Aggregate functions using COUNT(DISTINCT).
- Table joins using LEFT JOIN.
- Data preparation for Power BI analysis.

## Next Step

The cleaned dataset was used in Power BI to perform sales and shipping performance analysis, develop DAX measures, and create interactive dashboards.
