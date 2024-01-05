USE Concessionária;

-- VISUALIZAR ÍNDICES
EXEC sp_help tblEstoque;

-- CRIANDO ÍNDICE
CREATE NONCLUSTERED INDEX IX_tblEstoque
On tblEstoque(dataEntrada DESC);

EXEC sp_helpindex tblEstoque;

-- EXCLUIR ÍNDICE
DROP INDEX IX_tblEstoque
On tblEstoque;