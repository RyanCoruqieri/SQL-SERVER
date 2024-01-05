USE Concession�ria;

-- VISUALIZAR �NDICES
EXEC sp_help tblEstoque;

-- CRIANDO �NDICE
CREATE NONCLUSTERED INDEX IX_tblEstoque
On tblEstoque(dataEntrada DESC);

EXEC sp_helpindex tblEstoque;

-- EXCLUIR �NDICE
DROP INDEX IX_tblEstoque
On tblEstoque;