-- Table: public.dominio

-- DROP TABLE IF EXISTS public.dominio;

CREATE TABLE public.dominio
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

ALTER TABLE public.dominio
    OWNER to postgres;

GRANT ALL ON TABLE public.dominio TO postgres;

GRANT SELECT ON TABLE public.dominio TO readonly WITH GRANT OPTION;

GRANT SELECT ON TABLE public.dominio TO readonly;
