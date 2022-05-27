-- types
--  LIKE, NOT LIKE, BETWEEN, NOT BETWEEN, IN, NOT IN


-- consulta dos produtos com valores entre 100_000 e 200_000

SELECT * 
FROM sales.customers
WHERE price >= 100000 AND price <= 200000


-- consulta dos produtos com valores entre 100_000 e 200_000

SELECT *
FROM sales.customers
WHERE price BETWEEN 100000 AND 200000

-- consulta dos produtos com valores abaixo de 100_000 e acima 200_000

SELECT *
FROM sales.products
WHERE price < 100000 OR price > 200000

-- consulta dos produtos com valores abaixo de 100_000 e acima 200_000

SELECT *
FROM sales.customers
WHERE price BETWEEN 100000 OR 200000

-- consulta de produtos das marcas especificas sem o comando IN

SELECT *
FROM sales.products
WHERE brand = 'HONDA' OR brand = 'TOYOTA' OR brand = 'RENAULT'

-- consulta de produtos das marcas especificas com comando IN

SELECT *
FROM sales.products
WHERE brand IN ('HONDA', 'TOYOTA', 'RENAULT')

-- ineverte o resultado da consulta

SELECT *
FROM sales.products
WHERE brand NOT IN ('HONDA', 'TOYOTA', 'RENAULT')

-- command LIKE

SELECT *
FROM sales.customers
WHERE first_name LIKE '%ANA'
-- %char = qualquer caracter antes
-- char% = qualquer caracter depois
-- %char% = qualquer caracter antes e depois

-- command ILIKE
-- case insensitive (sem diferenciar maiusculas e minusculas)

SELECT *
FROM sales.customers
WHERE first_name ILIKE '%ANA'

-- command IS NULL
-- consulta as linhas com valores nulos

SELECT *
FROM temp_tables.regions
WHERE population IS NULL