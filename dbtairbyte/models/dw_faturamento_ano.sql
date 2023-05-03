
with dw_faturamento_ano as (

select 	
	date_part('year', pu.purchased_at) as "Ano", 
	sum(pro.price) as "Faturamento"
from airbyte_products pro
inner join airbyte_purchases pu
on pro.id = pu.product_id
group by 1
order by 1 desc

)

select * from dw_faturamento_ano