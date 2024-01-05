USE Concessionária;

EXEC sp_help tblMarcas;

-- Insert posicional
INSERT INTO tblMarcas
VALUES('FIAT');

-- Inserção de várias linhas
INSERT INTO tblMarcas
VALUES
('FORD'), ('CHEVROLET'),('VOLKSWAGEN'),('HONDA');

-- Visualizar dados
SELECT * FROM tblMarcas;

-- Insert declarativo
INSERT INTO tblModelos
(idMarca, nomeModelo)
VALUES 
(4,'Onix'),(1,'Uno'),(3,'Eco Sport');

SELECT * FROM tblModelos;

INSERT INTO tblEstoque
(idModelo, dataEntrada, precoEstoque)
VALUES
(1,'2017-01-05',45000);

SELECT * FROM tblEstoque;

-- ERRO
INSERT INTO tblEstoque
(idModelo, dataEntrada, precoEstoque)
VALUES
(1,'2017-01-05',2000);