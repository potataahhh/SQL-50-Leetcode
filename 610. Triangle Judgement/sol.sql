# Write your MySQL query statement below
select *,
if(x+y>z and x+z>y and y+z>x,'Yes','No') as triangle 
from Triangle
