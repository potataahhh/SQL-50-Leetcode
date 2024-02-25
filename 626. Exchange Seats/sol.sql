# Write your MySQL query statement below
select 
if(id%2!=0 and id = (select count(*) from seat), id , if(id%2!=0,id+1,id-1)) as id , student 
from seat order by id;
