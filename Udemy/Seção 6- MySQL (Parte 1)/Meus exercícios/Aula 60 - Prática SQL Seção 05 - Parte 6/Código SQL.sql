# Datas e Horas.

-- CURDATE
SELECT CURDATE() AS 'Data Atual';

-- CURTIME

SELECT CURTIME() AS 'Horário Atual';

-- CURRENT_TIME

SELECT CURRENT_TIME() AS 'Horário Atual';

-- DATE_ADD( data, interval(intervalo) )

SELECT DATE_ADD(CURDATE(),INTERVAL 3 DAY) AS 'Data de Vencimento';

-- DATE_SUB ( data, interval(intervalo) )

SELECT DATE_SUB(CURDATE(),INTERVAL 10 DAY) AS 'Data de Matricula';

-- DATEDIFF ( expressão 1, expressão 2 )

SELECT DATEDIFF(CURDATE(),DATE_SUB(CURDATE(),INTERVAL 10 DAY)) AS 'Dias em atraso';

-- DATE_FORMAT ( data, formato )

SELECT DATE_FORMAT(CURDATE(), '%d/%m/%Y') AS 'Data Atual';

-- DAYNAME ( data )

SELECT DAYNAME(CURDATE()) AS 'Dia da Semana';

-- DAYOFMONTH ( data )

SELECT DAYOFMONTH(CURDATE()) AS 'Dia do Mês';

-- DAYOFWEEK ( data )

SELECT DAYOFWEEK(CURDATE()) AS 'Dia da Semana';

-- WEEK ( data )

SELECT WEEK(CURDATE()) AS 'Semana do Ano';

-- DAYOFYEAR ( data )

SELECT DAYOFYEAR(CURDATE()) AS 'Dia do Ano';

-- FROM_DAYS ( número )

SELECT FROM_DAYS(780500) AS 'Data Real';
SELECT DATE_FORMAT(FROM_DAYS(780500), '%d/%m/%Y') AS 'Data Real';

-- NOW()

SELECT NOW() AS 'Data/Hora Atual';
SELECT DATE_FORMAT(NOW(), '%d/%m/%Y %H:%m:%s') AS 'Data/Hora Atual';

-- SEC_TO_TIME ( número )

SELECT SEC_TO_TIME(2000) AS 'Tempo Real';