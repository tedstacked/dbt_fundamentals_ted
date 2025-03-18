
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
<<<<<<< HEAD:models/my_first_dbt_model.sql
    select null as id
=======

    select 6 as id


>>>>>>> b655cd9f12c3fbbcfd9874ff1a9302f23a681cb7:models/marts/finance/example.sql

)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
