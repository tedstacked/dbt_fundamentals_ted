
-- Use the `ref` function to select from other models

{{ config(materialized='table') }}

-- This model depends on my_first_dbt_model via ref()
-- AND uses the same macro

select 
    id,
    name,
    prefixed_name,
    {{ add_prefix('name') }} as prefixed_name_again
from {{ ref('my_first_dbt_model') }}
where id = 1