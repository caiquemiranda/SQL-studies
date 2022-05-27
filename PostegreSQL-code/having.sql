-- filtro de linhas de uma seleção por uma coluna agrupada

-- calculeo numero de clientes por estado filtrando apenas estados acima de 100 clientes

SELECT 
    state,
    COUNT(*) AS contagem_estados
FROM sales.customers
GROUP BY state
HAVING COUNT(*) > 100

-- 

SELECT 
    state,
    COUNT(*) AS contagem_estados
FROM sales.customers
GROUP BY state
HAVING 
    COUNT(*) > 100
    AND state <> 'MG'