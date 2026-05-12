/* Write your T-SQL query statement below */
select eu.unique_id,es.name from employees es 
left join EmployeeUNI eu on es.id = eu.id