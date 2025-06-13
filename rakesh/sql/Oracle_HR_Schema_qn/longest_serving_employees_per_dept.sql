-- Problem: For each department, list the employee(s) with the earliest hire date.

select 
    full_name
    , department_name
    , hire_date
    , rank
from (
    select
        e.first_name || ' ' || e.last_name as full_name
        , d.department_name
        , e.hire_date
        , rank() over (partition by e.department_id order by e.hire_date) as rank
    from 
        oehr_employees e
    inner join
        oehr_departments d
    on 
        e.department_id = d.department_id
) t1
where
    rank = 1;



