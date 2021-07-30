--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.6.2

-- Started on 2019-05-03 11:41:28

-- Registros a importar a la tabla dominio.

SET search_path = desnormalizacion, pg_catalog;

--
-- TOC entry 4620 (class 0 OID 263076)
-- Dependencies: 203
-- Data for Name: dominio; Type: TABLE DATA; Schema: desnormalizacion; Owner: postgres
--

INSERT INTO dominio VALUES ('ATV','tipo_de_transito_aereo','Tipo de tránsito aéreo según su actividad sea civil o militar.','Cadena de caracteres','ATV');
INSERT INTO dominio VALUES ('BCP','tipo_de_puesto_de_control','Clasificación realizada en base a las características de las oficinas que controlan el paso de vehículos y/o personas, y declarar y/o inspeccionar los bienes que transportan.','Cadena de caracteres','BCP');
INSERT INTO dominio VALUES ('BSC','tipo_de_puente','Clasificación de acuerdo al diseño de la estructura o superestructura de un puente.','Cadena de caracteres','BSC');
INSERT INTO dominio VALUES ('CA1','funcion_politico_administrativa','Importancia de una ciudad desde el punto de vista político administrativo, teniendo en cuenta la función en su mayor nivel administrativo.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('CA2','categoria_por_poblacion','Clasificación en categorías de rango de cantidad de habitantes según datos censales.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('CAA','autoridad_responsable','Clasificación de acuerdo al tipo de autoridad responsable.','Cadena de caracteres','CAA');
INSERT INTO dominio VALUES ('CCU','codigo_de_cuadrante','Identificación del cuadrante formada por un número arábigo comprendido entre 1 y 4.','Numérico entero positivo','- ');
INSERT INTO dominio VALUES ('CEF','tipo_de_edificio_de_cultura','Tipo de construcción destinada a la manifestación de expresiones culturales y artísticas.','Cadena de caracteres','CEF');
INSERT INTO dominio VALUES ('EPG','estado_de_punto_geodesico','Estado constructivo o situación del punto geodésico.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('FAA','fuerza_armada','Fuerza Armada a la que pertenece la instalación militar.','Dominio','- ');
INSERT INTO dominio VALUES ('FOR','formato_del_fotograma','Indicador de la medida de los lados del fotograma.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('FUC','uso__funcion','Categorización de instalaciones según su funcionamiento o uso.','Cadena de caracteres','FUC');
INSERT INTO dominio VALUES ('FUN','estado','Clasificación del estado constructivo de estructuras y/o equipos que componen una instalación.','Cadena de caracteres','FUN');
INSERT INTO dominio VALUES ('GFC','tipo_de_edificio_gubernamental','Clasificación del tipo de instalación gubernamental según la autoridad a cargo.','Cadena de caracteres','GFC');
INSERT INTO dominio VALUES ('HCT','jurisdiccion_de_via_de_transporte','Clasificación de una vía de transporte en función de la jurisdicción administrativa a la que pertenece.','Cadena de caracteres','HCT');
INSERT INTO dominio VALUES ('HQC','tipo_de_representacion_hipsografica','Clasificación de la representación de las curvas de nivel de acuerdo a su origen, intervalo de representación y características morfológicas del terreno.','Cadena de caracteres','HQC');
INSERT INTO dominio VALUES ('HYP','regimen_hidrologico','Clasificación de acuerdo a la temporalidad de la presencia de agua en la superficie terrestre.','Cadena de caracteres','HYP');
INSERT INTO dominio VALUES ('IRU','servicio_de_transporte','Propósito de traslado de un medio de transporte.','Cadena de caracteres','IRU');
INSERT INTO dominio VALUES ('JAP','jurisdiccion_de_area_protegida','Autoridad que tiene la jurisdicción de un área protegida.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('LOC','ubicacion_vertical_relativa','Clasificación vertical de la posición de un objeto en el terreno.','Cadena de caracteres','LOC');
INSERT INTO dominio VALUES ('MCC','tipo_de_material_estructural','Clasificación del principal material constructivo de un objeto.','Cadena de caracteres','MCC');
INSERT INTO dominio VALUES ('MES','separacion_vial','Indicativo de la presencia de divisiones viales, como separaciones por medio de barreras verticales.','Booleano','MES');
INSERT INTO dominio VALUES ('MO1','metodo_de_obtencion_punto','Clasificación para la obtención de puntos acotados de acuerdo a la metodología utilizada.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('MO2','metodo_de_obtencion_curva','Clasificación para la generación de curvas de nivel de acuerdo a la metodología utilizada.','Dominio','- ');
INSERT INTO dominio VALUES ('MRG','marco_de_referencia_geodesico','Marco de referencia al cual está referida la coordenada, la altura o la gravedad del punto.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('OVU','orientacion_de_la_trayectoria','Posición del vuelo respecto a los puntos cardinales.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('PAA','precision_altimetrica','Precisión de la altura.','Numérico','- ');
INSERT INTO dominio VALUES ('PAL','tipo_de_marca','Tipo de marca del punto a la cual está referida la coordenada o altura de un punto.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('PDT','tipo_de_punto_acotado','Clasificación de un punto acotado según la superficie en la que es medido y su utilización en la edición cartográfica.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('PLA','precision_planimetrica','Precisión planimétrica de una coordenada.','Numérico','- ');
INSERT INTO dominio VALUES ('PPC','tipo_de_central_electrica','Clasificación del tipo de central eléctrica según su fuente de energía.','Cadena de caracteres','PPC');
INSERT INTO dominio VALUES ('PPO','producto','Indica el producto principal resultante de una actividad de producción, minera o agrícola.','Cadena de caracteres','PPO');
INSERT INTO dominio VALUES ('RFA','tipo_de_instalacion_religiosa','Clasificación del tipo de lugar destinado al culto y prédica de cualquier religión.','Cadena de caracteres','RFA');
INSERT INTO dominio VALUES ('RGC','trocha','Separación entre rieles, medida perpendicularmente.','Cadena de caracteres','RGC');
INSERT INTO dominio VALUES ('RRA','tipo_de_traccion','Método a través del cual se distribuye la energía en un medio de transporte.','Cadena de caracteres','RRA');
INSERT INTO dominio VALUES ('RST','tipo_de_superficie_de_via','Clasificación del material de construcción de las vías de comunicación destinado para uso vial.','Cadena de caracteres','RST');
INSERT INTO dominio VALUES ('SMC','material_de_superficie','Clasificación del material de la superficie de acuerdo a su composición.','Cadena de caracteres','SMC');
INSERT INTO dominio VALUES ('SOE','soporte','Medio de almacenamiento de datos.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('SWT','tipo_de_fuente_natural','Clasificación del tipo de fuente natural de agua según su origen.','Cadena de caracteres','SWT');
INSERT INTO dominio VALUES ('TA1','tipo_de_accidente_costero','Clasificación de la configuración geomorfológica de la zona litoral.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('TAP','tipo_de_area protegida','Área que por su extraordinarias belleza o riqueza en flora y fauna autóctona o en razón de un interés científico, debe ser protegida y conservada para investigaciones científicas, educación y goce de las presentes y futuras generaciones.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('TAS','tipo_de_asentamiento','Categorización en función del tamaño y de la configuración espacial del asentamiento humano.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('TC1','tipo_de_edificio_de_comunicaciones','Clasificación según tipo de comunicaciones.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('TCC','tipo_de_suelo_consolidado','Clasificación referida particularmente al tipo de rocas.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('TCP','tipo_de_circulo_polar','Clasificación de cada uno de los paralelos que representan los círculos polares Ártico y Antártico.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('TDA','tipo_de_antena','Clasificación de antena según su uso.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('TDH','tipo_de_hito','Clasificación de hito según su ubicación','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('TDU','tipo_de_ducto','Clasificación de ducto por material que transporta.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('TEF','tipo_de_estacion','Clasificación del lugar donde regularmente se detienen los trenes y admiten viajeros y/o mercancías.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('TEN','tipo_de_tension','Clasificación de línea para transporte o distribución de energía eléctrica de acuerdo a su tensión nominal.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('TES','tipo_de_edificio_de_seguridad','Clasificación de edificios de seguridad según la autoridad a cargo.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('TGG','tipo_de_suelo_congelado','Clasificación de suelos cuya dureza aumenta con el congelamiento.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('TGO','tipo_de_gravedad_oficial','Clasificación del valor de la gravedad según el método utilizado para su cálculo.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('THH','tipo_de_humedal','Clasificación según características geomorfológicas, hidrológicas y ecosistémicas.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('TI1','tipo_de_base_antartica','Clasificación de la base en función del período en el que se encuentra en actividad.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('TIN','tipo_de_instalacion_deportiva','Clasificación de una instalación, ya sea deportiva o para esparcimiento.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('TLG','tipo_de_geoforma','Clasificación de una geoforma de acuerdo sus características geomorfológicas.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('TLQ','tipo_de_linea_de_quiebre','Línea que indica el tipo de cambio de la orientación de la pendiente. También es conocida como breakline.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('TMA','tipo_de_manzana','Clasificación según el nivel de presencia de edificaciones.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('TP1','tipo_de_polo','Clasificación de cada uno de los dos puntos más septentrional y más austral de la superficie terrestre, opuestos entre sí, en función del hemisferio donde se encuentran.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('TPL','tipo_de_pileta','Clasificación de piletas de depósito de líquidos industriales y orgánicos según su tratamiento.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('TRO','tipo_de_rompeolas','Tipo de muro o pared de contención según su ubicación.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('TSN','tipo_de_suelo_no_consolidado','Se refiere particularmente a los sedimentos y suelos en sentido amplio.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('TTR','tipo_de_tropico','Clasificación de cada uno de los dos círculos imaginarios principales de la esfera celeste paralelos al Ecuador.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('TUP','tipo_de_uso_de_puente','Clasificación de acuerdo al modo de transporte que circula en él.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('TYP','tipo_de_via_de_transporte','Clasificación de la vía de transporte en base a su diseño constructivo. Se refiere a los carriles, su distribución y características complementarias.','Cadena de caracteres','TYP');
INSERT INTO dominio VALUES ('TZ1','denominacion_de_zona_de_frontera','Denominación de la zona adyacente al límite internacional, que constituye una zona de seguridad destinada a complementar las previsiones territoriales de la defensa nacional y/o un área prioritaria para su desarrollo.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('TZZ','tipo_de_zona_de_frontera','Clasificación de la zona adyacente al límite internacional, que constituye una zona de seguridad destinada a complementar las previsiones territoriales de la defensa nacional y/o un área prioritaria para su desarrollo.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('VLJ','validacion_de_limite_interprovincial','Tipo de validación de un límite entre provincias.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('VLP','validacion','Tipo de validación según la autoridad competente.','Cadena de caracteres','- ');
INSERT INTO dominio VALUES ('ISIC','tipo_de_industria','Clasificación de actividad manufacturera según el Estándar Internacional de Clasificación de Industrias (ISIC).','Cadena de caracteres','- ');


-- Completed on 2019-05-03 11:41:28

--
-- PostgreSQL database dump complete
--
-- Dominios fuera del catalago
INSERT INTO dominio VALUES ('DEN_ESC','denominacion_escala','desnormalizacion fuera de desnormalizacion', NULL , NULL);
INSERT INTO dominio VALUES ('RE','referencia_espacial','desnormalizacion fuera de desnormalizacion', NULL , NULL);
