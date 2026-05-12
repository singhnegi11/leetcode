/* Write your T-SQL query statement below */
select pt.product_name,sl.year,sl.price from sales sl 
inner join product pt on sl.product_id = pt.product_id