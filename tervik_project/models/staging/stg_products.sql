with src as (
  select *
  from {{ source('data_tervik', 'products') }}
)
select * from src
