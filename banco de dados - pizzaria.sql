CREATE DATABASE DB_PIZZARIA_GEN;

USE DB_PIZZARIA_GEN;

CREATE TABLE TB_CATEGORIAS(
ID BIGINT(5) AUTO_INCREMENT,
TAMANHO VARCHAR(255) NOT NULL,
BORDA VARCHAR(255) NOT NULL,
PRIMARY KEY (ID)
);

CREATE TABLE TB_PIZZAS(
ID BIGINT(5) AUTO_INCREMENT,
SABOR VARCHAR(255) NOT NULL,
EXTRA VARCHAR (255) NOT NULL,
PRECO INT NOT NULL,
CATEGORIAS_ID BIGINT(5),
PRIMARY KEY (ID),
FOREIGN KEY (CATEGORIAS_ID) REFERENCES TB_CATEGORIAS(ID)
 );
 
 SELECT * FROM TB_CATEGORIAS;
 SELECT * FROM TB_PIZZAS;

 INSERT INTO TB_CATEGORIAS(TAMANHO,BORDA)
 VALUES("GRANDE","RECHEADA"),
 ("PEQUENA","NORMAL");
 
 INSERT INTO TB_CATEGORIAS(TAMANHO,BORDA)
 VALUES("Jr","RECHEADA"),
 ("Muito pequena","NORMAL");
 
 INSERT INTO TB_PIZZAS (SABOR,EXTRA,PRECO,CATEGORIAS_ID)
 VALUES("MUSSARELA","QUEIJO",35,1),
 ("CALABRESA","CEBOLA",34,2),
 ("ATUM","CEBOLA",46,3),
 ("FRANGO","CATUPIRY",50,4),
 ("MODA DA CASA","QUEIJO",54,3);
 
 SELECT * FROM TB_PIZZAS WHERE PRECO > 45;
 SELECT * FROM TB_PIZZAS WHERE PRECO BETWEEN 50 AND 100;
 
 SELECT * FROM TB_PIZZAS WHERE SABOR LIKE "M%";
 SELECT * FROM TB_PIZZAS INNER JOIN TB_CATEGORIAS ON TB_PIZZAS.CATEGORIAS_ID = TB_CATEGORIAS.ID;
 SELECT * FROM TB_PIZZAS INNER JOIN TB_CATEGORIAS ON TB_PIZZAS.CATEGORIAS_ID = TB_CATEGORIAS.ID WHERE TAMANHO = "GRANDE";

select * FROM TB_CATEGORIAS;