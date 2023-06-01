--Consulta 1
SELECT od.order_id,
    P.product_name as "Nome do produto",
    od.quantity as "Quantidade vendidos",
    e.first_name + ' ' + e.last_name as "Vendedor",
    P.unit_price as "Preço de tabela", 
    OD.unit_price as "Preço de venda",
    (P.unit_price-OD.unit_price) as "Diferença",
    od.discount as "Desconto"
from products as P inner join order_details as OD on P.product_id = OD.product_id  
inner join orders as O on O.order_id = OD.order_id 
inner join employees as e on e.employee_id = o.employee_id 
where od.unit_price < p.unit_price
order by (P.unit_price-OD.unit_price) desc;

-- Consulta 2
SELECT 
    e.first_name + ' ' + e.last_name Nome,
    sum(od.unit_price * od.quantity) vendas
from products as P inner join order_details as OD on P.product_id = OD.product_id  
inner join orders as O on O.order_id = OD.order_id 
inner join employees as e on e.employee_id = o.employee_id 
where DATE_PART(year, o.order_date) = 2022
group by nome
order by vendas desc;

-- Consulta 3
select product_name, quantity_per_unit, unit_price from products
order by unit_price desc
limit 10;

--Consulta 4
with con2021  as (
  select sup.supplier_id id, sup.company_name fornecedor, sum(od.unit_price * od.quantity) total_2021 from order_details od
  inner join products p on (p.product_id = od.product_id)
  inner join suppliers sup on (sup.supplier_id = p.supplier_id)
  inner join orders o on (o.order_id = od.order_id)
  where DATE_PART(year, o.order_date) = 2021
  group by id, fornecedor
), con2022 as (
  select sup.supplier_id id, sup.company_name fornecedor, sum(od.unit_price * od.quantity) total_2022 from order_details od
  inner join products p on (p.product_id = od.product_id)
  inner join suppliers sup on (sup.supplier_id = p.supplier_id)
  inner join orders o on (o.order_id = od.order_id)
  where DATE_PART(year, o.order_date) = 2022
  group by id, fornecedor   
), total_2anos as (
  select  con2022.id, con2021.fornecedor, total_2022 - total_2022 resultado from con2021 
  inner join con2022 on (con2021.id = con2022.id)
  order by resultado desc
)
  select * from total_2anos;

--Consulta 5
with result as (
  select  c.category_name categoria, DATE_PART(year, o.order_date) ano, 
  sum(od.unit_price * od.quantity - od.discount) total ,
  row_number() over (partition by ano order by ano,total desc) as res 
  from categories c
  inner join products p on (c.category_id = p.category_id)
  inner join order_details od on (p.product_id = od.product_id)
  inner join orders o on (o.order_id = od.order_id)
  group by categoria, ano
),
filtro as (
  select * from result where res <=5
)
  select categoria, ano, total from filtro