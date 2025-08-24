# SQL-Major-Project
# 🍫 Chocolate Nation Database Project – COMP1350 S2 2024

A database project for **Chocolate Nation**, a Belgian chocolate museum expanding to Australia. This project includes ER diagrams, logical transformation, and SQL implementation for managing chocolates, promotions, customers, reviews, and more.

## Features
- **ER Diagram**: Crow’s Foot notation showing entities, relationships, and cardinalities.
- **Relational Schema**: Tables with primary and foreign keys.
- **SQL Implementation**:
  - Table creation and sample data insertion.
  - Queries demonstrating filtering, joining, ordering, and aggregation.

### Sample Queries
- Retrieve chocolates above a price threshold.
- Filter chocolates using wildcards and conditions.
- Join tables to display promotions and chocolates.
- Calculate average ratings for each chocolate.

## Tables
- `Promotion` – Promotional offers
- `Category` – Chocolate categories
- `Chocolate` – Chocolate products with categories
- `Discount` – Chocolate discounts and promotions
- `Customer` – Visitor/customer info
- `Review` – Customer chocolate reviews

## Project Diagrams

### ER Diagram
![ER Diagram](images/er_diagram.png)  
*Crow’s Foot ER diagram showing entities, relationships, and cardinalities.*

### Logical Transformation
![Logical Transformation](images/logical_transformation.png)  
*Step-by-step transformation of the ER diagram into relational tables with primary and foreign keys.*

> **Note:** Replace `images/er_diagram.png` and `images/logical_transformation.png` with the actual paths of your images in the repository.

## Getting Started
1. Open **MySQL Workbench** (or any MySQL client).  
2. Run the SQL script (`Task3_Template.sql`) to create tables.  
3. Insert sample records (at least 5 per table).  
4. Run queries to test and analyze the data.  

## Authors
- Khalid Bakhshi 

## Notes
- Make sure foreign key constraints are followed when inserting data.  
- Sample data provided for testing.  
- ER diagrams and logical transformation included in project report PDF.
