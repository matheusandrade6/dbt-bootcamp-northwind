with renamed as (
    select 
        category_id AS id,
        category_name AS name,
        description,
        picture,
        updated_at
    from 
        {{ref('raw_crm__nova_tabela')}} -- jinjas para referenciar tabelas
)

select * from renamed