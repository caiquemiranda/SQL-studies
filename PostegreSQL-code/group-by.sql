-- agrupamento de registros de uma coluna


-- calcule o numero de clientes da tabela customers por estado
SELECT 
	state,
	COUNT(*)
FROM sales.customers
GROUP BY state;

-- 

SELECT 
	state,
	COUNT(*) AS contagem
FROM sales.customers
GROUP BY state
ORDER BY contagem DESC

--  calcule o numero de clientes da tabela customers por estado e status profissional

SELECT 
    state,
    professional_status, 
    COUNT(*) AS contagem

FROM sales.customers
GROUP BY state, professional_status
ORDER BY state, contagem DESC;

-- seleção de estaados distintos na tabela customers utilizando o agrupamento

SELECT 
    DISTINCT state
FROM sales.customers

--

SELECT state
FROM sales.customers
GROUP BY state