# Write your MySQL query statement below
select w.id as id 
from weather w INNER JOIN weather w2
where w.temperature > w2.temperature
and datediff(w.recorddate,w2.recorddate)=1;
