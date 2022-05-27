-- Ordena a seleção de acordo com uma regra definida.
/*

SELECT coluna1, coluna2, coluna3
FROM schema_1.tabela_1
WHERE condição_x = true
ORDER BY coluna1 -> qual coluna queremos ordenar

*/

SELECT * 
FROM sales.products
ORDER BY price

SELECT * 
FROM sales.products
ORDER BY price DESC; -- Ordenação decrescente


-- ordenação de dados de texto
-- padrão ( ordem alfabetica )

SELECT state
FROM sales.customers
ORDER BY state


