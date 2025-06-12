--Question 3: Find Employees Earning More Than Their Manager (Standard)
-- List employees who earn more than their own manager.
-- Show employee name, salary, manager name, and manager salary.
select 
    e.first_name || ' ' ||e.last_name as employee_name
    , e.salary
    , m.first_name || ' ' || m.last_name as manager_name
    , m.salary
from 
    oehr_employees e
inner join 
    oehr_employees m 
on 
    e.manager_id = m.employee_id -- employee's manager_id is manager's employee_id
where 
    e.salary > m.salary
order by 
    e.employee_id, e.salary;
    
