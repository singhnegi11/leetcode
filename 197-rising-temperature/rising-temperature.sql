/* Write your T-SQL query statement below */
with cte as (select *,lag(temperature) over (order by recorddate) as prev_temp,
lag(recorddate) over (order by recorddate) as prev_day from weather)
select id from cte 
where temperature> prev_temp and datediff(day,prev_day,recorddate) = 1

--select *,lag(temperature) over (order by recordDate)  FROM Weather