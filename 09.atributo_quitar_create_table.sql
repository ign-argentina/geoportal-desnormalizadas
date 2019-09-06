-- Definición de la tabla atributo_quitar, se utiliza para filtar los atributos que no se van a publicar de la DB de IGN
--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.6.2

-- Started on 2019-05-02 13:23:36

SET search_path = desnormalizacion, pg_catalog;

SET default_tablespace = '';

--
-- TOC entry 210 (class 1259 OID 979269)
-- Name: atributo_quitar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE atributo_quitar (
    codigo character varying NOT NULL
);


ALTER TABLE atributo_quitar OWNER TO postgres;


ALTER TABLE ONLY atributo_quitar
    ADD CONSTRAINT pk_atributo_quitar PRIMARY KEY (codigo);


--
-- TOC entry 4625 (class 0 OID 0)
-- Dependencies: 210
-- Name: atributo_quitar; Type: ACL; Schema: public; Owner: postgres
--

ALTER TABLE desnormalizacion.atributo_quitar
    OWNER to postgres;

GRANT ALL ON TABLE desnormalizacion.atributo_quitar TO postgres;

GRANT SELECT ON TABLE desnormalizacion.atributo_quitar TO readonly WITH GRANT OPTION;

GRANT SELECT ON TABLE desnormalizacion.atributo_quitar TO readonly;


-- Completed on 2019-05-02 13:23:36

--
-- PostgreSQL database dump complete
--

