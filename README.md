# The Discount Trap: A Furniture Retail Profit Analysis

## Project Overview

This project analyses 1,350 furniture retail transactions to uncover 
how an aggressive discount strategy silently destroys profit margin. 
What began as a simple sales performance analysis became an 
investigation into a structural business problem hiding beneath 
healthy revenue figures.

**Tools Used:** Excel | MySQL | Power BI  
**Skills Demonstrated:** Data cleaning | SQL querying | DAX measures | 
Dashboard design | Business insight generation


## The Central Finding

The store operates at a **2.23% profit margin** on $517,447 in revenue — 
keeping only $8.55 per transaction on average. The root cause: 
**34.37% of all transactions are loss-making**, driven primarily by 
discounts at or above 30%.


## Key Metrics

| Metric | Value |
|---|---|
| Total Sales | $517,447.36 |
| Total Profit | $11,550.11 |
| Profit Margin | 2.23% |
| Loss-Making Transactions | 34.37% |
| Discount Breaking Point | 30% |
| Average Loss Above Breaking Point | -$259.66 per transaction |


## Key Findings

**Finding 1 — The Discount Trap**  
Profit turns negative at 30% discount. Transactions above this 
threshold lose an average of $259.66 per order.

**Finding 2 — Corporate Segment Loss**  
Despite generating $157,464 in sales, the Corporate segment produced 
a net loss of $621.92 — the only segment actively destroying value.

**Finding 3 — Negative Gross Margin Products**  
Specific products lose more money than they generate in sales. 
Tenex Chair Mats: $1,002 in sales, $2,144 in losses. The problem 
is product cost — not discounting.

**Finding 4 — Regional Efficiency Paradox**  
West and East generate the most revenue but rank lowest in profit 
efficiency. Central (2.97%) and South (2.82%) outperform the 
store average of 2.23% despite lower sales volume.


# Recommendations

1. Cap all discounts at 20% maximum across all product lines
2. Discontinue or reprice negative gross margin products
3. Apply stricter discount controls in West and East regions
4. Investigate Corporate segment pricing and product mix


## Project Structure

├── sql/
│ └── store_sales_queries.sql
├── documentation/
│ └── project_documentation.docx
├── dashboard/
│ └── dashboard-screenshot.png
└── README.md


## Data Cleaning Journey

This project involved significant data quality challenges:

- Date format inconsistencies resolved using STR_TO_DATE in MySQL
- 771 corrupted rows identified and removed using sales = 0 
  and discount threshold markers
- Product names containing quote characters caused column 
  shifting during CSV import — resolved using tab-delimited format
- Final clean dataset: 1,350 verified rows


## Tools and Technologies

- **Excel** — Initial data exploration, pivot tables, COUNTIF analysis
- **MySQL** — Data import, cleaning, and business question queries
- **Power BI** — Star schema design, DAX measures, dashboard building


## Connect With Me

If you would like to discuss this project or explore collaboration 
opportunities, feel free to connect with me on LinkedIn.

*Built during final year Industrial Chemistry studies — proof that 
consistency beats perfect conditions.*
