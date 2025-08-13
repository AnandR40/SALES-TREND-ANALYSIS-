create database Online_sales;
use Online_sales;


-- Create table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    product_id INT NOT NULL
);

-- Insert 10 sample records
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
SELECT 
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    orders
WHERE 
    order_date BETWEEN '2024-02-01' AND '2024-04-30'  -- f. Limit to specific time period
GROUP BY 
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY 
    order_year,
    order_month;

