with src as (
  select *
  from {{ source('data_tervik', 'privileges') }}
)
select * from src
