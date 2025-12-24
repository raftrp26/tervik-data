with src as (
  select *
  from {{ source('data_tervik', 'strings') }}
)
select * from src
