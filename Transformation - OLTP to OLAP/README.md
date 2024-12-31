# SQL OLTP and OLAP Project

## Overview
This project simulates a typical business environment where transactional data from an Online Transaction Processing (OLTP) system is transformed and loaded into an Online Analytical Processing (OLAP) system for analytical purposes. It demonstrates the end-to-end process, including database creation, data insertion, and queries for both OLTP and OLAP systems.

### Objective
The project aims to showcase how transactional data is processed, aggregated, and queried in a data warehouse environment to answer business-critical questions, such as total revenue, customer behavior, and product performance.

---

## Project Structure

```
OLTP to OLAP Transformation/
├── README.md
├── Scripts/
│   ├── 01_Create_OLTP.sql        # Script to create OLTP schema
│   ├── 02_Insert_OLTP.sql        # Script to insert data into OLTP
│   ├── 03_Create_OLAP.sql        # Script to create OLAP schema
│   ├── 04_Insert_OLAP.sql        # Script to insert data into OLAP
│   ├── 05_Queries_OLTP.sql       # Queries for OLTP system
│   ├── 06_Queries_OLAP.sql       # Queries for OLAP system
├── Diagrams/
│   └── db_schema_olap.jgp        # ER Diagram for OLTP
│   └── db_schema_oltp.jgp        # ER Diagram for OLAP
└── Documentation/
    └── OLTP to OLAP.pdf          # Context and detailed explanation of the project
```

---

## Context
Imagine a company that tracks its sales, customers, and products using a transactional database (OLTP). Over time, the company requires insights, such as:
- Which products generate the most revenue?
- Who are the top customers?
- What is the monthly revenue trend?

To answer these questions, we design a data warehouse (OLAP) where historical data is aggregated and optimized for complex queries and analysis.

---

## Instructions

### 1. Setting Up the OLTP System
1. Run the `01_Create_OLTP.sql` script to create the OLTP database schema.
2. Populate the database with sample data using `02_Insert_OLTP.sql`.

### 2. Setting Up the OLAP System
1. Run the `03_Create_OLAP.sql` script to create the OLAP database schema.
2. Insert aggregated and transformed data into the OLAP system using `04_Insert_OLAP.sql`.

### 3. Querying the Systems
- For transactional data queries (e.g., customer details, invoices), run `05_Queries_OLTP.sql`.
- For analytical queries (e.g., monthly revenue, top products), run `06_Queries_OLAP.sql`.

---

## Highlights
- **OLTP System**: Designed for high-frequency transactional operations with normalized schema.
- **OLAP System**: Optimized for analytical queries with denormalized star schema.
- **Realistic Data**: Simulated data for customers, products, invoices, and sales.
- **End-to-End Workflow**: From data insertion to querying both systems.

---

## Example Queries

### OLTP System
- List all customers:
  ```sql
  SELECT Customer_ID, Name, Email FROM Customers;
  ```
- Total sales for a specific product:
  ```sql
  SELECT Product_ID, SUM(Quantity) AS Total_Sales
  FROM Sales
  GROUP BY Product_ID;
  ```

### OLAP System
- Monthly revenue breakdown:
  ```sql
  SELECT Year, Month, SUM(Revenue) AS Total_Revenue
  FROM FactSales
  GROUP BY Year, Month
  ORDER BY Year, Month;
  ```
- Top 5 products by revenue:
  ```sql
  SELECT Product_Name, SUM(Revenue) AS Total_Revenue
  FROM FactSales
  GROUP BY Product_Name
  ORDER BY Total_Revenue DESC
  LIMIT 5;
  ```

---

## Documentation
For detailed context and project explanation, refer to `OLTP to OLAP Transformation.pdf` in the `Documentation` folder.

---

## Author
This project was designed and implemented as part of a comprehensive study on OLTP and OLAP systems, demonstrating data integration and analytical capabilities in SQL Server.
