/* Write your T-SQL query statement below */
with cte as (select * from students st 
cross join subjects sb)
select ct.student_id,ct.student_name,ct.subject_name,count(et.subject_name) as attended_exams  from cte ct
left join examinations et 
on ct.student_id = et.student_id and ct.subject_name = et.subject_name
--order by ct.student_id
group by ct.student_id,ct.student_name,ct.subject_name


