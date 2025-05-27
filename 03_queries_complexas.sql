-- Arquivo: 03_queries_complexas.sql

-- 1. Listar todos os clientes com suas formas de pagamento preferidas
SELECT c.nome AS Cliente, f.descricao AS FormaPagamento, cfp.preferencia
FROM CLIENTE c
JOIN CLIENTE_FORMA_PAGAMENTO cfp ON c.idCLIENTE = cfp.idCLIENTE
JOIN FORMA_DE_PAGAMENTO f ON cfp.idFORMA_DE_PAGAMENTO = f.idFORMA_DE_PAGAMENTO
ORDER BY c.nome, cfp.preferencia;

-- 2. Listar clientes do tipo PF nascidos antes de 1990
SELECT c.nome, cpf.CPF, cpf.data_nascimento
FROM CLIENTE c
JOIN CLIENTE_PF cpf ON c.idCLIENTE = cpf.idCLIENTE
WHERE cpf.data_nascimento < '1990-01-01';

-- 3. Contar quantos clientes usam cada forma de pagamento
SELECT f.descricao, COUNT(cfp.idCLIENTE) AS TotalClientes
FROM FORMA_DE_PAGAMENTO f
LEFT JOIN CLIENTE_FORMA_PAGAMENTO cfp ON f.idFORMA_DE_PAGAMENTO = cfp.idFORMA_DE_PAGAMENTO
GROUP BY f.descricao;

-- 4. Listar os fornecedores e os endereços das suas sedes
SELECT f.nome, e.logradouro, e.numero, e.cidade, e.estado
FROM FORNECEDOR f
JOIN ENDERECO e ON f.ENDERECO_idENDERECO = e.idENDERECO;

-- 5. Mostrar categorias e suas subcategorias
SELECT c1.nome AS Categoria, c2.nome AS Subcategoria
FROM CATEGORIA_PRODUTO c1
JOIN CATEGORIA_PRODUTO c2 ON c2.categoria_pai = c1.idCATEGORIA;
