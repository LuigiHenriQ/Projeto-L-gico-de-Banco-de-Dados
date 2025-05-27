-- Arquivo: 02_insercao_dados.sql

-- Inserção de Endereços
INSERT INTO ENDERECO (logradouro, numero, complemento, bairro, cidade, estado, cep)
VALUES 
('Rua A', '123', NULL, 'Centro', 'São Paulo', 'SP', '01001000'),
('Rua B', '456', 'Apto 101', 'Jardins', 'São Paulo', 'SP', '01415000'),
('Av. Paulista', '1000', NULL, 'Bela Vista', 'São Paulo', 'SP', '01311000');

-- Inserção de Formas de Pagamento
INSERT INTO FORMA_DE_PAGAMENTO (descricao, tipo, taxa)
VALUES 
('Cartão de Crédito', 'Crédito', 2.99),
('PIX', 'PIX', 0.00),
('Boleto Bancário', 'Boleto', 1.50);

-- Inserção de Clientes
INSERT INTO CLIENTE (nome, email, telefone, ENDERECO_idENDERECO)
VALUES 
('João da Silva', 'joao@gmail.com', '11999999999', 1),
('Empresa XYZ', 'contato@xyz.com.br', '1133334444', 2);

-- Cliente PF vinculado ao primeiro cliente
INSERT INTO CLIENTE_PF (idCLIENTE, CPF, rg, data_nascimento, genero)
VALUES (1, '12345678900', 'MG123456', '1980-01-01', 'M');

-- Cliente PJ vinculado ao segundo cliente
INSERT INTO CLIENTE_PJ (idCLIENTE, CNPJ, razao_social, nome_fantasia, inscricao_estadual)
VALUES (2, '12345678000199', 'Empresa XYZ Ltda.', 'XYZ', '123456789');

-- Cliente usando formas de pagamento
INSERT INTO CLIENTE_FORMA_PAGAMENTO (idCLIENTE, idFORMA_DE_PAGAMENTO, preferencia)
VALUES 
(1, 1, 1),
(1, 2, 2),
(2, 3, 1);

-- Vendedores
INSERT INTO VENDEDOR (nome, email, telefone, ENDERECO_idENDERECO, tipo, identificacao)
VALUES 
('Carlos Vendedor', 'carlos@vend.com', '1188888888', 3, 'PF', '98765432100');

-- Fornecedores
INSERT INTO FORNECEDOR (nome, CNPJ, email, telefone, ENDERECO_idENDERECO, ramo_atuacao)
VALUES 
('Fornecedor A', '11111111000191', 'fornA@email.com', '1122223333', 2, 'Eletrônicos');

-- Plataformas
INSERT INTO PLATAFORMA (nome, url, taxa_comissao)
VALUES 
('Marketplace A', 'https://marketA.com', 10.00),
('Marketplace B', 'https://marketB.com', 15.00);

-- Categorias de Produtos
INSERT INTO CATEGORIA_PRODUTO (nome, descricao)
VALUES 
('Eletrônicos', 'Produtos eletrônicos em geral'),
('Celulares', 'Smartphones e acessórios'),
('TVs', 'Televisores e monitores');

-- Categoria filha
INSERT INTO CATEGORIA_PRODUTO (nome, descricao, categoria_pai)
VALUES ('Smartphones Android', 'Aparelhos com sistema Android', 2);

-- Inserção de Produtos
INSERT INTO PRODUTO (nome, descricao, preco, preco_custo, FORNECEDOR_idFORNECEDOR, CATEGORIA_idCATEGORIA)
VALUES 
('Smartphone X', 'Último modelo da marca', 2999.90, 2000.00, 1, 2),
('Notebook Pro', '16GB RAM, 512GB SSD', 4999.90, 3500.00, 1, 1);

-- Inserção de Pedidos
INSERT INTO PEDIDO (status, valor_total, CLIENTE_idCLIENTE, FORMA_PAGAMENTO_idFORMA_DE_PAGAMENTO)
VALUES 
('Entregue', 2999.90, 1, 1),
('Processando', 4999.90, 2, 3);

-- Inserção de Itens de Pedido
INSERT INTO PEDIDO_PRODUTO (PEDIDO_idPEDIDO, PRODUTO_idPRODUTO, quantidade, preco_unitario)
VALUES 
(1, 1, 1, 2999.90),
(2, 2, 1, 4999.90);

-- Inserção de Entregas
INSERT INTO ENTREGA (PEDIDO_idPEDIDO, status, codigo_rastreio, data_envio, data_entrega_prevista, data_entrega_real)
VALUES 
(1, 'Entregue', 'BR123456789', '2023-01-10', '2023-01-15', '2023-01-14'),
(2, 'Preparando', NULL, NULL, NULL, NULL);

INSERT INTO ESTOQUE (local) VALUES ('Armazém SP'), ('Centro de Distribuição RJ');

INSERT INTO ESTOQUE_PRODUTO (ESTOQUE_idESTOQUE, PRODUTO_idPRODUTO, quantidade)
VALUES 
(1, 1, 50),  -- 50 unidades do Smartphone X no armazém SP
(2, 2, 20);   -- 20 unidades do Notebook Pro no CD RJ
