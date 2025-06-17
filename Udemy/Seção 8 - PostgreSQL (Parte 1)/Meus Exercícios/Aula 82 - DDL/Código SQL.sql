-- Create Table

CREATE TABLE tipos_produto(
	codigo SERIAL PRIMARY KEY,
	descricao VARCHAR(30) NOT NULL
);

CREATE TABLE produtos(
	codigo SERIAL PRIMARY KEY, 
	descricao VARCHAR(30) NOT NULL,
	preco MONEY NOT NULL,
	codigo_tipo INT REFERENCES tipos_produto(codigo) NOT NULL
);


-- Alter Table

ALTER TABLE tipos_produto 
ADD peso DECIMAL(8,2);

SELECT * FROM tipos_produto;

DROP TABLE tipos_produto;
