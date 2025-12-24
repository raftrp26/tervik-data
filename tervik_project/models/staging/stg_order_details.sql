with src as (
  select *
  from {{ source('data_tervik', 'order_details') }}
)
select * from src
