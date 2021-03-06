CREATE DATABASE WEB_POKEDEX

USE WEB_POKEDEX


/*Frescurinha de pokedex, mostar o local onde o pokemon tipicamente aparece*/
CREATE TABLE LOCAIS(
	ID INT IDENTITY PRIMARY KEY,
	LOCAL VARCHAR(50) NOT NULL,
);

CREATE TABLE POKEMON(
	ID INT IDENTITY PRIMARY KEY,
	IDENTIFICACAO VARCHAR(10) UNIQUE NOT NULL,
	NOME VARCHAR(50) NOT NULL,
	ALCUNHO VARCHAR(30) NOT NULL,
	DESCRICAO VARCHAR(500),
	ALTURA VARCHAR(10),
	PESO VARCHAR(10),
	ID_LOCAL INT FOREIGN KEY REFERENCES LOCAIS(ID)
);

CREATE TABLE TIPOS(
	ID INT IDENTITY PRIMARY KEY,
	TIPO VARCHAR(30) NOT NULL UNIQUE,
);

CREATE TABLE TIPO_POKEMON(
	ID_POKE INT FOREIGN KEY REFERENCES POKEMON(ID),
	ID_TIPO INT FOREIGN KEY REFERENCES TIPOS(ID)
);

/*
� A EVOLU��O
E V O L U � � O
*/
CREATE TABLE EVOLUCAO(
	ID_PRE_POKE INT FOREIGN KEY REFERENCES POKEMON(ID),
	ID_EVOLUIDO INT FOREIGN KEY REFERENCES POKEMON(ID)
);

DROP TABLE TIPOS
DROP TABLE LOCAIS
DROP TABLE POKEMON
DROP TABLE EVOLUCAO