with src as (
  select *
  from {{ source('data_tervik', 'orders') }}
)
select * from src
