-- VENTAS POR CATEGORIA

SELECT
    category,
    SUM(CAST(sales AS NUMERIC)) AS total_sales
FROM superstore.superstore_csv
GROUP BY category
ORDER BY total_sales DESC;

-- PROFIT POR REGION

SELECT
    region,
    SUM(CAST(profit AS NUMERIC)) AS total_profit
FROM superstore.superstore_csv
GROUP BY region
ORDER BY total_profit DESC;

-- PROFIT POR SUBCATEGORIA

SELECT
    "Sub-Category",
    SUM(CAST(profit AS NUMERIC)) AS total_profit
FROM superstore.superstore_csv
GROUP BY "Sub-Category"
ORDER BY total_profit DESC;

-- PROMEDIO DE PROFIT POR DESCUENTO

SELECT
    "Sub-Category",
    SUM(CAST(profit AS NUMERIC)) AS total_profit
FROM superstore.superstore_csv
GROUP BY "Sub-Category"
ORDER BY total_profit DESC;

-- TOP PRODUCTOS POR VENTA
SELECT
    "Product Name",
    SUM(CAST(sales AS NUMERIC)) AS total_sales
FROM superstore.superstore_csv
GROUP BY "Product Name"
ORDER BY total_sales DESC
LIMIT 10;
