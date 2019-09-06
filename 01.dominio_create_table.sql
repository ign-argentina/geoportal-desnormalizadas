-- Table: desnormalizacion.dominio

-- DROP TABLE IF EXISTS desnormalizacion.dominio;

CREATE TABLE desnormalizacion.dominio
(
    codigo character varying(12) COLLATE pg_catalog."default" NOT NULL,
    etiqueta character varying COLLATE pg_catalog."default" NOT NULL,
    definicion character varying COLLATE pg_catalog."default",
    tipo character varying COLLATE pg_catalog."default",
    codigo_dfdd character(3) COLLATE pg_catalog."default",
    CONSTRAINT pk_dominio PRIMARY KEY (codigo)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE desnormalizacion.dominio
    OWNER to postgres;

GRANT ALL ON TABLE desnormalizacion.dominio TO postgres;

GRANT SELECT ON TABLE desnormalizacion.dominio TO readonly WITH GRANT OPTION;

GRANT SELECT ON TABLE desnormalizacion.dominio TO readonly;
