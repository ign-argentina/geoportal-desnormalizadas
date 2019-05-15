-- Definición de la tabla dominio_valor, se utiliza para la traducción a texto para cada campo "dominio" del Catálogo IGN
--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.6.2

-- Started on 2019-05-03 11:39:30

SET search_path = public, pg_catalog;

SET default_tablespace = '';

--
-- TOC entry 204 (class 1259 OID 263084)
-- Name: dominio_valor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE dominio_valor (
    codigo character(4) NOT NULL,
    clave numeric NOT NULL,
    valor character varying NOT NULL,
    definicion character varying
);


ALTER TABLE dominio_valor OWNER TO postgres;

--
-- TOC entry 4492 (class 2606 OID 751141)
-- Name: dominio_valor pk_dominio_valor; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dominio_valor
    ADD CONSTRAINT pk_dominio_valor PRIMARY KEY (codigo, clave);


--
-- TOC entry 4624 (class 0 OID 0)
-- Dependencies: 204
-- Name: dominio_valor; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE dominio_valor FROM PUBLIC;
REVOKE ALL ON TABLE dominio_valor FROM postgres;
GRANT ALL ON TABLE dominio_valor TO postgres;
GRANT SELECT ON TABLE dominio_valor TO readonly WITH GRANT OPTION;
SET SESSION AUTHORIZATION readonly;
GRANT SELECT ON TABLE dominio_valor TO readonly;
RESET SESSION AUTHORIZATION;


-- Completed on 2019-05-03 11:39:30

--
-- PostgreSQL database dump complete
--

