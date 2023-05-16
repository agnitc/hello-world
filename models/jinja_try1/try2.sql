{# This is a comment #}
{#
{% set my_cool_string= 'Wow! Cool..' %}
{% set my_second_cool_string = 'this is jinja!' %}
{% set my_cool_number= 100 %}
{% set my_cool_number= 100 %}
{{ my_cool_string }} {{ my_second_cool_string }} I want to write Jinja for {{ my_cool_number }} years!


{% set my_animals = ['lion', 'tiger', 'monkey'] %}

{{ my_animals[0] }}

{% for i in my_animals %}
    select '{{ i }}' as animal {% if not loop.last %} union all {% endif %}
{% endfor %}

{% set temperature = 45 %}

{% if temperature <65 %}
    Time for a cappuccino!
{% else %}
    Time for a cold brew!
{% endif %}
#}

{#
{% set foods = ['carror', 'hotdog', 'cucumber', 'bell pepper'] -%}

{% for food in foods -%}
    {%- if food == 'hotdog' -%}
        {%- set food_type = 'snack' -%}
    {%- else -%}
        {%- set food_type = 'vegetable' -%}
    {%- endif -%}
    The humble {{ food }} is my favourite {{ food_type }}
{% endfor %}

#}

{%- set websters_dict = {
    'word': 'data',
    'speech_part': 'noun',
    'definition': 'if you know you know'
}
-%}

{{ websters_dict['word'] }}

{% for key, value in websters_dict.items() -%}
    {{ key }}: {{ value }}
{% endfor %}