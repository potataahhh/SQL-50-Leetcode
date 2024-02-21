# Write your MySQL query statement below
select e2.unique_id , e1.name 
from Employees e1 LEFT JOIN EmployeeUNI e2
on e2.id = e1.id;
