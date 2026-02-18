-- Write your code here
select c.customer_id, c.name, o.amount
from customers c
left join orders o on c.customer_id = o.customer_id
order by c.customer_id, o.order_id;