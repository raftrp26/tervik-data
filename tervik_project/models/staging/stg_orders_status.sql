with src as (
  select *
  from {{ source('data_tervik', 'orders_status') }}
)
select * from src
