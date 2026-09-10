> ####Business Performance Dashboard - Excel
>
> This interactive dashboard analyzes company financial performance across countries (Canada, France, Germany, Mexico, USA), segments, and products (Amarilla, Paseo, Velo, etc.).
>
> Key Insights Visualized:
> _ Government segment drives highest profit
> _ High discount band reduces profit significantly
> * Gross Sales highest in USA and Canada
>
> Skills Demonstrated: Data Cleaning, Pivot Tables, Dashboard Design, Data Visualization, Slicer Integration.


An interactive HR Analytics dashboard analyzing employee demographics, satisfaction, and attrition to help understand workforce trends and retention risks.

### 📸 Dashboard Preview
![Dashboard](PowerBI%20employee%20statistics%20dashboard.png)

### 📊 KPIs Overview
- *Total Employees:* 1470
- *Current Employees:* 1233
- *Employee Left:* 237
- *Attrition Rate:* 10.75%
- *Average Job Satisfaction:* 2.73 / 5

### 🔍 Key Insights
- *Age Group:* Highest concentration in 25-34 years, followed by 35-44 - indicating a young workforce.
- *Marital Status:* 45.78% Married, 31.97% Single, 22.24% Divorced.
- *Education:* Majority hold Bachelor's Degree (38.91%) and Master's Degree.
- *Attrition:* Tracked by gender, job role, education, and age band using slicers.

### 📈 Visuals Included
1.  Total Employees by age_band (Bar Chart)
2.  Total Employees by marital_status (Pie Chart)
3.  Count of employees by education level & education field
4.  Attrition Rate Card with dynamic filters

### 🛠️ Tools & Skills Used
- Power BI
- Data Cleaning & Transformation
- DAX Measures
- Data Visualization & Storytelling
- HR Analytics
- Interactive Slicers & Filters


# InventoryDB - SQL Assessment 1

A relational inventory management database built with Microsoft SQL Server, created as part of my Database Management module at HiTech College.

## 📊 Project Overview
This project simulates a small retail inventory system that tracks items, customers, orders and sales. It demonstrates core SQL concepts from database creation to business intelligence queries.

## 🗂️ Database Schema
The database `InventoryDB` contains 4 related tables:

- **Items** - Product catalog (ItemID, ItemName, Category, Price, StockQuantity)
- **Customers1** - Customer information
- **Orders1** - Customer orders with Foreign Key to Customers1
- **OrderItems** - Order line items with Foreign Keys to Orders1 and Items

## ✨ Key Features / Queries

1.  **Database & Table Creation** with Primary Keys and Foreign Keys
2.  **Data Insertion** - Sample data for Furniture, Stationery, Electronics
3.  **Business Queries:**
    - Display all orders
    - Update Furniture prices by 10% using a sub-query
    - Total quantity sold & revenue per item (JOIN + GROUP BY)
4.  **Stored Procedures:**
    - `GetBestSellingItem1` - Returns the top-selling item by revenue using TOP 1
    - `GetCustomerOrderSummary1` - Shows total amount spent per customer

## 🛠️ Technologies Used
- Microsoft SQL Server 17.0 (SSMS)
- T-SQL
- Git & GitHub for version control

## 🚀 How to Run
1. Open SQL Server Management Studio
2. Execute the script `SQL Assessment 1.sql`
3. The script will create the database, tables, insert data and create stored procedures
4. Run `EXEC GetBestSellingItem1;` and `EXEC GetCustomerOrderSummary1;` to test

## 👩‍💻 Author
**Snenhlanhla** - Aspiring Data Analyst | Durban, South Africa
Focused on SQL, Power BI, and Python for data analytics.

---
*HiTechCollege - Database Systems Assessment 2024*
