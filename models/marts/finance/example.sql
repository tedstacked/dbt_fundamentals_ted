
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with source_data as (

    select 1 as id
    union all
<<<<<<< HEAD
    select 5 as id
=======

    select 4 as id
>>>>>>> 6f06e3b309695e83b5d3f7e00c792e36988906d1




)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
