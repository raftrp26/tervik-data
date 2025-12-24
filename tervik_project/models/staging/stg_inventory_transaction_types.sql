with src as (
  select *
  from {{ source('data_tervik', 'inventory_transaction_types') }}
)
select * from src
