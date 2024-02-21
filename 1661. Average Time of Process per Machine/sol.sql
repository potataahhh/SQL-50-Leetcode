# Write your MySQL query statement below
select a1.machine_id  , ROUND(SUM(a2.timestamp - a1.timestamp)/ count(*),3) as processing_time 
from Activity a1 INNER JOIN Activity a2
on a1.machine_id = a2.machine_id 
and a1.process_id  = a2.process_id 
and a1.timestamp < a2.timestamp
group by a1.machine_id;
