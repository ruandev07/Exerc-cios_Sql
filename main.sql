-- Criando um banco
CREATE DATABASE ebac;

-- Conectado ao banco de dados ebac
\c ebac;

-- Criando o Esquema
CREATE SCHEMA store;

-- Criando tabela no nosso esquema da seguinte forma.
-- Sempre colocar o esquema em aspas Duplas e o nome do esquema ("store") seguido de um (.) e o nome da tabela que queira criar (exemplo abaixo) e alimentando a tabela.
CREATE TABLE "store".customer (
    customer_id SERIAL PRIMARY KEY, -- SERIAL PRIMARY KEY, nada mais e que uma forma de deixar nosso ID automático (Exemplo (Products_id)) ele ja criaria um ID automático para nos.
    name VARCHAR(255) NOT NULL, -- o (NOT NULL), nada mais é que uma forma de não deixar vazio o nome na tabela 
    email VARCHAR(255) UNIQUE NOT NULL, -- (UNIQUE), significa que na tabela de email quando passado, ele sera unico em toda a tabela e o (NOT NULL) não deixara vazio o nome na tabela.
    phone VARCHAR(20),
    document_number VARCHAR(20) UNIQUE,
    address VARCHAR(255),
    city VARCHAR(100)
    );

--- Criando tabela de Produtos
CREATE TABLE "store".Products (
    Products_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    category VARCHAR(100),
    stock_quantity INTEGER NOT NULL,
    price  INT(50) NOT NULL
);

--- Criando tabela de Estoque
CREATE TABLE "store".Products_stock (
    stock_id SERIAL PRIMARY KEY,
    Product_id INT(11) NULL DEFAULT NULL,
    quantity INTEGER NOT NULL CHECK (quantity >=0), --Garantir que a quantidade  não seja negativa
    unit_value DECIMAL(9,3) NULL DEFAULT "0.00"
);