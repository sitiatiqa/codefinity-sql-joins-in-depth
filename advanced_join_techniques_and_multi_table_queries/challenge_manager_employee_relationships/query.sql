-- Write your code here
SELECT 
    e.name AS employee_name,
    m.name AS manager_name
    
FROM 
    employees e
LEFT JOIN 
    employees m ON m.employee_id = e.manager_id;
