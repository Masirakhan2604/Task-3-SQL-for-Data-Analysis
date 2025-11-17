
-- Task 3 SQL Queries

-- 1. Top 5 sales
SELECT product_name, sales FROM ecommerce ORDER BY sales DESC LIMIT 5;

-- 2. Category summary
SELECT category, COUNT(*) AS total_rows, SUM(sales) AS total_sales
FROM ecommerce
GROUP BY category;

-- 3. City sales
SELECT city, SUM(sales) AS city_sales
FROM ecommerce
GROUP BY city
ORDER BY city_sales DESC LIMIT 5;

-- 4. Highest sale using subquery
SELECT product_name, sales FROM ecommerce
WHERE sales = (SELECT MAX(sales) FROM ecommerce);

-- 5. Create a view
CREATE VIEW category_sales AS
SELECT category, SUM(sales) AS total_sales
FROM ecommerce
GROUP BY category;

-- 6. Index optimization
CREATE INDEX idx_city ON ecommerce(city);
