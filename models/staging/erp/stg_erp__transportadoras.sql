with
    fonte_transportadoras as (
        select
            cast(ID as int) as pk_transportadora
            , cast(COMPANYNAME as varchar) as nome_companhia
        from {{ source('erp_northwind', 'shipper') }}
    )
select *
from fonte_transportadoras