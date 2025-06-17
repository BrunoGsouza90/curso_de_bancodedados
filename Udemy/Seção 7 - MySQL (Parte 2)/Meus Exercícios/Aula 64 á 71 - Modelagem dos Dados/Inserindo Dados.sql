# Inserindo dados de teste.
USE farmacia;

-- Tipos Produtos.
DESCRIBE tipos_produtos;

INSERT INTO tipos_produtos
(tipo)
VALUES
('Remedios'), 
('Cosméticos'), 
('Diversos');

SELECT * FROM tipos_produtos;

-- Fabricantes.
DESCRIBE fabricantes;

INSERT INTO fabricantes
(fabricante)
VALUE
('Roche'),
('Vitalis'),
('Palmolive');

SELECT * FROM fabricantes;

-- Médicos.
DESCRIBE medicos;

INSERT INTO medicos
(nome, crm)
VALUES
('Alfredo Muniz', '123123SP'),
('Fernanda Silva', '3423423MG'),
('Julieta Santana', '56546SC');

SELECT * FROM medicos;

-- Clientes.
DESCRIBE clientes;

INSERT INTO clientes
(nome, endereco, telefone, cep, localidade, cpf)
VALUES
('Felicity Jones','Rua da Paz, 34','(11) 2345-8899','34.467-898','Santos', '234.789.433-98'),
('Angelina Jolie','Rua do Ipiringa, 456','(21) 7544-3234','56.654-567','Rio de Janeiro','345.678.234-12'),
('Ricardo Chavez','Rua Certa, 678','(21) 2678-3984','12.4569-223','Planaltina','786.123.445-31');

SELECT * FROM clientes;

-- Produtos.
DESCRIBE produtos;
SELECT * FROM tipos_produtos;
SELECT * FROM fabricantes;

INSERT INTO produtos
(nome, designacao, composicao, preco_venda, id_tipo_produto, id_fabricante)
VALUES
('Dipirona','Dores em Geral','Metilpropileno','12.44','1','1'),
('Sabonete','Limpeza','Álcali','3.56','2','2'),
('Protetor Solar','Proteção de Pele','Soro de Abacate','98.12','2','1');

SELECT * FROM produtos;

-- Compras.
DESCRIBE compras;

INSERT INTO compras
(id_cliente, data)
VALUES
('1','2019-03-10'),
('2','2019-05-15'),
('1','2019-05-18');

SELECT * FROM compras;

-- Produtos Compra.
DESCRIBE produtos_compra;
SELECT * FROM compras;
SELECT * FROM produtos;

INSERT INTO produtos_compra
(id_compra, id_produto, quantidade)
VALUES
('1','1','2'),
('1','2','3'),
('2','3','1');

SELECT * FROM produtos_compra;

-- Receitas Médicas.
DESCRIBE receitas_medica;
SELECT * FROM produtos_compra;
SELECT * FROM medicos;

INSERT INTO receitas_medica
(id_produto_compra, id_medico, receita)
VALUES
('1','1','receitas.pdf'),
('3','2','receitas2.pdf');

SELECT * FROM receitas_medica;