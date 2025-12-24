with src as (
  select *
  from {{ source('data_tervik', 'purchase_order_status') }}
)
select * from src
