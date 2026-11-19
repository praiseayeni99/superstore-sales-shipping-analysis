# Shipping Performance Analysis

## 1. Overview

This section analyzes shipping performance using the Superstore dataset. The objective was to evaluate shipping duration, compare shipping modes, and identify differences in shipping duration across months, regions, and cities.

## 2. Key Performance Indicators (KPIs)

- **Average Shipping Days:** 3.96 days
- **Orders Shipped:** 4,916
- **Fastest Shipping Mode:** Same Day
- **Slowest Shipping Mode:** Standard Class

## 3. Shipping Performance by Shipping Mode

The analysis compared average shipping duration across four shipping modes.

| Shipping Mode | Average Shipping Days |
|---|---:|
| Standard Class | 5.0 |
| Second Class | 3.2 |
| First Class | 2.2 |
| Same Day | 0.0 |

Standard Class recorded the longest average shipping duration at 5.0 days, while Same Day recorded the shortest at 0.0 days.

## 4. Monthly Shipping Performance

Monthly analysis showed variations in average shipping duration throughout the year.

- March recorded the lowest average shipping duration at 3.68 days.
- January recorded 4.21 days.
- April increased to 4.16 days.
- August recorded 4.11 days.
- December ended at 3.99 days.

## 5. Shipping Performance by Region

| Region | Average Shipping Days |
|---|---:|
| Central | 4.1 |
| South | 4.0 |
| West | 3.9 |
| East | 3.9 |

The Central region recorded the highest average shipping duration at 4.1 days, while the West and East regions recorded the lowest at 3.9 days.

## 6. Business Insights

1. Standard Class had the longest average shipping duration, indicating an opportunity to review its shipping process.
2. Same Day recorded the shortest average shipping duration at 0.0 days.
3. Shipping duration varied across months, with March recording the lowest average.
4. The Central region had the highest average shipping duration among the four regions.

## 7. Business Recommendations

1. Review Standard Class shipping processes to identify opportunities to reduce shipping duration.
2. Monitor shipping performance monthly to identify periods of increased Order-to-ship duration.
3. Investigate regional and city-level shipping differences to identify potential delivery challenges.
4. Maintain efficient Same Day shipping operations while monitoring service consistency.

## 8. Tools Used

- **MySQL:** Date conversion, shipping duration calculation using DATEDIFF(), and customer order count calculation.
- **Power BI:** Data analysis, DAX measures, KPI development, visualizations, and interactive dashboard creation.

## 9. Conclusion

The shipping analysis evaluated Order-to-ship duration across shipping modes, months, regions, and cities. The findings highlight differences in shipping duration and provide opportunities to improve shipping efficiency and monitor shipping operations.
