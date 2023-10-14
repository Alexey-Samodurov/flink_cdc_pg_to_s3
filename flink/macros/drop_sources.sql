{% macro drop_sources() %}
    {% if execute %}
        {% for node in graph.sources.values() -%}
            {% set flink_source_sql %}
                DROP TABLE IF EXISTS {{ node.identifier }};
            {% endset %}
            {{ log("Source " ~ node.identifier ~ " drop ... ") }}
            {% set source_drop_results = run_query(flink_source_sql) %}
            {{ log("Source " ~ node.identifier ~ " drop result " ~ source_drop_results) }}
        {%- endfor %}
    {% endif %}
{% endmacro %}