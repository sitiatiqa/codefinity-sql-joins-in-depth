-- Write your code here
select o.order_id, o.order_date, o.amount, c.name as customer_name
from customers c
right join orders o on c.customer_id = o.customer_id
 