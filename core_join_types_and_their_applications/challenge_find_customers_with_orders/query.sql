-- Write your code here
select customers.name, customers.customer_id, orders.order_id, orders.customer_id
from customers
inner join orders on customers.customer_id = orders.order_id;