# 🛒 Retail Analytics ETL Pipeline — Python + SQL Project

## 📌 Project Summary
This project is an end-to-end **ETL + Data Analytics pipeline** built using **Python (Pandas, NumPy)** and **MySQL (SQL queries)** on a real-world Kaggle retail orders dataset. It demonstrates how raw transactional data is extracted, cleaned, transformed, stored in a relational database, and analyzed to generate meaningful business insights.

The goal is to simulate a real analytics workflow used in data analyst roles — from raw data ingestion to business decision-making using SQL.

---

## ❗ Problem Statement
Retail businesses generate large volumes of transactional data but often struggle to:
- Clean and standardize raw datasets
- Integrate data into structured databases
- Extract actionable insights for business decisions

---

## 🎯 Objective
- Build a complete ETL pipeline using Python
- Store transformed data in MySQL database
- Perform advanced SQL analysis to extract business insights
- Identify revenue trends, profitability, and product performance

---

## 🚀 Key Features
- Automated dataset extraction using Kaggle API
- Data cleaning & preprocessing with Pandas
- Feature engineering (discount, sale price, profit)
- MySQL database integration using SQLAlchemy
- Advanced SQL analytics using window functions
- Business KPI analysis (Revenue, Profit, Growth, Trends)

---

## 🧰 Tech Stack
- **Python** (Pandas, NumPy)
- **SQL** (MySQL, Window Functions, Aggregations)
- **Kaggle API**
- **SQLAlchemy / PyMySQL**
- **Jupyter Notebook**

---

## 📊 Dataset Source
- Kaggle Dataset: *Retail Orders Dataset (ankitbansal06)*
- Rows: 9,994 transactions  
- Time Period: Jan 2022 – Dec 2023  
- Regions: 4 (West, East, Central, South)  
- Categories: Technology, Furniture, Office Supplies  

---

## ⚙️ Workflow / Process

### 1. Data Extraction
- Downloaded dataset using Kaggle API
- Extracted compressed ZIP file into working directory

### 2. Data Cleaning
- Handled missing values (`Not Available`, `unknown`)
- Standardized column names
- Converted date fields into datetime format

### 3. Feature Engineering
Created key business metrics:
- Discount = list_price × discount_percent
- Sale Price = list_price − discount
- Profit = sale_price − cost_price

### 4. Data Loading
- Loaded cleaned dataset into MySQL using SQLAlchemy
- Structured table: `df_orders`

### 5. SQL Analysis
Performed advanced business queries:
- Revenue by product
- Region-wise performance
- Month-over-month trend analysis
- Category performance
- Growth analysis by sub-category

---

## 📈 Key Insights
- 💰 Total Revenue: **~$8.7M**
- 📊 Overall Profit Margin: **~28%**
- 🏆 Top Region: **West (~$2.8M revenue)**
- 📦 Top Category: **Technology (~62% of revenue)**
- 📉 YoY Trend: **Revenue declined ~4.9% from 2022 to 2023**
- 📈 Fastest Growing Sub-category: **Binders (+14.2% YoY)**
- 🛍️ Peak Sales Period: **Q4 (Oct–Dec)**

