# 🛒 Zepto Inventory & Pricing Analysis (SQL Project)

## 📌 Project Overview

This project focuses on analyzing a retail dataset from Zepto using SQL. The goal is to extract meaningful business insights related to pricing, discounts, inventory, and revenue generation.

The project demonstrates strong SQL fundamentals including data cleaning, aggregation, filtering, and business-driven analysis.

---

## 🎯 Objectives

* Perform data exploration and cleaning
* Analyze product pricing and discounts
* Identify inventory trends
* Calculate category-level revenue
* Derive insights useful for business decisions

---

## 🧱 Database Schema

Table: `zepto`

| Column Name            | Description          |
| ---------------------- | -------------------- |
| sku_id                 | Unique product ID    |
| category               | Product category     |
| name                   | Product name         |
| mrp                    | Maximum Retail Price |
| discountPercent        | Discount applied     |
| availableQuantity      | Available stock      |
| discountedSellingPrice | Final selling price  |
| weightInGms            | Product weight       |
| outOfStock             | Stock status         |
| quantity               | Ordered quantity     |

---

## 🧹 Data Cleaning Steps

* Removed products with invalid pricing (MRP = 0)
* Converted price from paise to rupees
* Checked for NULL values across all columns

---

## 📊 Key Business Questions Solved

### 1. Top 10 Best Value Products

Identified products with the highest discount percentages.

### 2. High MRP but Out-of-Stock Products

Highlighted premium products that are unavailable.

### 3. Category-wise Revenue

Calculated total revenue using:

```
Revenue = discountedSellingPrice × availableQuantity
```

### 4. Premium Products with Low Discount

Filtered products with high price but minimal discount.

### 5. Categories with Highest Discounts

Computed average discount per category.

### 6. Price per Gram Analysis

Evaluated product value based on weight and price.

### 7. Product Segmentation by Weight

Categorized products into:

* Low (< 1kg)
* Medium (1kg–5kg)
* Bulk (> 5kg)

### 8. Total Inventory Weight per Category

Measured stock weight distribution across categories.

---

## 🛠️ Tools Used

* MySQL
* SQL (Joins, Aggregations, CASE, Filtering)

---

## 🚀 Key Insights

* Some categories offer significantly higher discounts than others
* High-MRP products often face stock issues
* Price-per-gram analysis helps identify true product value
* Inventory weight varies heavily across categories

---

## 📈 Skills Demonstrated

* Data Cleaning in SQL
* Aggregation & Grouping
* Business Problem Solving
* Query Optimization
* Analytical Thinking

---

## 📎 How to Use

1. Create the table using the provided schema
2. Import dataset
3. Run queries step-by-step
4. Modify queries for deeper insights

---

## 💡 Future Improvements

* Add dashboards using Power BI
* Integrate Python for advanced analysis
* Build recommendation system based on pricing trends

---

## 📬 Contact

Feel free to connect for feedback or collaboration!
