-- criação de coluna calculada

SELECT * 
FROM sales.customers
LIMIT 10;

-- calular a idade do cliente

SELECT
    email, 
    birth_date, 
    (current_date - birth_date) / 365 AS age
FROM sales.customers


-- seleção das 10_000 primeiras linhas
SELECT
    email, 
    birth_date, 
    (current_date - birth_date)/365 AS age
FROM sales.customers
ORDER BY age DESC
LIMIT 10000

-- criar uma coluna com nome completo
SELECT

    first_name || ' ' || last_name AS full_name 

FROM sales.customers
LIMIT 10000


