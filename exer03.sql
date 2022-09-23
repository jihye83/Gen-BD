CREATE DATABASE DB_ESCOLA;
USE DB_ESCOLA;
CREATE TABLE TB_ALUNOS(
ID INT AUTO_INCREMENT,
NOME VARCHAR(100),
TURMA CHAR(30),
NOTA FLOAT(2,1),
PRIMARY KEY (ID)
);

INSERT INTO TB_ALUNOS (NOME, TURMA, NOTA)
VALUES ("Alex", "9ano", 8.8),
		("Aline", "9ano", 9.0),
        ("Danilo","9ano",4.5);
        
SELECT * FROM TB_ALUNOS;

-- PEDINDO PARA MOSTRAR SOMENTE ID, NOME E NOTA DO ALUNO --
SELECT ID, NOME, NOTA FROM TB_ALUNOS WHERE NOTA > 7.0;
SELECT NOME, NOTA FROM TB_ALUNOS WHERE NOTA < 7.0;

UPDATE TB_ALUNOS SET NOME = "Alex SYK" WHERE ID =1;
