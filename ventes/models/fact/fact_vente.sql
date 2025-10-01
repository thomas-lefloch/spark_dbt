select
    id_transaction,
    {{dbt_utils.generate_surrogate_key(['produit_nom', 'produit_categorie', 'produit_marque', 'prix_catalogue' ])}} as produit_id,
    {{dbt_utils.generate_surrogate_key(['magasin_nom', 'magasin_type', 'magasin_region'])}} as magasin_id,
    {{dbt_utils.generate_surrogate_key(['client_nom', 'client_age', 'client_ville'])}} as client_id,
    date,
    quantite,
    montant_total
from {{ref('stg_vente')}}
