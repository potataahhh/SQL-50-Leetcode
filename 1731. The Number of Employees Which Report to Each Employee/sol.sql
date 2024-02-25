# Write your MySQL query statement below
select e.employee_id,e.name,count(e1.employee_id) as reports_count , round(avg(e1.age)) as average_age 
from Employees e INNER JOIN Employees e1
on e.employee_id = e1.reports_to
group by e.employee_id
order by employee_id
