{% macro distinct_pmt_methods() %}

    {% set query %}
        select distinct paymentmethod from payments
    {% endset %}

    {% if execute %}
        {% set results = run_query(query).columns[0].values() %}
        {{ log('SQL results ' ~ results, info = True)}}

        {{ return(results) }}

    {% endif %}

{% endmacro %}