with
    matriz_clientes as (
        select *
        from {{ ref('stg_erp__clientes') }}
    )

select *
from matriz_clientes