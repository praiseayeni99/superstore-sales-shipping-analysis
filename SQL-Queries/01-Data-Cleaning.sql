
-- =====================================================
-- PROJECT: SUPERSTORE SALES AND SHIPPING ANALYSIS
-- TASK: DATA CLEANING AND PREPARATION
-- DATABASE: superstore
-- =====================================================

-- Create a cleaned Superstore table with calculated
-- shipping days and customer order count.

CREATE TABLE superstore.superstore_cleaned AS

-- Calculate the total number of distinct orders per customer
WITH customer_summary AS (
    SELECT
        customer_id,
        COUNT(DISTINCT order_id) AS customer_order_count
    FROM superstore.superstore
    GROUP BY customer_id
)

SELECT
    -- Order information
    s.order_id,
    STR_TO_DATE(s.order_date, '%d/%m/%Y') AS order_date,

    s.sales,
    s.customer_id,
    s.customer_name,

    -- Shipping information
    STR_TO_DATE(s.ship_date, '%d/%m/%Y') AS ship_date,
    s.ship_mode,

    -- Customer and location information
    s.segment,
    s.country,
    s.city,
    s.state,
    s.postal_code,
    s.region,

    -- Product information
    s.product_id,
    s.category,
    s.sub_category,
    s.product_name,

    -- Calculate shipping duration in days
    DATEDIFF(
        STR_TO_DATE(s.ship_date, '%d/%m/%Y'),
        STR_TO_DATE(s.order_date, '%d/%m/%Y')
    ) AS shipping_days,

    -- Add customer order count
    cs.customer_order_count

FROM superstore.superstore AS s

LEFT JOIN customer_summary AS cs
    ON s.customer_id = cs.customer_id;
