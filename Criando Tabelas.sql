USE Concessionária;

-- TABELAS
CREATE TABLE tblMarcas
(
	idMarca		int			identity		primary key,
	nomeMarca	nchar(10)	not null		unique
);

-- Visualizando estruturas de tabelas
EXEC sp_help tblMarcas;

CREATE TABLE tblModelos
(
	idModelo	int			identity
	Constraint PK_tblModelos_idModelo
	Primary key (idModelo),

	--FK
	idMarca		int			not null
	Constraint FK_tblModelos_tblMarcas_idMarca
	Foreign key (idMarca)
	References tblMarcas(idMarca),

	nomeModelo	nchar(30)	not null
	Constraint UQ_tblModelos_nomeModelo
	Unique (nomeModelo)

);
EXEC sp_help tblModelos;