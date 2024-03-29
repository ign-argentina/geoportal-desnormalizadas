-- Definición de la tabla atributo, se utiliza para la traducción a texto para cada campo "valor" del Catálogo IGN
--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.6.2

-- Started on 2019-05-02 13:27:52


SET search_path = desnormalizacion, pg_catalog;

SET default_tablespace = '';
--
-- TOC entry 205 (class 1259 OID 263122)
-- Name: atributo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE atributo (
    codigo character varying NOT NULL,
    etiqueta character varying NOT NULL,
    definicion character varying,
    tipo character varying,
    codigo_dfdd character(3)
);


ALTER TABLE atributo OWNER TO postgres;


--
-- TOC entry 4492 (class 2606 OID 263131)
-- Name: atributo atributo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY atributo
    ADD CONSTRAINT atributo_pkey PRIMARY KEY (codigo);


--
-- TOC entry 4625 (class 0 OID 0)
-- Dependencies: 205
-- Name: atributo; Type: ACL; Schema: public; Owner: postgres
--

ALTER TABLE desnormalizacion.atributo
    OWNER to postgres;

GRANT ALL ON TABLE desnormalizacion.atributo TO postgres;

GRANT SELECT ON TABLE desnormalizacion.atributo TO readonly WITH GRANT OPTION;

GRANT SELECT ON TABLE desnormalizacion.atributo TO readonly;


-- Completed on 2019-05-02 13:27:52

--
-- PostgreSQL database dump complete
--

