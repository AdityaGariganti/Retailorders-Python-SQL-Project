-- find top 10 highest reveue generating products 

select product_id ,sum(sale_price) as sales
from df_orders
group by product_id
order by sales desc limit 10;

-- find top 5 highest selling products in each region

select region,product_id,sales from
(select region,product_id ,sales,
rank()over(partition by region order by sales desc ) as rn
from
(select region,product_id ,sum(sale_price) as sales
from df_orders
group by region,product_id
order by region,sales desc) as a) as b
where rn <=5 ;

-- find month over month growth comparison for 2022 and 2023 sales
-- eg : jan 2022 vs jan 2023

select order_month
,sum(case when order_year=2022 then sales else 0 end ) as sales_2022
,sum(case when order_year=2023 then sales else 0 end ) as sales_2023
from
(select year(order_date) as order_year,month(order_date) as order_month,
sum(sale_price) as sales
from df_orders
group by year(order_date),month(order_date)
)as a
group by order_month
order by order_month;

-- for each category which month had highest sales 

select category ,order_year_month ,sales
from
(select category ,order_year_month ,sales,
rank()over(partition by category order by sales)as rn
from
(select category, date_format(order_date,'%y%m') as order_year_month,
sum(sale_price) as sales
from df_orders
group by category, date_format(order_date,'%y%m'))as a)as b
where rn =1;

-- which sub category had highest growth by profit in 2023 compare to 2022

select sub_category,sales_2022,sales_2023 ,(sales_2023-sales_2022)
from
(select sub_category
,sum(case when order_year=2022 then sales else 0 end ) as sales_2022
,sum(case when order_year=2023 then sales else 0 end ) as sales_2023
from
(select sub_category , year(order_date) as order_year,
sum(sale_price) as sales
from df_orders
group by sub_category,year(order_date)
)as a
group by sub_category
)as b
group by sub_category,sales_2022,sales_2023
order by  (sales_2023-sales_2022) desc limit 1;
