/* Write your T-SQL query statement below */
select vs.customer_id,count(*) as count_no_trans from visits vs 
left join transactions ts on vs.visit_id = ts.visit_id
where ts.transaction_id is null
group by vs.customer_id
order by count_no_trans