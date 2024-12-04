CREATE DATABASE SistemaVendas;
USE SistemaVendas;
CREATE TABLE Cliente (
nome_cliente VARCHAR(150) NOT NULL,
id_cliente INT AUTO_INCREMENT PRIMARY KEY,
cpf_cnpj VARCHAR (15) NOT NULL,
cep_cliente VARCHAR(10),
endereco VARCHAR(150),
telefone_cliente VARCHAR(15)
);
CREATE TABLE colaborador(
id_colaborador INT AUTO_INCREMENT PRIMARY KEY,
telefone_colaborador VARCHAR(15),
nome_colaborador VARCHAR(150),
cpf_colaborador VARCHAR(11)
);
CREATE TABLE vendas (
id_venda INT AUTO_INCREMENT PRIMARY KEY,
id_colaborador INT,
id_cliente INT,
id_servico INT,
data_fechamento DATE,
data_entrega DATE,
quantidade INT,
valor_servico DECIMAL(10, 2),
descricao_servico TEXT,
valor_total DECIMAL(10, 2) GENERATED ALWAYS AS ( quantidade * valor_servico)
STORED
);
CREATE TABLE servico (
id_servico INT AUTO_INCREMENT PRIMARY KEY,
nome_servico VARCHAR (150),
valor_servico DECIMAL(10, 2),
imagem BLOB,
descricao_servico TEXT
);
CREATE TABLE financeiro (
id_financeiro INT AUTO_INCREMENT PRIMARY KEY,
id_venda INT,
forma_pagamento VARCHAR(30),
receita DECIMAL(10, 2),
despesas DECIMAL(10, 2),
lucro DECIMAL(10, 2) GENERATED ALWAYS AS (receita - despesas) STORED
);
