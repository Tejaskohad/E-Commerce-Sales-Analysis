-- Add Data into Customers Table
 INSERT INTO Customers (customer_id, name, email, signup_date) VALUES
(1, 'Aarav Sharma', 'aarav@gmail.com', '2024-11-05 14:32:10'),
(2, 'Priya Patel', 'priya@gmail.com', '2025-01-18 09:15:47'),
(3, 'Rohan Iyer', 'rohan@gmail.com', '2024-12-22 11:05:33'),
(4, 'Neha Reddy', 'neha@gmail.com', '2025-03-09 16:45:22'),
(5, 'Aditya Menon', 'aditya@gmail.com', '2025-05-01 09:25:41'),
(6, 'Kavya Nair', 'kavya@gmail.com', '2024-10-28 19:55:11'),
(7, 'Siddharth Joshi', 'siddharth@gmail.com', '2025-04-14 08:42:29'),
(8, 'Ananya Deshmukh', 'anaya@gmail.com', '2025-02-05 13:10:58'),
(9, 'Vikram Choudhary', 'vikram@gmail.com', '2024-09-17 20:35:07'),
(10, 'Meera Gupta', 'meera@gmail.com', '2025-06-22 12:50:16');

-- Add Data into Customer_addresses table
INSERT INTO Customer_Addresses 
(address_id, customer_id, address_line_1, address_line_2, city, state, postal_code, country) VALUES
(1, 1, '221B MG Road', 'Apt 5A', 'Bengaluru', 'Karnataka', '560001', 'India'),
(2, 2, '14 Nehru Street', NULL, 'Ahmedabad', 'Gujarat', '380015', 'India'),
(3, 3, '88 Park Avenue', 'Flat 12C', 'Mumbai', 'Maharashtra', '400001', 'India'),
(4, 4, '7 Charminar Road', 'Block B', 'Hyderabad', 'Telangana', '500002', 'India'),
(5, 5, '19 MG Marg', NULL, 'Kochi', 'Kerala', '682001', 'India'),
(6, 6, '45 Residency Road', 'Floor 3', 'Thiruvananthapuram', 'Kerala', '695001', 'India'),
(7, 7, '12 Connaught Place', NULL, 'New Delhi', 'Delhi', '110001', 'India'),
(8, 8, '29 FC Road', 'Suite 21', 'Pune', 'Maharashtra', '411004', 'India'),
(9, 9, '67 Civil Lines', NULL, 'Jaipur', 'Rajasthan', '302006', 'India'),
(10, 10, '101 Salt Lake Sector 5', 'Tower C', 'Kolkata', 'West Bengal', '700091', 'India');

-- Add data into Categories
INSERT INTO Categories (category_id, category_name, parent_id) VALUES
(1, 'Electronics', NULL),
(2, 'Mobiles', 1),
(3, 'Laptops', 1),
(4, 'Accessories', 1),
(5, 'Fashion', NULL),
(6, 'Men Clothing', 5),
(7, 'Women Clothing', 5),
(8, 'Home & Kitchen', NULL),
(9, 'Furniture', 8),
(10, 'Appliances', 8);

-- Add data into products
INSERT INTO Products (product_id, product_name, category_id, price, cost_price) VALUES
(101, 'Samsung Galaxy M14', 2, 14999.00, 12000.00),
(102, 'iPhone 14', 2, 69999.00, 62000.00),
(103, 'Dell Inspiron 15', 3, 54999.00, 48000.00),
(104, 'HP Pavilion x360', 3, 62999.00, 55000.00),
(105, 'Boat Airdopes 141', 4, 1999.00, 1200.00),
(106, 'Sony WH-1000XM4 Headphones', 4, 24999.00, 20000.00),
(107, 'Men T-Shirt Cotton', 6, 799.00, 400.00),
(108, 'Women Kurti Set', 7, 1599.00, 800.00),
(109, 'Wooden Dining Table', 9, 12999.00, 9500.00),
(110, 'LG Refrigerator 260L', 10, 21999.00, 18000.00); 

-- Add Data into Orders
INSERT INTO Orders (order_id, customer_id, order_date, status, payment_type) VALUES
(1, 1, '2025-06-01 10:15:00', 'Paid', 'Credit Card'),
(2, 2, '2025-06-03 14:45:00', 'Paid', 'UPI'),
(3, 3, '2025-06-04 18:30:00', 'Pending', 'NetBanking'),
(4, 4, '2025-06-06 09:10:00', 'Paid', 'Debit Card'),
(5, 5, '2025-06-07 20:25:00', 'Cancelled', 'UPI'),
(6, 6, '2025-06-08 11:55:00', 'Paid', 'Credit Card'),
(7, 7, '2025-06-10 16:40:00', 'Pending', 'NetBanking'),
(8, 8, '2025-06-11 12:20:00', 'Paid', 'UPI'),
(9, 9, '2025-06-12 19:35:00', 'Paid', 'Credit Card'),
(10, 10, '2025-06-13 15:05:00', 'Paid', 'Debit Card');

-- Add Data into Order_items
INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, unit_price, discount) VALUES
(1, 1, 101, 2, 1499.00, 0),
(2, 2, 102, 1, 799.00, 50.00),
(3, 3, 103, 3, 1299.00, 0),
(4, 4, 104, 1, 599.00, 20.00),
(5, 5, 105, 2, 999.00, 0),
(6, 6, 106, 1, 1599.00, 100.00),
(7, 7, 107, 4, 299.00, 0),
(8, 8, 108, 1, 899.00, 10.00),
(9, 9, 109, 2, 1299.00, 0),
(10, 10, 110, 1, 1999.00, 200.00); 

-- Add Data into Payments
INSERT INTO Payments (payment_id, order_id, transaction_id, provider, amount, status, payment_date) VALUES
(1, 1, 'TXN00001', 'HDFC Bank - Visa', 2998.00, 'Completed', '2025-06-01 10:20:00'),
(2, 2, 'TXN00002', 'Paytm UPI', 749.00, 'Completed', '2025-06-03 14:50:00'),
(3, 3, 'TXN00003', 'SBI NetBanking', 3897.00, 'Pending', '2025-06-04 18:35:00'),
(4, 4, 'TXN00004', 'ICICI Debit Card', 579.00, 'Completed', '2025-06-06 09:15:00'),
(5, 5, 'TXN00005', 'Google Pay UPI', 1998.00, 'Failed', '2025-06-07 20:30:00'),
(6, 6, 'TXN00006', 'Axis Bank Credit Card', 1499.00, 'Completed', '2025-06-08 12:00:00'),
(7, 7, 'TXN00007', 'SBI NetBanking', 1196.00, 'Pending', '2025-06-10 16:45:00'),
(8, 8, 'TXN00008', 'PhonePe UPI', 889.00, 'Completed', '2025-06-11 12:25:00'),
(9, 9, 'TXN00009', 'HDFC Bank - Visa', 2598.00, 'Completed', '2025-06-12 19:40:00'),
(10, 10, 'TXN00010', 'ICICI Debit Card', 1799.00, 'Completed', '2025-06-13 15:10:00'); 

-- Add Data into Discounts
INSERT INTO Discounts (discount_id, product_id, discount_type, discount_value, start_date, end_date) VALUES
(1, 101, 'percentage', 10.00, '2025-05-01', '2025-05-31'),
(2, 102, 'fixed', 100.00, '2025-06-01', '2025-06-15'),
(3, 103, 'percentage', 15.00, '2025-06-05', '2025-06-20'),
(4, 104, 'fixed', 50.00, '2025-06-10', '2025-06-25'),
(5, 105, 'percentage', 5.00, '2025-06-01', '2025-06-30'),
(6, 106, 'fixed', 200.00, '2025-06-15', '2025-06-30'),
(7, 107, 'percentage', 20.00, '2025-06-01', '2025-06-10'),
(8, 108, 'fixed', 75.00, '2025-06-05', '2025-06-20'),
(9, 109, 'percentage', 12.50, '2025-06-10', '2025-06-30'),
(10, 110, 'fixed', 300.00, '2025-06-01', '2025-06-15');


