# Online Sales SQL Analysis

This project demonstrates how to create a sample **online sales** dataset, insert values, and run a SQL query to analyze monthly revenue and order volume.

##  Dataset

We use an `orders` table with the following columns:
- **order_id** (INT, Primary Key)
- **order_date** (DATE)
- **amount** (DECIMAL) – order revenue
- **product_id** (INT)

##  Table Creation & Data Insertion

```sql
CREATE DATABASE online_sales;
USE online_sales;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    product_id INT NOT NULL
);

INSERT INTO orders (order_id, order_date, amount, product_id) VALUES
(1, '2024-01-05', 250.00, 101),
(2, '2024-01-15', 150.50, 102),
(3, '2024-02-10', 300.00, 103),
(4, '2024-02-25', 500.00, 104),
(5, '2024-03-05', 200.00, 105),
(6, '2024-03-18', 450.75, 101),
(7, '2024-04-02', 350.00, 102),
(8, '2024-04-15', 275.25, 103),
(9, '2024-05-10', 600.00, 104),
(10, '2024-05-20', 125.00, 105);

 Monthly Analysis Query
The query extracts the month and year, calculates total revenue, counts unique orders, and sorts results for a specific time range.

 Output Example
order_year	order_month	total_revenue	order_volume
2024	2	800.00	2
2024	3	650.75	2
2024	4	625.25	2
