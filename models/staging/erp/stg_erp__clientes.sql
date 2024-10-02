with
    fonte_clientes as (
        select *
        from {{ source('erp_northwind', 'customer') }}
    )

    , organizado as (
        select
            cast(ID as varchar) as pk_cliente
            , cast(COMPANYNAME as varchar) as nome_empresa
            , cast(CONTACTNAME as varchar) as nome_cliente
            , cast(CONTACTTITLE as varchar) as cargo_cliente
            , cast(CITY as varchar) as cidade_cliente
            , cast(REGION as varchar) as regiao_cliente
            , cast(COUNTRY as varchar)
            --, cast(ADDRESS as varchar)
            --, cast(POSTALCODE as varchar)
            --, cast(PHONE as varchar)
            --, cast(FAX as varchar)

        from fonte_clientes
    )

select *
from organizado