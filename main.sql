-- Criando um banco
CREATE DATABASE ebac;

-- Conectado ao banco de dados ebac
\c ebac;

-- Criando o Esquema
CREATE SCHEMA store;

-- Criando tabela no nosso esquema da seguinte forma
-- Sempre colocar o esquema em aspas Duplas e o nome do esquema ("store") seguido de um (.) e o nome da tabela que queira criar (exemplo abaixo) e alimentando a tabela
CREATE TABLE "store".customes (
    
)