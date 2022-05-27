-- Filtro das linhas de uma tabela de acordo com sua condição

/* 

SELECT coluna1, coluna2, coluna3
FROM schema_1.tabela_1
WHERE condição_x = true

*/

-- filtro com condição única
-- filtro de clientes que moram em santa catarina

-- SELECT indentifcador, estado

SELECT email, state
FROM sales.customers
WHERE state = 'SC'


-- filtro com mais de uma condição
-- filtro de clientes que moram em santa catarina e mato grosso do sul

SELECT email, state
FROM sales.customers
WHERE state = 'SC' OR state = 'MS'


-- filtro com uma condição com data
-- filtro de clientes que moram em santa catarina e mato grosso do sul e mais de 30 anos

SELECT email, state, birth_date
FROM sales.customers
WHERE (state = 'SC' OR state = 'MS') AND birth_date < '1992-04-16'