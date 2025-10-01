select 
    {{dbt_utils.generate_surrogate_key(['client_nom', 'client_age', 'client_ville'])}} as client_id,
    client_nom, 
    client_age, 
    client_ville 
from {{ref('stg_vente')}}
group by client_nom, client_age, client_ville 