-- Write your code here
select c.customer_id, c.name as customer_name, o.order_id, o.order_date,
    case
    WHEN o.order_id IS NULL THEN 'Customer without orders'
    WHEN c.customer_id IS NULL THEN 'Order without customer'
    ELSE 'Matched'
END AS match_status
from customers c
full outer join orders o on c.customer_id = o.customer_id
ORDER BY
  CASE WHEN c.customer_id IS NULL OR o.order_id IS NULL THEN 0 ELSE 1 END,
  c.customer_id NULLS FIRST,
  o.order_id NULLS FIRST;