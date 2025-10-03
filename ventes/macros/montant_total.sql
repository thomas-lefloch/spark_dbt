{% macro montant_total(quantite, prix) %}
    ({{ quantite }} * {{ prix }})
{% endmacro %}