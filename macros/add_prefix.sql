{% macro add_prefix(column_name) %}
    'WHATS_UPDATED_PREFIX_' || {{ column_name }}
{% endmacro %}