with src as (
  select *
  from {{ source('data_tervik', 'purchase_orders') }}
)
select * from src
