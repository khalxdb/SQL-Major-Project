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
*Crow’s Foot ER diagram showing entities, relationships, and cardinalities.*
[📄 View ER Diagram (PDF)](ER.pdf)

### Logical Transformation
[📄 View Logical Transformation (PDF)](Logical.pdf)


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
