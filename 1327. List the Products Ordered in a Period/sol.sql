# Write your MySQL query statement below
select p.product_name , sum(o.unit) as unit
from Products p 
left join Orders o
on p.product_id = o.product_id
where o.order_date between '2020-02-01' and '2020-02-29'
group by o.product_id
having unit >=100
order by o.product_id;
