# Fast Food Sales Analysis Dashboard

## Overview
This project presents an end-to-end data analysis workflow for a fast-food restaurant dataset.  
It combines **SQL** for data cleaning and preprocessing with **Power BI** for building interactive dashboards that provide actionable insights for business decision-making.  

---

## Objectives
- Clean and standardize raw sales data for accuracy and consistency.  
- Analyze sales performance across days of the week and times of the day.  
- Identify top-selling products and their contribution to total revenue.  
- Segment customers by gender and understand their purchase behavior.  
- Provide clear, interactive dashboards to support strategic decisions.  

---

## Tools & Technologies
- **SQL (MySQL/MariaDB):** Data cleaning, transformation, and preparation.  
- **Power BI:** Data visualization and interactive dashboard design.  

---

## Data Cleaning Steps
- Checked and removed duplicate records based on `order_id`.  
- Handled missing or blank values across key fields.  
- Standardized and reformatted dates into a new `order_date` column.  
- Unified categorical values (e.g., converted "Mr./Mrs." into "Male/Female").  
- Replaced null or blank values in `transaction_type` with "Unknown".  

SQL scripts are included in:  
`fast_food_sql.sql`  

---

## Key Insights
- **Sales by Day & Time:**  
  - Sunday recorded the highest sales, while Friday showed the lowest.  
  - Peak sales hours were identified, supporting better workforce allocation.  

- **Product Analysis:**  
  - **Sandwiches** generated the highest revenue.  
  - **Cold Coffee** had the highest order volume.  

- **Customer Segmentation:**  
  - Balanced order distribution between male and female customers, with slight differences in product preference.  

- **Category Contribution:**  
  - Beverages contributed **68%** of total sales.  
  - Food items contributed **32%** of total sales.  

---

## Business Value
This analysis provides restaurant managers with insights to:  
- Optimize staff schedules based on peak days and hours.  
- Focus marketing and promotions on high-performing products.  
- Tailor offers for different customer segments.  
- Use data-driven decision-making to maximize revenue and efficiency.  

---

## Project Structure
- `fast_food_sql.sql`: SQL scripts used for data cleaning and transformation.  
- `PowerBI_Dashboard/`: Power BI dashboard files and screenshots.  

---

## Dashboards
### Sales Overview  
![Sales Dashboard](https://github.com/Afraem-hany/Fast_food_dashboard/blob/a06756f7d7669dc37e4fe57b16c9839f74981117/images/Screenshot%202025-09-03%20163448.png)  

### Product & Customer Analysis  
![Product Dashboard](https://github.com/Afraem-hany/Fast_food_dashboard/blob/a06756f7d7669dc37e4fe57b16c9839f74981117/images/Screenshot%202025-09-03%20163511.png)  

---

## Next Steps
Potential improvements for future iterations:  
- Add profitability analysis per product and category.  
- Explore repeat orders and customer retention patterns.  
- Advanced segmentation (e.g., age groups, order channels) if data is available.  

---


