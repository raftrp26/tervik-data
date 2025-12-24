with src as (
  select *
  from {{ source('data_tervik', 'orders_tax_status') }}
)
select * from src
