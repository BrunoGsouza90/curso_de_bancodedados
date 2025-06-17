-- Exlcuindo Dados.

SELECT * FROM produtos_compra;
SELECT * FROM receitas_medica;

DELETE FROM receitas_medica
WHERE id = '2';

DELETE FROM produtos_compra
WHERE id = '3';