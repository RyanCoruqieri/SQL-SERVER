USE Consorcio;

-- Visualizando dados da tabela carteiras

SELECT * FROM Carteiras;

-- Excluindo registros

DELETE FROM Carteiras
WHERE Cpf = 74632202244;

DELETE FROM Carteiras
WHERE Uf = 'GO';

USE SisDep;

-- Exclus�o bem sucedida
DELETE FROM Funcionario
WHERE idMatricula = 1001;

-- Exclus�o Mal sucedida
DELETE FROM Funcionario
WHERE idMatricula = 1000;

SELECT * FROM Dependente
WHERE idMatricula = 1000;

-- DELETE FROM TABELA, SEM O "WHERE" APAGAR� TODOS OS REGISTROS DA TABELA, *** TOMAR CUIDADO ***