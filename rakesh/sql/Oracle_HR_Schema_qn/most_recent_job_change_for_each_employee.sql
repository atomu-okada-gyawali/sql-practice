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
        e.employee_id,
        e.first_name || ' ' || e.last_name as full_name,
        max(jh.start_date) last_job_start_date
    from
        oehr_job_history jh
        inner join oehr_employees e on jh.employee_id = e.employee_id
    group by
        e.employee_id,
        e.first_name || ' ' || e.last_name
)
select
    rj.full_name,
    j.job_title,
    jh.start_date,
    d.department_name
from
    recent_job rj
    inner join oehr_job_history jh on rj.employee_id = jh.employee_id
    and jh.start_date = rj.last_job_start_date
    inner join oehr_jobs j on j.job_id = jh.job_id
    left join oehr_departments d on d.department_id = jh.department_id;