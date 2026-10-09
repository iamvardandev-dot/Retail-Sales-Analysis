# Retail Sales & Profit Analysis

An end-to-end data analytics project exploring retail sales, profitability, product performance, and regional trends using **Python, MySQL, and Power BI**.

## Project Overview

The goal of this project is to analyse retail transaction data and understand how sales, costs, and profits vary across products, categories, regions, and months.

The project follows a practical analytics workflow: exploring the raw dataset, querying and aggregating data with SQL, performing analysis in Python, and building an interactive Power BI report to communicate the results.

## Business Questions

- What are the total sales, profit, and overall profit margin?
- Which products and categories generate the highest sales and profit?
- Which regions contribute the most to business performance?
- How do sales and profit change over time?
- Which products have higher sales volumes and profit margins?
- Where could the business investigate opportunities to improve profitability?

## Tools & Technologies

- **Python:** Data loading, inspection, calculations, and analysis.
- **Pandas:** Data handling and analysis.
- **NumPy:** Numerical operations.
- **Matplotlib & Seaborn:** Data visualisation libraries.
- **MySQL:** Data querying, aggregation, filtering, and business analysis.
- **Power BI:** KPI cards, comparative charts, trend analysis, and interactive filtering.
- **Git & GitHub:** Version control and project documentation.

## Dataset Overview

The dataset contains 30 retail order records with eight columns.

| Column | Description |
|---|---|
| `Order_ID` | Unique order identifier |
| `Order_Date` | Date of the order |
| `Product` | Product sold |
| `Category` | Product category |
| `Quantity` | Number of units sold |
| `Sales` | Sales amount |
| `Cost` | Cost associated with the order |
| `Region` | Region associated with the order |

The dataset covers eight products, three categories, and five regions, with order dates spanning January to April 2026.

## Project Workflow

### 1. Data Exploration & Preparation

- Loaded the raw CSV dataset.
- Examined the dataset structure and data types.
- Checked for missing values and data quality issues.
- Worked with order dates in a consistent date format.
- Used the dataset as the common source for SQL, Python, and Power BI analysis.

### 2. SQL Analysis — MySQL

Developed SQL queries to answer business questions and calculate key performance measures.

The analysis included:

- Total sales, total profit, order count, average order value, and quantity sold.
- Product-wise and category-wise sales and profit.
- Regional sales and profitability comparisons.
- Monthly sales and profit trends.
- Product-level and region-level profit margins.
- Sorting and ranking products by sales, quantity, and profit.
- Conditional filtering using `WHERE` and `HAVING`.
- Business classifications using `CASE WHEN`.
- Identification of missing cost values.

**SQL concepts:** `SELECT`, aggregate functions, `GROUP BY`, `ORDER BY`, `WHERE`, `HAVING`, `CASE WHEN`, and date-based grouping.

### 3. Python Analysis — Jupyter Notebook

Used Python to inspect the dataset, perform calculations, and explore business performance.

- Loaded the CSV using Pandas.
- Inspected the data structure and data types.
- Checked data quality.
- Worked with date values.
- Calculated profit and profit margin.
- Analysed product, category, and regional performance.
- Examined monthly sales and profitability.

### 4. Power BI Dashboard

Built a two-page Power BI report to present key performance indicators and detailed sales analysis.

**Page 1 — KPI Cards**

- Total Sales
- Total Profit
- Profit Margin
- Total Orders
- Average Order Value
- Total Quantity

**Page 2 — Sales & Profit Dashboard**

- Total sales and profit by category.
- Total sales and profit by product.
- Monthly sales trend.
- Sales comparison across regions.
- Quantity sold by category.
- Profit margin by category.
- Profit by region.
- Profit trend over time.
- Sales by category and product.
- Region slicer for interactive filtering.

The dashboard brings together high-level performance indicators and detailed comparisons in a single report.

## Key Findings

The following findings are based on the supplied dataset.

### Overall Performance

| Metric | Result |
|---|---:|
| Total Sales | ₹5,21,900 |
| Total Cost | ₹4,23,400 |
| Total Profit | ₹98,500 |
| Overall Profit Margin | 18.87% |
| Total Orders | 30 |
| Total Quantity Sold | 47 units |
| Average Order Value | ₹17,396.67 |

**Calculations:**
- Profit = Sales − Cost
- Overall Profit Margin = Total Profit ÷ Total Sales × 100

### Category Performance

| Category | Sales | Profit |
|---|---:|---:|
| Electronics | ₹4,14,000 | ₹63,500 |
| Furniture | ₹71,200 | ₹22,200 |
| Accessories | ₹36,700 | ₹12,800 |

**Finding:** Electronics was the largest category by both sales and total profit. It generated approximately 79.3% of total sales, making it the main revenue contributor in this dataset.

### Regional Performance

| Region | Total Sales |
|---|---:|
| Delhi | ₹2,43,600 |
| Bangalore | ₹95,500 |
| Pune | ₹79,600 |
| Mumbai | ₹56,100 |
| Hyderabad | ₹47,100 |

**Finding:** Delhi recorded the highest sales and total profit, contributing approximately 46.7% of total sales.

### Product Performance

- **Laptop:** Highest sales at ₹2,75,000 and highest total profit at ₹35,000.
- **Monitor:** Second-highest sales at ₹90,500, with ₹18,000 in profit.
- **Mouse:** Lowest sales at ₹6,400.
- **Keyboard:** Generated ₹3,200 in profit.

**Finding:** Laptop was the strongest product by both sales and total profit. Comparing revenue with profit helps distinguish high-selling products from those contributing more effectively to profitability.

### Monthly Performance

| Month | Sales | Profit |
|---|---:|---:|
| January 2026 | ₹1,10,100 | ₹21,200 |
| February 2026 | ₹1,42,500 | ₹27,900 |
| March 2026 | ₹1,19,300 | ₹24,800 |
| April 2026 | ₹1,50,000 | ₹24,600 |

**Findings:**

- April recorded the highest monthly sales at ₹1,50,000.
- February recorded the highest monthly profit at ₹27,900.
- April generated more sales than February but less profit, demonstrating why revenue and profitability should be evaluated together.

## Business Recommendations

Based on the observed results, the following areas merit further investigation:

1. **Review category concentration:** Investigate the dependence on Electronics and assess the risks associated with its large share of revenue.
2. **Investigate regional performance:** Explore the factors behind Delhi's strong results and whether successful practices can be applied elsewhere.
3. **Evaluate product profitability:** Compare product-level sales, costs, and profit margins before making pricing or product-mix decisions.
4. **Monitor profit alongside sales:** Track both measures to identify periods when revenue growth does not translate into higher profit.
5. **Expand the dataset:** Analyse more orders over a longer period before drawing conclusions about recurring trends.

These recommendations are exploratory and should be validated with additional business data.

## Repository Structure

| File | Description |
|---|---|
| `retail_sales.csv.csv` | Raw retail sales dataset |
| `retail_sales.xlsx` | Excel workbook included in the project |
| `retail_sales_SQL.sql` | SQL queries for retail sales analysis |
| `Retail_Sales_Analysis_Python (1).ipynb` | Python analysis notebook |
| `Retail Sales & Profit Analysis Dashboard.pbix` | Power BI report |

## Limitations

- The dataset contains only 30 orders, so the findings are illustrative and may not generalise to a large retail business.
- The analysis covers four months and is insufficient to establish long-term seasonal patterns.
- The results depend on the accuracy and completeness of the supplied data.
- Additional data would be needed to validate the business recommendations.

## Conclusion

This project demonstrates a practical data analytics workflow using **MySQL for structured querying, Python for data exploration and calculations, and Power BI for reporting and visual analysis**.

It strengthened practical skills in data preparation, aggregation, profitability analysis, trend comparison, dashboard development, and communicating data-driven business observations.
