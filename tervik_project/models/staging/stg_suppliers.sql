with src as (
  select *
  from {{ source('data_tervik', 'suppliers') }}
)
select * from src
