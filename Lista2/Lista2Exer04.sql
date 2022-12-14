CREATE DATABASE DB_CIDADE_DOS_VEGETAIS;
USE DB_CIDADE_DOS_VEGETAIS;
-- 1 --
CREATE TABLE TB_CATEGORIAS(
ID INT AUTO_INCREMENT,
CAT VARCHAR (50) NOT NULL, 
ZONA VARCHAR(50) NOT NULL,
PRIMARY KEY (ID)
);
-- 2,3 --
CREATE TABLE TB_PRODUTOS(
ID INT AUTO_INCREMENT, 
NOME VARCHAR(50) NOT NULL,
PRECO DECIMAL(6,2) NOT NULL,
QTD INT NOT NULL,
CAT_ID INT NOT NULL,
PRIMARY KEY (ID),
FOREIGN KEY (CAT_ID) REFERENCES TB_CATEGORIAS(ID)
);
SELECT * FROM TB_CATEGORIAS;
SELECT * FROM TB_PRODUTOS;
-- 4 --
INSERT INTO TB_CATEGORIAS(CAT, ZONA)
VALUES ("FRUTA", "LESTE"),
("VERDURA", "NORTE"),
("FRUTA", "SUL"),
("LEGUME","OESTE"),
("VERDURA", "SUL");
-- 5 --
INSERT INTO TB_PRODUTOS(NOME, PRECO, QTD, CAT_ID)
VALUES ("BANANA", 6.50, 10, 1),
("ALFACE", 2.50, 10, 2),
("MAÇA", 10.50, 10, 3),
("BATATA", 66.50, 10, 4),
("BROCOLES", 78.50, 10, 5),
("UVA", 160.50, 10, 3),
("CEBOLINHA", 56.50, 10, 5),
("BATATA DOCE", 26.50, 10, 4);
-- 6 --
SELECT * FROM TB_PRODUTOS WHERE PRECO > 50.00;
-- 7 USANDO O BETWEEN--
SELECT NOME, PRECO FROM TB_PRODUTOS WHERE PRECO BETWEEN 50.00 AND 150.00;
-- 8 --
SELECT NOME FROM TB_PRODUTOS WHERE NOME LIKE "%C%";
-- 9 PEGANDO OS DADOS DAS DUAS TABELAS E ORDENANDO DECRESCENTE NO CAT_ID--
SELECT NOME, PRECO, QTD, CAT_ID, CAT FROM TB_PRODUTOS INNER JOIN TB_CATEGORIAS ON
TB_PRODUTOS.CAT_ID = TB_CATEGORIAS.ID ORDER BY CAT_ID DESC;
-- 10 --
SELECT NOME, PRECO, QTD, CAT_ID, CAT FROM TB_PRODUTOS INNER JOIN TB_CATEGORIAS ON
TB_PRODUTOS.CAT_ID = TB_CATEGORIAS.ID WHERE CAT = "FRUTA";