-- Write your code here
select students.name as student_name,
       COALESCE(classes.class_name, 'Unassigned') AS class_name
from students
left join classes on classes.class_id = students.class_id;