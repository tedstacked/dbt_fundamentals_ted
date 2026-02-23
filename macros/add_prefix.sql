{% macro add_prefix(column_name) %}
    'PREFIX_' || {{ column_name }}
{% endmacro %}