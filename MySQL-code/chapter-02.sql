-- SELECT

-- criando tabela carro
CREATE TABLE `carros`
(
    `car_id` INT UNSIGNED NOT NULL PRIMARY KEY,
    `name` VARCHAR(20) NOT NULL,
    `price` DECIMAL(8,2) NOT NULL,
);

-- inserindo dados na tabela carro
INSERT INTO `carros` (`carros_id`, `nome`, `preço`) VALUES (1, 'Audi A1', '20000');
INSERT INTO `carros` (`carros_id`, `nome`, `preço`) VALUES (2, 'Audi A2', '15000');
INSERT INTO `carros` (`carros_id`, `nome`, `preço`) VALUES (3, 'Audi A3', '40000');
INSERT INTO `carros` (`carros_id`, `nome`, `preço`) VALUES (4, 'Audi A4', '40000');
INSERT INTO `carros` (`carros_id`, `nome`, `preço`) VALUES (5, 'Audi TT', '50000');
INSERT INTO `carros` (`carros_id`, `nome`, `preço`) VALUES (6, 'Audi Q3', '50000');

-- coletando dados da tabela carro
SELECT DISTINCT `nome`, `preço` FROM `carros`;

/* 
Query 

SELECT * FROM stack;

*/
