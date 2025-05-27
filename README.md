# 📦 Banco de Dados de E-commerce

Este projeto consiste na modelagem e implementação de um banco de dados relacional para um sistema de e-commerce, utilizando **SQL Server**. Ele inclui scripts de criação das tabelas, inserção de dados de exemplo e consultas SQL complexas.

## 🗂 Estrutura do Projeto

- `01_criacao_banco.sql`: Script de criação do banco de dados e todas as tabelas com suas restrições (chaves primárias, estrangeiras, etc.).
- `02_insercao_dados.sql`: Script com inserções de dados fictícios para testes iniciais.
- `03_consultas_complexas.sql`: Consultas SQL avançadas para extração de informações úteis e demonstração da estrutura relacional.

## 🛠 Tecnologias Utilizadas

- **SQL Server**
- SQL (DDL e DML)

## 📋 Entidades Principais

- `CLIENTE`, `CLIENTE_PF`, `CLIENTE_PJ`: Modelagem para pessoas físicas e jurídicas.
- `ENDERECO`: Utilizado por múltiplas entidades.
- `FORMA_DE_PAGAMENTO`: Cadastro e associação com clientes.
- `VENDEDOR`: Pessoa física ou jurídica.
- `FORNECEDOR`: Empresas fornecedoras.
- `PLATAFORMA`: Marketplaces de vendas.
- `CATEGORIA_PRODUTO`: Hierarquia de categorias de produtos.

## 🔍 Consultas Complexas

As queries incluídas realizam:

- Contagens por tipo de cliente;
- Média de taxas por forma de pagamento;
- Listagens de clientes com preferências de pagamento;
- Estrutura de categorias pai e filha.

## 🚀 Como Usar

1. Execute o arquivo `01_criacao_banco.sql` em seu ambiente SQL Server.
2. Em seguida, rode o script `02_insercao_dados.sql` para popular o banco com dados iniciais.
3. Por fim, utilize as queries do `03_consultas_complexas.sql` para testar a estrutura e explorar os dados.

## 📌 Objetivo

Este projeto foi criado como um exercício prático de modelagem de banco de dados para portfólio, simulando um cenário real de sistema de e-commerce com suporte completo a dados cadastrais, relacionamentos e análises.

