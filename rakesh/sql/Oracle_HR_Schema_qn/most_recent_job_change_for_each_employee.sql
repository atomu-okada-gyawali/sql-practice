-- 1. Most Recent Job Change for Each Employee
--  Problem:
-- List each employee’s most recent job change (if they have any), showing:
-- ・Employee name
-- ・New job title
-- ・Start date
-- ・Department name

-- my first solution: without using rank over
--recent_job(rj): 
with recent_job as (
    select 
        e.employee_id
        , e.first_name || ' ' || e.last_name as full_name
        , max(jh.start_date) last_job_start_date
    from 
        oehr_job_history jh
    inner join 
        oehr_employees e
    on 
        jh.employee_id = e.employee_id
    group by 
        e.employee_id, e.first_name || ' ' || e.last_name
)
select 
   rj.full_name
  , j.job_title
   , jh.start_date
   , d.department_name
from 
    oehr_departments d
inner join 
    oehr_employees e
on 
    d.department_id = e.department_id
inner join 
    oehr_jobs j
on 
    j.job_id = e.job_id
inner join 
    oehr_job_history jh
on 
    jh.job_id = j.job_id
inner join 
    recent_job rj
on 
    rj.employee_id = e.employee_id -- TODO: Check whether join is correct
and 
    rj.employee_id = jh.employee_id 
and 
    jh.start_date = rj.last_job_start_date
;
