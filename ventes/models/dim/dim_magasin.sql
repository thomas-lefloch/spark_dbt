select 
    {{dbt_utils.generate_surrogate_key(['magasin_nom', 'magasin_region'])}} as magasin_id,
    magasin_nom, 
    magasin_type,
    magasin_region 
from {{ref('stg_vente')}}