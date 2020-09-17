CREATE DATABASE loja-exercício-tarefa;
USE loja-exercício-tarefa;

CREATE TABLE estados(
    id_estado INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(191) NOT NULL,
    sigla CHAR(2)
);
CREATE TABLE cidades(
    id_cidade INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (191) NOT NULL,
    estado_id INT UNSIGNED
);
CREATE TABLE telefones_contato(
    id_telefone_contato INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    numero VARCHAR(16) NOT NULL,
    fornecedor_id INT UNSIGNED NOT NULL
);
CREATE TABLE vendedores(
    id_vendedor INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(191) NOT NULL,
    telefone VARCHAR(16) NOT NULL
);
CREATE TABLE produtos(
    id_produto INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(191) NOT NULL,
    valor_unitario DECIMAL(6,2) NOT NULL,
    quantidade_estoque DECIMAL(7,3) NOT NULL
);
CREATE TABLE fornecedor_vendedor (
    id_fornecedor_vendedor INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    fornecedor_id INT UNSIGNED NOT NULL,
    vendedor_id INT UNSIGNED NOT NULL
);
CREATE TABLE compras_produtos(
    id_compra_produto INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    compra_id INT UNSIGNED NOT NULL,
    produto_id INT UNSIGNED NOT NULL,
    valor_unitario_compra DECIMAL(6,2) NOT NULL,
    quantidade DECIMAL(7,3) NOT NULL,
    total DECIMAL(6,2) NOT NULL
);
CREATE TABLE compras(
    id_compra INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    fornecedor_id INT UNSIGNED NOT NULL,
    numero_nf INT UNSIGNED NOT NULL,
    data_compra DATETIME NOT NULL,
    data_chegada DATETIME NOT NULL,
    valor_total DECIMAL(6,2) NOT NULL,
    desconto DECIMAL (4,2)
);
CREATE TABLE vendas_produtos(
    id_venda_produto INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    venda_id INT UNSIGNED NOT NULL,
    produto_id INT UNSIGNED NOT NULL,
    valor_unitario_venda DECIMAL (6,2) NOT NULL,
    quantidade DECIMAL (7,3) NOT NULL,
    total DECIMAL (6,2)
);
CREATE TABLE vendas(
    id_venda INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    cliente_id INT UNSIGNED NOT NULL,
    numero_nf INT UNSIGNED NOT NULL,
    data_hora_emissao DATETIME NOT NULL,
    valor_total DECIMAL (6,2) NOT NULL,
    desconto DECIMAL(4,2) NOT NULL,
    entrega BOOLEAN
);
CREATE TABLE clientes(
    id_cliente INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(191) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    genero CHAR(2) NOT NULL,
    data_nascimento DATE,
    rua VARCHAR(191) NOT NULL,
    numero VARCHAR(191) NOT NULL,
    complemento VARCHAR(191),
    bairro VARCHAR(191) NOT NULL,
    cep VARCHAR(10),
    cidade_id INT UNSIGNED NOT NULL,
    celular VARCHAR(16) NOT NULL,
    email VARCHAR(191) NOT NULL
);
CREATE TABLE fornecedores(
    id_fornecedor INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(191) NOT NULL,
    cnpj VARCHAR(18) NOT NULL,
    rua VARCHAR(191) NOT NULL,
    numero VARCHAR(191) NOT NULL,
    complemento VARCHAR(191),
    bairro VARCHAR(191) NOT NULL,
    cep VARCHAR(10),
    cidade_id INT UNSIGNED NOT NULL,
    email VARCHAR(191),
    website VARCHAR(191)
);
ALTER TABLE cidades ADD CONSTRAINT fk_estado FOREIGN KEY (estado_id) REFERENCES estados (id_estado);
ALTER TABLE fornecedores ADD CONSTRAINT fk_cidade FOREIGN KEY (cidade_id) REFERENCES cidades (id_cidade);
ALTER TABLE clientes ADD CONSTRAINT fk_cidade FOREIGN KEY (cidade_id) REFERENCES cidades (id_cidade);
ALTER TABLE telefones_contato ADD CONSTRAINT fk_fornecedor FOREIGN KEY (fornecedor_id) REFERENCES fornecedores (id_fornecedor);
ALTER TABLE vendas ADD CONSTRAINT fk_cliente FOREIGN KEY (cliente_id) REFERENCES clientes (id_cliente);
ALTER TABLE vendas_produtos ADD CONSTRAINT fk_vendas FOREIGN KEY (venda_id) REFERENCES vendas (id_venda);
ALTER TABLE vendas_produtos ADD CONSTRAINT fk_produto FOREIGN KEY (produto_id) REFERENCES produtos (id_produto);
ALTER TABLE compras_produtos ADD CONSTRAINT fk_compra FOREIGN KEY (compra_id) REFERENCES compras (id_compra);
ALTER TABLE compras_produtos ADD CONSTRAINT fk_produto FOREIGN KEY (produto_id) REFERENCES produtos (id_produto);
ALTER TABLE compras ADD CONSTRAINT fk_fornecedor FOREIGN KEY (fornecedor_id) REFERENCES fornecedores (id_fornecedor);
ALTER TABLE fornecedores_vendedores ADD CONSTRAINT fk_vendedor FOREIGN KEY (vendedor_id) REFERENCES vendedores (id_vendedor);
ALTER TABLE fornecedores_vendedores ADD CONSTRAINT fk_fornecedor FOREIGN KEY (fornecedor_id) REFERENCES fornecedores (id_fornecedor);
SHOW TABLES;