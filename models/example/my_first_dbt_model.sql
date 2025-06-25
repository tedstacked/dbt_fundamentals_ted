
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with source_data as (

select 1 as id, 'BR' as region, 10 as weight, '1970-01-01'::date as updated_at
union
select 2 as id, 'WS' as region, 2 as weight, '1970-01-01'::date as updated_at
union
select 3 as id, 'WS' as region, 1 as weight, '1970-01-01'::date as updated_at

)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null