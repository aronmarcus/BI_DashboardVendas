-- DATABASE: vendas

CREATE DATABASE vendas
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Portuguese_Brazil.1252'
    LC_CTYPE = 'Portuguese_Brazil.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

COMMENT ON DATABASE vendas
    IS 'Banco de dados do sistema de vendas.';

-- SCHEMA: mkt

CREATE SCHEMA mkt
    AUTHORIZATION postgres;

COMMENT ON SCHEMA mkt
    IS 'Schema de acesso ao banco de dados.';


CREATE TABLE mkt."TB_LOJA"
(
    "ID_LOJA" character varying(50) COLLATE pg_catalog."default" NOT NULL,
    "CIDADE" character varying(50) COLLATE pg_catalog."default",
    "ESTADO" character varying(50) COLLATE pg_catalog."default",
    CONSTRAINT "TB_LOJA_pkey" PRIMARY KEY ("ID_LOJA")
)

TABLESPACE pg_default;

ALTER TABLE mkt."TB_LOJA"
    OWNER to postgres;

TABLESPACE pg_default;


CREATE TABLE mkt."TB_PRODUTO"
(
    "ID_PRODUTO" character varying(50) COLLATE pg_catalog."default" NOT NULL,
    "NOME_PRODUTO" character varying(50) COLLATE pg_catalog."default",
    "CATEGORIA" character varying(50) COLLATE pg_catalog."default",
    "SEGMENTO" character varying(50) COLLATE pg_catalog."default",
    "MARCA" character varying(50) COLLATE pg_catalog."default",
    CONSTRAINT "TB_PRODUTO_pkey" PRIMARY KEY ("ID_PRODUTO")
)

TABLESPACE pg_default;

ALTER TABLE mkt."TB_PRODUTO"
    OWNER to postgres;


CREATE TABLE mkt."TB_DATA"
(
    "DATA_COMPLETA" date NOT NULL,
    "DIA" integer,
    "MES" integer,
    "ANO" integer,
    PRIMARY KEY ("DATA_COMPLETA")
)

TABLESPACE pg_default;

ALTER TABLE mkt."TB_DATA"
    OWNER to postgres;

ALTER TABLE mkt."TB_DATA" ALTER COLUMN "DATA_COMPLETA" SET DATA TYPE character varying(20) COLLATE "pt-BR-x-icu"


CREATE TABLE mkt."TB_VENDEDOR"
(
    "ID_VENDEDOR" "char" NOT NULL,
    "NOME" "char",
    "SOBRENOME" "char",
    PRIMARY KEY ("ID_VENDEDOR")
)

TABLESPACE pg_default;

ALTER TABLE mkt."TB_VENDEDOR"
    OWNER to postgres;


CREATE TABLE mkt."TB_VENDAS"
(
    "ID_PRODUTO" "char" NOT NULL,
    "ID_LOJA" "char" NOT NULL,
    "ID_VENDEDOR" "char" NOT NULL,
    "DATA_COMPLETA" date NOT NULL,
    "VALOR_VENDA" numeric,
    CONSTRAINT "TB_VENDAS_pkey" PRIMARY KEY ("ID_PRODUTO", "ID_LOJA", "ID_VENDEDOR", "DATA_COMPLETA")
)

TABLESPACE pg_default;

ALTER TABLE mkt."TB_VENDAS"
    OWNER to postgres;

ALTER TABLE mkt."TB_VENDAS"
    ALTER COLUMN "VALOR_VENDA" TYPE double precision;

ALTER TABLE mkt."TB_VENDAS" ALTER COLUMN "DATA_COMPLETA" SET DATA TYPE character varying(20) COLLATE "pt-BR-x-icu"

ALTER TABLE mkt."TB_VENDAS"
    ALTER COLUMN "ID_PRODUTO" TYPE character varying(20);

ALTER TABLE mkt."TB_VENDAS"
    ALTER COLUMN "ID_LOJA" TYPE character varying(20);

ALTER TABLE mkt."TB_VENDAS"
    ALTER COLUMN "ID_VENDEDOR" TYPE character varying(20);