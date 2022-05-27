-- types 
-- =, <, >, <=, >=, <>, <=>
-- !=, ~=, ~, ~*, ~|, ~&, ~^, ~<<, ~>>


-- consulta no banco de dados quais os profissionais que são 'ctl'
SELECT
    customer_id, 
    first_name,
    professional_status
	
FROM sales.customers
WHERE professional_status = 'clt'

-- 
SELECT
    customer_id, 
    first_name,
    professional_status,
	( professional_status = 'clt' ) AS cliente_clt
	
FROM sales.customers
-- WHERE professional_status = 'clt'
