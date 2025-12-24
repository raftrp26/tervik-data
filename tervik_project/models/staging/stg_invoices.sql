with src as (
  select *
  from {{ source('data_tervik', 'invoices') }}
)
select * from src
