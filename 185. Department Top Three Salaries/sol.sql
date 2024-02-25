# Write your MySQL query statement below
select d.name as Department  , e.name as Employee , salary
from employee e
LEFT JOIN department d
on e.departmentId = d.Id
where
(
    select count(distinct salary) from employee t
    where t.DepartmentId = d.Id
    and t.salary >= e.salary
    ) <=3
    and d.name is not null;
