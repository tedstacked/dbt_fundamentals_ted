{% macro generate_schema_name(custom_schema_name=none, node=none) -%}

    {%- set default_schema = target.schema -%}
    {%- if custom_schema_name is none -%}

        {{ default_schema }}

    {%- elif target.name == 'ci' -%}

        {{ custom_schema_name | trim }}

    {%- else -%}

        {{ custom_schema_name | trim }}

    {%- endif -%}

{%- endmacro %}