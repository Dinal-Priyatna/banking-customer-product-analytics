-- Total Sales
SELECT ROUND(SUM(total_sales),2) as total_revenue
FROM `BIAnalyst.TABEL UTAMA`;

--Total Keseluruhan Sales Berdasarkan Produk Category
SELECT 
  category_name,
  ROUND(SUM(total_sales),2) as total_sales
FROM `BIAnalyst.TABEL UTAMA`
GROUP BY category_name
ORDER BY total_sales DESC;

--Total Keseluruhan QTY Berdasarkan Produk Category
SELECT 
  category_name,
  SUM(order_qty) as jumlah_order
FROM `BIAnalyst.TABEL UTAMA`
GROUP BY category_name
ORDER BY jumlah_order DESC;

--Total sales berdasarkan kota
SELECT
  cust_city,
  ROUND(SUM(total_sales),2) as total_sales
FROM `BIAnalyst.TABEL UTAMA`
GROUP BY cust_city
ORDER BY total_sales DESC;

-- Total QTY Berdasarkan Kota
SELECT
  cust_city,
  SUM(order_qty) as jumlah_order
FROM `BIAnalyst.TABEL UTAMA`
GROUP BY cust_city;

-- TOP 5 Category product by sales
SELECT
  category_name,
  ROUND(SUM(total_sales),2) as total_sales
FROM `BIAnalyst.TABEL UTAMA`
GROUP BY category_name
ORDER BY total_sales DESC
LIMIT 5;

-- TOP 5 Category Product by QTY
SELECT
  category_name,
  SUM(order_qty) as jumlah_order
FROM `BIAnalyst.TABEL UTAMA`
GROUP BY category_name
ORDER BY jumlah_order DESC
LIMIT 5 ;

-- Cek Rentang wantu data
SELECT
  MIN(order_date) as star_date,
  MAX(order_date) as end_date,
  COUNT(DISTINCT order_date) as total_days
FROM `BIAnalyst.TABEL UTAMA`;

--Trend Sales Per Bulan
SELECT
  FORMAT_DATE('%Y-%m', order_date) as month,
  ROUND(SUM(total_sales),2) as monthly_sales,
  SUM (order_qty) as monthly_qty
FROM `BIAnalyst.TABEL UTAMA`
GROUP BY month
ORDER BY month ASC;

--TOP Produk
SELECT
  product_name,
  ROUND(SUM(total_sales),2) as total_sales
FROM `BIAnalyst.TABEL UTAMA`
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;

--Avarage Order Value (AOV)
SELECT
  ROUND(SUM(total_sales)/COUNT(DISTINCT order_date),2) AS avg_dailly_revenue
FROM `BIAnalyst.TABEL UTAMA`

-- Distribusi Customer Per Kota
SELECT
  cust_city,
  COUNT(DISTINCT cust_email) as total_customer
FROM `BIAnalyst.TABEL UTAMA`
GROUP BY cust_city
ORDER BY total_customer DESC;



