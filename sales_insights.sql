-- SALES INSIGHTS
-- How many total orders have been placed?
select count(*) as Total_Orders
from orders;

-- How many orders are in each status?
select status,count(*) as Orders
from orders 
group by status;

-- What is the monthly trend of orders placed?
select date_format(order_date,'%Y-%M') as Month, 
	   count(order_id) as Trending_Orders
from orders
group by date_format(order_date,'%Y-%M')
order by Trending_orders desc;

-- What is the average order value?
select
    truncate(avg(oi.unit_price), 2) as avg_unit_price,
    truncate(avg(order_value), 2) as avg_order_value
from (
    select
        oi.order_id,
        sum((oi.unit_price - oi.discount) * oi.quantity) AS order_value
    from order_items oi
    group by oi.order_id
) as order_summary
join order_items oi;

-- What is the revenue split by payment type (Credit Card, UPI, etc.)?
select o.payment_type,sum(oi.unit_price) as Revenue
from orders o join order_items oi
on o.order_id = oi.order_id
group by payment_type;

-- How many payments were successful vs failed?
select status,count(*) as payments
from payments
where status != 'pending'
group by status;

-- What is the monthly revenue with running total over time?
select date_format(payment_date,'%Y-%M') as month,
		sum(amount) as monthly_revenue,
        sum(sum(amount)) over (order by date_format(payment_date, '%Y-%M')) as running_total
from payments
group by date_format(payment_date,'%Y-%M');
