-- Write your code here
select a.assignment_id, e.name as employee_name, p.project_name, department_name
from employees e
join assignments a on a.employee_id = e.employee_id
join projects p on p.project_id = a.project_id
join departments d on d.department_id = p.department_id;