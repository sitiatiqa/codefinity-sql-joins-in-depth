-- Write your code here
select e.employee_id, e.name
from employees e
left join assignments a on e.employee_id = a.employee_id
where a.assignment_id is null;