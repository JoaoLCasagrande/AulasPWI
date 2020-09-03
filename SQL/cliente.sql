CREATE TABLE clientes (
     id_clientes INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
     nome VARCHAR (191) NOT NULL,
     documento VARCHAR (191) UNIQUE NOT NULL,
     data_nascimento DATE,
     sexo CHAR (1),
     telefone VARCHAR (191),
     email VARCHAR (191),
     endereco1 VARCHAR (191),
     endereco2 VARCHAR (191),
     codigo_postal INT,
     id_cidade INT UNSIGNED
 );