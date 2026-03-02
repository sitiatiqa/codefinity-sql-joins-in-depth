-- Write your code here
select employees.name as employee_name, projects.project_name, departments.department_name
from employees
inner join assignments on employees.employee_id = assignments.employee_id
inner join projects on projects.project_id = assignments.project_id
inner join departments on projects.department_id = departments.department_id;