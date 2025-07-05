📊 RetailSalesDB - SQL Practice Project

RetailSalesDB is a beginner-friendly SQL project for hands-on practice with relational database concepts. 
It replicates a simplified retail sales environment involving customers, products, and purchases.

 🧱 Database Overview

 🔹 Tables

1. customers
   - Stores customer information  
   - Columns: `customer_id`, `customer_name`, `city`, `age`

2. orders
   - Tracks purchases made by customers  
   - Columns: `order_id`, `customer_id`, `order_date`, `total_amount`

3. products  
   - Contains information about products being sold  
   - Columns: `product_id`, `product_name`, `price`

4. order_details
   - A many-to-many relationship table between `orders` and `products`  
   - Columns: `order_id`, `product_id`, `quantity`
