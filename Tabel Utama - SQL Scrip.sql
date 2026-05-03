SELECT 
  o.Date as order_date,
  pc.CategoryName as category_name,
  p.ProdName as product_name,
  p.Price as product_price,
  o.Quantity as order_qty,
  (o.Quantity * p.Price) as total_sales,
  c.CustomerEmail as cust_email,
  c.CustomerCity as cust_city
FROM `BIAnalyst.Order`o
LEFT JOIN `BIAnalyst.Customer` c
  ON o.CustomerID = c.CustomerID
LEFT JOIN `BIAnalyst.Product` p
  ON o.ProdNumber = p.ProdNumber
LEFT JOIN `BIAnalyst.Product_Categori` pc
  ON p.Category = pc.CategoryID
ORDER BY order_date ASC