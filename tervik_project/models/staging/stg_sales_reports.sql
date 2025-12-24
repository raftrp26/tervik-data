with src as (
  select *
  from {{ source('data_tervik', 'sales_reports') }}
)
select * from src
