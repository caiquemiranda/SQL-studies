-- Remover linhas duplicadas e mostrar apenas linhas distintas

/*

SELECT DISTINCT coluna_1, coluna_2, coluna_3
FROM schema_1.tabela_1

*/

-- Liste as marcas de carro que constam na tabela products
-- sem distinct

SELECT brand 
FROM sales.products
-- retorno de 333 linhas com produtos de marcas diferentes

-- com distinct
SELECT DISTINCT brand 
FROM sales.products
-- retorno de 40 linhas com produtos de marcas diferentes sem repetição


-- seleção de mais de uma coluna com distinct
SELECT DISTINCT brand, model_year
FROM sales.products
-- retorno de 184 linhas com produtos de marcas e anos diferentes sem repetição

