with src as (
  select *
  from {{ source('data_tervik', 'customer') }}
)
select * from src
