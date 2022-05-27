-- types
-- COUNT
-- SUM
-- AVG
-- MAX
-- MIN


-- count(*)

SELECT COUNT(*) 
FROM sales.funnel; -- retorna o numero de linhas

-- count(*)

SELECT COUNT(paid_date)
FROM sales.funnel

-- count(*) de uma coluna

SELECT COUNT(product_id)
FROM sales.funnel
WHERE visit_page_date BETWEEN '2021-01-01' AND '2021-01-31';

-- contagem distinta

SELECT COUNT( DISTINCT product_id)
FROM sales.funnel
WHERE visit_page_date BETWEEN '2021-01-01' AND '2021-01-31';

-- consulta dos preços(max, min, avg) da tabela products

SELECT 
    MAX(price), 
    MIN(price), 
    AVG(price)
FROM sales.products;


-- consulta do produto mais caro da tabela products

SELECT 
    MAX(price) AS produto_mais_caro
FROM sales.products;

-- consulta do produto mais caro da tabela products usando subquery
SELECT *
FROM sales.products
WHERE price = (
    SELECT MAX(price)
    FROM sales.products
);




