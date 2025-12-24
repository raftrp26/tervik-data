with src as (
  select *
  from {{ source('data_tervik', 'inventory_transactions') }}
)
select * from src
