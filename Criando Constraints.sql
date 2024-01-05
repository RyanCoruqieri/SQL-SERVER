USE Concessionária;

CREATE TABLE tblEstoque
(
		idEstoque		int		identity		
		Constraint PK_tblEstoque_idEstoque
		Primary Key (idEstoque),

		idModelo		int		not null
		Constraint FK_tblEstoque_tblModelos
		Foreign Key (idModelo)
		References tblModelos(idModelo),

		dataEntrada		date		Default GETDATE(),
		precoEstoque	money		not null
		Constraint CK_tblEstoque_precoEstoque
		CHECK (precoEstoque >=10000 AND precoEstoque <= 200000)
		

);

--NOVA COLUNA

ALTER TABLE tblEstoque
ADD placa	nchar(8)	not null;

-- ALTERAR O TAMANHO DE UMA COLUNA

ALTER TABLE tblEstoque
ALTER COLUMN placa		nchar(7)	null;

EXEC sp_help tblEstoque;

-- EXCLUIR UMA COLUNA

ALTER TABLE tblEstoque
DROP COLUMN placa;