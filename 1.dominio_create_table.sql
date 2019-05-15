--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.6.2

-- Started on 2019-05-03 11:38:14

--  Definición de la tabla dominio, contiene los nombres de los campos "dominio" y otras definiciones del Catálogo IGN

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 203 (class 1259 OID 263076)
-- Name: dominio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE dominio (
    codigo character(4) NOT NULL,
    etiqueta character varying NOT NULL,
    definicion character varying,
    tipo character varying,
    codigo_dfdd character(3)
);


ALTER TABLE dominio OWNER TO postgres;

--
-- TOC entry 4492 (class 2606 OID 751131)
-- Name: dominio pk_dominio; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dominio
    ADD CONSTRAINT pk_dominio PRIMARY KEY (codigo);


--
-- TOC entry 4624 (class 0 OID 0)
-- Dependencies: 203
-- Name: dominio; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE dominio FROM PUBLIC;
REVOKE ALL ON TABLE dominio FROM postgres;
GRANT ALL ON TABLE dominio TO postgres;
GRANT SELECT ON TABLE dominio TO readonly WITH GRANT OPTION;
SET SESSION AUTHORIZATION readonly;
GRANT SELECT ON TABLE dominio TO readonly;
RESET SESSION AUTHORIZATION;


-- Completed on 2019-05-03 11:38:14

--
-- PostgreSQL database dump complete
--

