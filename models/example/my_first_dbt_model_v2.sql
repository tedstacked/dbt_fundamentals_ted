/*
    Version 2 of my_first_dbt_model
    This version has different logic from v1
*/

{{ config(materialized='table') }}

with source_data as (
    select 1 as id
    union all
    select 7 as id
    union all
    select 42 as id  -- v2 adds more data
    union all
    select 99 as id
)

select 
    id,
    'v2' as version_label
from source_data