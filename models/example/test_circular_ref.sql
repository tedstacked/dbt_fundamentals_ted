SELECT 
    *
FROM {{ ref('downstream_project', 'my_second_dbt_model') }}