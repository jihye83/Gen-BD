CREATE DATABASE DB_GENERATION_GAME_ONLINE;
USE DB_GENERATION_GAME_ONLINE;

CREATE TABLE TB_CLASSE(
ID BIGINT AUTO_INCREMENT,
POSICAO VARCHAR(100) NOT NULL,
PRIMARY KEY(ID)
);
ALTER TABLE TB_CLASSE ADD (HABILIDADE VARCHAR (100) NOT NULL);

CREATE TABLE TB_PERSONAGEM(
ID BIGINT AUTO_INCREMENT,
NOME VARCHAR(100) NOT NULL,
NIVEL INT NOT NULL,
PODER_ATAQUE INT NOT NULL,
PODER_DEFESA INT NOT NULL,
CLASSE_ID BIGINT,
PRIMARY KEY (ID),
FOREIGN KEY (CLASSE_ID) REFERENCES TB_CLASSE(ID)
);
-- 4 --
INSERT INTO TB_CLASSE(POSICAO, HABILIDADE)
values("ARQUEIRO","FOGO"),
("MAGO", "GELO"),
("LUTADOR", "ELETRICO"),
("ESPADA","AGUA"),
("VOADIR","VENTO");
-- 5--
INSERT INTO TB_PERSONAGEM(NOME, NIVEL, PODER_ATAQUE, PODER_DEFESA,CLASSE_ID)
VALUES ("LORD",50,4000,2600,1),
("NICK",30,2000,5000,2),
("MELDY",40,1000,2600,1),
("LAY",20,3000,2600,3),
("CHEETOS",10,500,3600,5),
("PINGO",8,600,4600,4),
("SNOW",70,1800,1600,3),
("TWIST",25,1500,2600,4);

SELECT * FROM TB_CLASSE;
SELECT * FROM TB_PERSONAGEM;
-- 6 --
SELECT * FROM TB_PERSONAGEM WHERE PODER_ATAQUE > 2000;
-- 7 --
SELECT * FROM TB_PERSONAGEM WHERE PODER_DEFESA > 1000 AND PODER_DEFESA <2000;
-- 8 --
SELECT * FROM TB_PERSONAGEM WHERE NOME LIKE "%C%"; 
-- 9 --
SELECT * FROM TB_PERSONAGEM INNER JOIN tb_classe ON
tb_personagem.CLASSE_ID = tb_classe.ID;
-- 10 --
SELECT * FROM TB_PERSONAGEM INNER JOIN tb_classe ON
tb_personagem.CLASSE_ID = tb_classe.ID WHERE POSICAO = "ARQUEIRO";
