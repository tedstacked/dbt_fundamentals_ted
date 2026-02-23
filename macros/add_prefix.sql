{% macro add_prefix(column_name) %}
    'UPDATED_PREFIX_' || {{ column_name }}
{% endmacro %}