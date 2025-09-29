select
    id_transaction,
    {{dbt_utils.generate_surrogate_key(['produit_nom'])}} as produit_id,
    {{dbt_utils.generate_surrogate_key(['magasin_nom', 'magasin_region'])}} as magasin_id,
    {{dbt_utils.generate_surrogate_key(['client_nom', 'client_age'])}} as client_id,
    date,
    quantite,
    montant_total
from {{ref('stg_vente')}}
