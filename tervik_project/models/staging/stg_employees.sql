with src as (
  select *
  from {{ source('data_tervik', 'employees') }}
)
select * from src
