with src as (
  select *
  from {{ source('data_tervik', 'employee_privileges') }}
)
select * from src
