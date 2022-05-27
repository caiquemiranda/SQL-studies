-- uso de joins
-- left join, right join, inner join, full join


SELECT * 
FROM temp_tables.tabela_1

-- 
SELECT *
FROM temp_tables.tabela_2


-- LEFT JOIN(prioridade a esquerda)

SELECT 
    t1.cpf,
    t1.name,
    t2.state
FROM temp_tables.tabela_1 as t1 
LEFT JOIN temp_tables.tabela_2 as t2 
    ON t1.cpf = t2.cpf


-- INNER JOIN(apenas as que deram match)

SELECT 
    t1.cpf,
    t1.name,
    t2.state
FROM temp_tables.tabela_1 as t1 
INNER JOIN temp_tables.tabela_2 as t2 
    ON t1.cpf = t2.cpf


-- RIGHT JOIN(prioridade a direita)

SELECT 
    t1.cpf,
    t1.name,
    t2.state
FROM temp_tables.tabela_1 as t1 
RIGHT JOIN temp_tables.tabela_2 as t2 
    ON t1.cpf = t2.cpf

-- FULL JOIN(todas as linhas das colunas)

SELECT 
    t1.cpf,
    t1.name,
    t2.state
FROM temp_tables.tabela_1 as t1 
FULL JOIN temp_tables.tabela_2 as t2 
    ON t1.cpf = t2.cpf