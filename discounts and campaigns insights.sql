-- DISCOUNTS AND CAMPAIGN INSIGHTS
-- What is the total discount given per product?
select p.product_name,sum(oi.discount) as total_discount
from products p join order_items oi
on p.product_id = oi.product_id
group by p.product_name;

-- Which order receives discounts?
select distinct order_id
from order_items
where discount > 0
order by order_id;

-- Which products currently have active discounts
select p.product_name
from products p join discounts d
on p.product_id = d.product_id
where d.start_date < sysdate() and 
		d.end_date > sysdate();
        
-- Which product/campaign had a highest discount value?
select p.product_name
from products p join discounts d
on p.product_id = d.product_id
where d.discount_value in (select max(discount_value)
						   from discounts);
                           
-- How effective were discount campaingns(discount vs revenue after discounts)?
select 
    sum(oi.discount * oi.quantity) as total_discount,
    sum(oi.unit_price * oi.quantity) as revenue_without_discount,
    sum((oi.unit_price - oi.discount) * oi.quantity) as revenue_after_discount
from order_items oi;


