with src as (
  select *
  from {{ source('data_tervik', 'order_details_status') }}
)
select * from src
