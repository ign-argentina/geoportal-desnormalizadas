-- Definición de la tabla atributo_sld, se utiliza para la gestionar las excepciones al traducir cada valor del campo "leyenda" del Catálogo IGN
-- algunos Feature Class necesitan el valor normalizado por el catálogo para poder representar los estilos SLD correctamente.
--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.6.2

-- Started on 2019-05-02 13:21:18

SET search_path = desnormalizacion, pg_catalog;

SET default_tablespace = '';

--
-- TOC entry 209 (class 1259 OID 880978)
-- Name: atributo_sld; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE atributo_sld (
    tabla character varying NOT NULL,
    codigo character varying NOT NULL
);


ALTER TABLE atributo_sld OWNER TO postgres;


ALTER TABLE ONLY atributo_sld
    ADD CONSTRAINT atributo_sld_pkey PRIMARY KEY (codigo, tabla);


--
-- TOC entry 4625 (class 0 OID 0)
-- Dependencies: 209
-- Name: atributo_sld; Type: ACL; Schema: public; Owner: postgres
--

ALTER TABLE desnormalizacion.atributo_sld
    OWNER to postgres;

GRANT ALL ON TABLE desnormalizacion.atributo_sld TO postgres;

GRANT SELECT ON TABLE desnormalizacion.atributo_sld TO readonly WITH GRANT OPTION;

GRANT SELECT ON TABLE desnormalizacion.atributo_sld TO readonly;


-- Completed on 2019-05-02 13:21:18

--
-- PostgreSQL database dump complete
--

