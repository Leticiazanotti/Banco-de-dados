CREATE DATABASE COMERCIO;

USE COMERCIO;

CREATE TABLE PRODUTOS(
ID INT AUTO_INCREMENT,
NOME VARCHAR(30),
MARCA CHAR(40),
QUANTIDADE INT,
PRECO FLOAT,
PRIMARY KEY(ID)

);
SELECT * FROM PRODUTOS;
ALTER TABLE PRODUTOS ADD (CLASSIFICACAO VARCHAR(100));
INSERT INTO PRODUTOS(NOME,MARCA,QUANTIDADE,PRECO,CLASSIFICACAO)
VALUES ("IPHONE 14","APPLE",5,7000,"ELETRONICO"),
("SAMSUNG BOOK","SAMSUNG",3,3000,"ELETRONICO"),
("APPLE WATCH","APLLE",2,2000,"ELETRONICO"),
("GALAXY S24","SAMSUNG",4,4000,"ELETRONICO"),
("FRITADEIRA","MONDIAL",3,350,"ELETRODOMESTICO"),
("GELADEIRA","ELETROLUX",5,3000,"ELETRODOMESTICO"),
("FOGÃO","ELETROLUX",1,1300,"ELETRODOMESTICO"),
("MICROONDAS","ELETROLUX",3,850,"ELETRODOMESTICO");
SELECT * FROM PRODUTOS WHERE PRECO > 500;
SELECT * FROM PRODUTOS WHERE PRECO < 500;
UPDATE PRODUTOS SET PRECO = 400 WHERE ID=5;