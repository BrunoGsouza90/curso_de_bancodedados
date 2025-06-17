CREATE DATABASE IF NOT EXISTS juncao
DEFAULT CHARACTER SET UTF8
DEFAULT COLLATE UTF8_GENERAL_CI;

USE juncao;

CREATE TABLE IF NOT EXISTS profissoes (
id INT NOT NULL AUTO_INCREMENT,
cargo VARCHAR(60) NOT NULL,
PRIMARY KEY(id)
) DEFAULT CHARSET = UTF8;

CREATE TABLE IF NOT EXISTS clientes (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(60) NOT NULL,
data_nascimento DATE NOT NULL,
telefone VARCHAR(10) NOT NULL,
id_profissao INT NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(id_profissao) REFERENCES profissoes(id)
) DEFAULT CHARSET = UTF8;

CREATE TABLE IF NOT EXISTS consumidor (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
contato VARCHAR(50) NOT NULL,
endereco VARCHAR(100) NOT NULL,
cidade VARCHAR(100) NOT NULL,
CEP VARCHAR(20) NOT NULL,
pais VARCHAR(50) NOT NULL,
PRIMARY KEY(id)
) DEFAULT CHARSET = UTF8; 


INSERT INTO profissoes
(cargo)
VALUES
('Progamador'),
('Analista de Software'),
('Suporte'),
('Gerente');

INSERT INTO clientes
VALUES
(DEFAULT,'João Pereira', '1981-06-15', '123-5688','1'),
(DEFAULT, 'Ricardo da Silva', '1973-10-10', '2234-5669', '2'),
(DEFAULT, 'Felipe Oliveira', '1987-08-01', '4234-5640', '3'),
(DEFAULT, 'Mario Pirez', '1991-02-05', '5234-5621', '4');

INSERT INTO consumidor
VALUES
(DEFAULT, 'Alfredo Nunes', 'Maria Nunes', 'Rua da Paz, 47', 'São Paulo', '123-456-87', 'Brasil'),
(DEFAULT, 'Ana Trujilio', 'Guilherme Souza', 'Rua Dourada, 452', 'Goiânia', '232-984-23', 'Brasil'),
(DEFAULT, 'Leando Veloz', 'Pedro Siqueira', 'Rua Vazia, 72', 'São Paulo', '936-738-23', 'Brasil');

-- Junção de Tabelas.

SELECT * FROM profissoes;
SELECT * FROM clientes;
SELECT * FROM consumidor;

-- Consulta WHERE.
SELECT c.id, c.nome AS 'Nome', c.data_nascimento AS 'Data de Nascimento', c.telefone AS 'Contato', p.cargo AS 'Profissão'
	FROM clientes AS c, profissoes AS p
	WHERE c.id_profissao = p.id;
	
-- INNER JOIN.
SELECT c.id, c.nome AS 'Nome', c.data_nascimento AS 'Data de Nascimento', c.telefone AS 'Contato', p.cargo AS 'Profissão'
	FROM clientes AS c INNER JOIN profissoes AS p
	ON c.id_profissao = p.id;
	
-- LETT OUTER JOIN.
SELECT * FROM clientes
LEFT OUTER JOIN profissoes
ON clientes.id_profissao = profissoes.id;

-- RIGHT OUTER JOIN.
SELECT * FROM clientes
RIGHT OUTER JOIN profissoes
ON clientes.id_profissao = profissoes.id;

-- FULL OUTER JOIN.
SELECT * FROM clientes
LEFT OUTER JOIN profissoes
ON clientes.id_profissao = profissoes.id
UNION
SELECT * FROM clientes
RIGHT OUTER JOIN profissoes
ON clientes.id_profissao = profissoes.id;

-- CROSS JOIN.
SELECT c.id, c.nome, c.data_nascimento, c.telefone, p.cargo
FROM clientes AS c
CROSS JOIN profissoes AS p;

-- SELF JOIN.
SELECT a.nome, a.cidade
FROM consumidor AS a
INNER JOIN consumidor AS b
ON a.id <> b.id AND a.cidade = b.cidade
GROUP BY a.nome;
