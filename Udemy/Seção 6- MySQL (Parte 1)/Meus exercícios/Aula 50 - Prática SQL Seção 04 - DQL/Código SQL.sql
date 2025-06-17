CREATE DATABASE IF NOT EXISTS secao_04
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE secao_04;

CREATE TABLE IF NOT EXISTS tipos_produto (
	codigo INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(30) NOT NULL,
    PRIMARY KEY(codigo)
) DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT exists produtos (
	codigo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(30) NOT NULL,
    preco DECIMAL(8,2) NOT NULL,
    codigo_tipo INT NOT NULL,
    FOREIGN KEY(codigo_tipo) REFERENCES tipos_produto(codigo)
) DEFAULT CHARSET = utf8;

INSERT INTO tipos_produto
(descricao)
VALUES
('Computadores'),
('Impressoras');

INSERT INTO produtos
(descricao, preco, codigo_tipo)
VALUES
('Desktop','1200', 1),
('Laptop','1800', 1),
('Jato de Tinta','300', 2),
('Laser','500', 2);

SELECT * FROM tipos_produto;

SELECT codigo, descricao FROM tipos_produto;

SELECT descricao FROM tipos_produto;

SELECT descricao, codigo FROM tipos_produto;

SELECT * FROM produtos;

SELECT codigo, descricao, preco, codigo_tipo FROM produtos;

SELECT p.codigo AS cod, p.descricao AS descri, p.preco AS pre, p.codigo_tipo AS ctp FROM produtos AS p;

SELECT p.codigo AS 'Código', p.descricao AS 'Descrição', p.preco AS 'Preço', p.codigo_tipo AS 'Tipo Produto' FROM produtos AS p;