-- CUSTOMERS INSIGHTS
-- How many customers are in the system?
select count(*) as total_customers
from customers;

-- How many new customers join each month?
SELECT 
    DATE_FORMAT(signup_date, '%Y-%m') as month,
    COUNT(customer_id) AS new_customers
FROM customers
GROUP BY DATE_FORMAT(signup_date, '%Y-%m')
ORDER BY month;

-- Which customer have multiple addresses?
select c.name 
from customers c left join customer_addresses ca
on c.customer_id = ca.customer_id
where ca.address_line_2 is not null;
      
-- Which customers have never placed an order?
select c.*
from customers c left join orders o
on c.customer_id = o.customer_id
where o.order_id is null;

-- Who are the top 5 customers by total spending?
select c.name , p.amount as total_spending
from customers c join orders o
on c.customer_id = o.customer_id join payments p
on o.order_id = p.order_id
order by total_spending desc
limit 5;
