with src as (
  select *
  from {{ source('data_tervik', 'shippers') }}
)
select * from src
