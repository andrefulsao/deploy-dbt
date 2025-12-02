-- models/staging/stg_customers.sql

-- IMPORT
with sources as (
    select * from {{ ref('raw_customers') }}
),

-- LOGICA DE NEGOCIO
with renamed_and_cleaning as(
    select
        customer_id,
        company_name,
        contact_name,
        contact_title,
        address,
        city,
        region,
        postal_code,
        country,
        phone,
        fax
    from
        sources
),

-- QUERY FINAL
select * from renamed_and_cleaning