-- limitar numero de linhas em consultas
-- util em exploração para não fazer uma consulta muito pesada

/*

SELECT coluna1, coluna2, coluna3
FROM schema_1.tabela_1
WHERE condição_x = true
ORDER BY coluna1
LIMIT 10; -> limita a consulta a 10 linhas

*/

-- consulta simples

SELECT *
FROM sales.funnel
LIMIT 10

-- consulta dos 10 produtos mais caros da tabela products

SELECT * 
FROM sales.products
ORDER BY price DESC
LIMIT 10

