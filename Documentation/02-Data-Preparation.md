# Data Preparation – Superstore Sales & Shipping Analysis

## 1. Data Preparation Overview

Data preparation was carried out using Microsoft Excel and MySQL to organize the dataset and prepare it for analysis in Power BI.

## 2. Microsoft Excel

The following task was performed in Excel:

- Rearranged dataset columns to improve the organization and readability of the data.

## 3. MySQL Data Preparation

MySQL was used to create a cleaned dataset named `superstore_cleaned`.

### 3.1 Date Data Type Conversion

Converted the `order_date` and `ship_date` columns from text into DATE data types using `STR_TO_DATE()`.

### 3.2 Shipping Days Calculation

Calculated the number of days between the order date and shipping date using `DATEDIFF()`.

```sql
DATEDIFF(
    STR_TO_DATE(s.ship_date, '%d/%m/%Y'),
    STR_TO_DATE(s.order_date, '%d/%m/%Y')
) AS shipping_days
```

### 3.3 Customer Order Count

Calculated the total number of distinct orders placed by each customer using:

- `COUNT(DISTINCT order_id)`
- Common Table Expression (CTE)
- `LEFT JOIN`

The resulting `customer_order_count` was added to the cleaned dataset.

## 4. Cleaned Dataset

The resulting `superstore_cleaned` table contains the original dataset fields, converted date columns, shipping duration, and customer order count.

## 5. Preparation for Power BI

The cleaned dataset was imported into Power BI for further analysis.

Power BI was used for:
- Sales performance analysis.
- Shipping performance analysis.
- DAX calculations and measures.
- Dashboard development and visualizations.

## 6. SQL Skills Demonstrated

- Date conversion using `STR_TO_DATE()`.
- Date calculations using `DATEDIFF()`.
- Aggregation using `COUNT(DISTINCT)`.
- Common Table Expressions (CTEs).
- Table joins using `LEFT JOIN`.
- Creating a cleaned dataset using `CREATE TABLE AS SELECT`.
- Table joins using `LEFT JOIN`.
- Creating a cleaned dataset using `CREATE TABLE AS SELECT`.
