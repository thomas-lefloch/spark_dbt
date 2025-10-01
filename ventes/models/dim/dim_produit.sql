select
    {{dbt_utils.generate_surrogate_key(['produit_nom', 'produit_categorie', 'produit_marque', 'prix_catalogue' ])}} as produit_id,
    produit_nom, 
    produit_categorie, 
    produit_marque, 
    prix_catalogue 
from {{ref('stg_vente')}}
group by produit_nom, produit_categorie, produit_marque, prix_catalogue 