-- Definición de la tabla atributo_leyenda, se utiliza para la traducción a texto para cada valor del campo "leyenda" del Catálogo IGN
--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.6.2

-- Started on 2019-05-02 13:25:24

SET search_path = public, pg_catalog;

SET default_tablespace = '';

--
-- TOC entry 206 (class 1259 OID 263139)
-- Name: atributo_leyenda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE atributo_leyenda (
    tabla character varying NOT NULL,
    codigo character varying NOT NULL,
    orden integer NOT NULL
);


ALTER TABLE atributo_leyenda OWNER TO postgres;

--
-- TOC entry 4620 (class 0 OID 263139)
-- Dependencies: 206
-- Data for Name: atributo_leyenda; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4492 (class 2606 OID 263146)
-- Name: atributo_leyenda atributo_leyenda_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY atributo_leyenda
    ADD CONSTRAINT atributo_leyenda_pkey PRIMARY KEY (codigo, tabla);


--
-- TOC entry 4625 (class 0 OID 0)
-- Dependencies: 206
-- Name: atributo_leyenda; Type: ACL; Schema: public; Owner: postgres
--

REVOKE ALL ON TABLE atributo_leyenda FROM PUBLIC;
REVOKE ALL ON TABLE atributo_leyenda FROM postgres;
GRANT ALL ON TABLE atributo_leyenda TO postgres;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE atributo_leyenda TO sig_readonly;
GRANT SELECT ON TABLE atributo_leyenda TO readonly WITH GRANT OPTION;
GRANT ALL ON TABLE atributo_leyenda TO operator;
SET SESSION AUTHORIZATION readonly;
GRANT SELECT ON TABLE atributo_leyenda TO readonly;
RESET SESSION AUTHORIZATION;


-- Completed on 2019-05-02 13:25:25

--
-- PostgreSQL database dump complete
--

