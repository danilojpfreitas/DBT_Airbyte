
with dw_faturamento_model as (

select 
	pro.model as "Modelo",
	sum(pro.price) as "Faturamento"
from airbyte_products pro
inner join airbyte_purchases pu
on pro.id = pu.product_id
group by pro.model 
order by 2 desc

)

select * from dw_faturamento_model