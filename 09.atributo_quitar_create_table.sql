-- Definición de la tabla atributo_quitar, se utiliza para filtar los atributos que no se van a publicar de la DB de IGN
--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.6.2

-- Started on 2019-05-02 13:23:36

SET search_path = public, pg_catalog;

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

REVOKE ALL ON TABLE atributo_quitar FROM PUBLIC;
REVOKE ALL ON TABLE atributo_quitar FROM postgres;
GRANT ALL ON TABLE atributo_quitar TO postgres;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE atributo_quitar TO readonly;
GRANT SELECT ON TABLE atributo_quitar TO readonly WITH GRANT OPTION;
GRANT ALL ON TABLE atributo_quitar TO operator;
SET SESSION AUTHORIZATION readonly;
GRANT SELECT ON TABLE atributo_quitar TO readonly;
RESET SESSION AUTHORIZATION;


-- Completed on 2019-05-02 13:23:36

--
-- PostgreSQL database dump complete
--

