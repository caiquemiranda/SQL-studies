-- criação do banco de dados
CREATE DATABASE meu_banco;

-- usando o banco de dados criado
Use meu_banco;

-- criando a tabela
CREATE TABLE minha_tabela (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

-- inserindo dados na tabela
INSERT INTO minha_tabela (nome, email)
VALUES ('João', 'joão@meuemail.com');

-- auterando dados na tabela
UPDATE minha_tabela SET nome = 'João' WHERE id = 8;

-- deletando dados na tabela
DELETE FROM minha_tabela WHERE id = 8;

-- selecionando dados na tabela com condição
SELECT * FROM minha_tabela WHERE nome = 'João';

-- lista de banco de dados
SHOW DATABASES;

-- mostrando tabelas do banco de dados
SHOW TABLES;

-- mostrado todos os campos da tabela
DESCRIBE meu_banco.minha_tabela;

DESCRIBE minha_tabela;

-- criando usuario
CREATE USER 'maria'@'%' IDENTIFIED BY 'senha';

-- concedendo acesso basico para uso de um banco especifico
GRANT SELECT, INSERT, UPDATE ON meu_banco.* TO 'maria'@'localhost';

-- concedendo todos os privilégios do banco para um usuario 
GRANT ALL ON *.* TO 'maria'@'localhost' WITH GRANT OPTION;

-- deve evitar usar palavras reservadas, caso use,  coloque entre os delimidatores `palavra_reservada`
CREATE TABLE `tabela`
(
	`primeiro_nome` VARCHAR(30)
);    

-- a consulta deve conter os delimitadores tambem  `palavra_reservada`
SELECT `primeiro_nome` FROM `tabela` WHERE `primeiro_nome` LIKE 'a%';

-- comando mostra todas as consultas ativas e dormecidas
SELECT * FROM information_schema.PROCESSLIST ORDER BY INFO DESC, TIME DESC;

-- mostrando de forma mais detalhada
SELECT ID, USER, HOST, DB, COMMAND, 
TIME as time_seconds,
ROUND(TIME/60, 2) as time_minutes,
ROUND(TIME/60 /60,2) as time_hours,
STATE, INFO
FROM information_schema.PROCESSLIST ORDER BY INFO DESC, TIME DESC;

-- forma fácil de consulta de procedimentos por palavras chave
SELECT * FROM information_schema.ROUTINES WHERE ROUTINE_DEFINITION LIKE '%word';