--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.6.2

-- Started on 2019-05-03 11:41:28

-- Registros a importar a la tabla dominio.

SET search_path = public, pg_catalog;

--
-- TOC entry 4620 (class 0 OID 263076)
-- Dependencies: 203
-- Data for Name: dominio; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO dominio VALUES ('ATV ', 'Tipo de tránsito aéreo', 'Tipo de tránsito aéreo según su actividad sea civil o militar.', 'Cadena de caracteres', 'ATV');
INSERT INTO dominio VALUES ('BCP ', 'Tipo de puesto de control', 'Clasificación realizada en base a las características de las oficinas que controlan el paso de vehículos y/o personas, y declarar y/o inspeccionar los bienes que transportan.', 'Cadena de caracteres', 'BCP');
INSERT INTO dominio VALUES ('BSC ', 'Tipo de puente', 'Clasificación de acuerdo al diseño de la estructura o superestructura de un puente.', 'Cadena de caracteres', 'BSC');
INSERT INTO dominio VALUES ('CA1 ', 'Función político administrativa', 'Importancia de una ciudad desde el punto de vista político administrativo, teniendo en cuenta la función en su mayor nivel administrativo.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('CA2 ', 'Categoría por población', 'Clasificación en categorías de rango de cantidad de habitantes según datos censales.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('CAA ', 'Autoridad responsable', 'Clasificación de acuerdo al tipo de autoridad responsable.', 'Cadena de caracteres', 'CAA');
INSERT INTO dominio VALUES ('CCU ', 'Código de cuadrante', 'Identificación del cuadrante formada por un número arábigo comprendido entre 1 y 4.', 'Numérico entero positivo', '-  ');
INSERT INTO dominio VALUES ('CEF ', 'Tipo de edificio de cultura', 'Tipo de construcción destinada a la manifestación de expresiones culturales y artísticas.', 'Cadena de caracteres', 'CEF');
INSERT INTO dominio VALUES ('EPG ', 'Estado de punto geodésico', 'Estado constructivo o situación del punto geodésico.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('FAA ', 'Fuerza armada', 'Fuerza Armada a la que pertenece la instalación militar.', 'Dominio', '-  ');
INSERT INTO dominio VALUES ('FOR ', 'Formato del fotograma', 'Indicador de la medida de los lados del fotograma.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('FUC ', 'Uso, función', 'Categorización de instalaciones según su funcionamiento o uso.', 'Cadena de caracteres', 'FUC');
INSERT INTO dominio VALUES ('FUN ', 'Estado ', 'Clasificación del estado constructivo de estructuras y/o equipos que componen una instalación.', 'Cadena de caracteres', 'FUN');
INSERT INTO dominio VALUES ('GFC ', 'Tipo de edificio gubernamental', 'Clasificación del tipo de instalación gubernamental según la autoridad a cargo.', 'Cadena de caracteres', 'GFC');
INSERT INTO dominio VALUES ('HCT ', 'Jurisdicción de vía de transporte', 'Clasificación de una vía de transporte en función de la jurisdicción administrativa a la que pertenece.', 'Cadena de caracteres', 'HCT');
INSERT INTO dominio VALUES ('HQC ', 'Tipo de representación hipsográfica', 'Clasificación de la representación de las curvas de nivel de acuerdo a su origen, intervalo de representación y características morfológicas del terreno.', 'Cadena de caracteres', 'HQC');
INSERT INTO dominio VALUES ('HYP ', 'Régimen hidrológico', 'Clasificación de acuerdo a la temporalidad de la presencia de agua en la superficie terrestre.', 'Cadena de caracteres', 'HYP');
INSERT INTO dominio VALUES ('IRU ', 'Servicio de transporte', 'Propósito de traslado de un medio de transporte.', 'Cadena de caracteres', 'IRU');
INSERT INTO dominio VALUES ('JAP ', 'Jurisdicción de área protegida', 'Autoridad que tiene la jurisdicción de un área protegida.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('LOC ', 'Ubicación vertical relativa', 'Clasificación vertical de la posición de un objeto en el terreno.', 'Cadena de caracteres', 'LOC');
INSERT INTO dominio VALUES ('MCC ', 'Tipo de material estructural', 'Clasificación del principal material constructivo de un objeto.', 'Cadena de caracteres', 'MCC');
INSERT INTO dominio VALUES ('MES ', 'Separación vial', 'Indicativo de la presencia de divisiones viales, como separaciones por medio de barreras verticales.', 'Booleano', 'MES');
INSERT INTO dominio VALUES ('MO1 ', 'Método de obtención punto', 'Clasificación para la obtención de puntos acotados de acuerdo a la metodología utilizada.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('MO2 ', 'Método de obtención curva', 'Clasificación para la generación de curvas de nivel de acuerdo a la metodología utilizada.', 'Dominio', '-  ');
INSERT INTO dominio VALUES ('MRG ', 'Marco de referencia geodésico', 'Marco de referencia al cual está referida la coordenada, la altura o la gravedad del punto.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('OVU ', 'Orientación de la trayectoria', 'Posición del vuelo respecto a los puntos cardinales.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('PAA ', 'Precisión altimétrica', 'Precisión de la altura.', 'Numérico', '-  ');
INSERT INTO dominio VALUES ('PAL ', 'Tipo de marca', 'Tipo de marca del punto a la cual está referida la coordenada o altura de un punto.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('PDT ', 'Tipo de punto acotado', 'Clasificación de un punto acotado según la superficie en la que es medido y su utilización en la edición cartográfica.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('PLA ', 'Precisión planimétrica', 'Precisión planimétrica de una coordenada.', 'Numérico', '-  ');
INSERT INTO dominio VALUES ('PPC ', 'Tipo de central eléctrica', 'Clasificación del tipo de central eléctrica según su fuente de energía.', 'Cadena de caracteres', 'PPC');
INSERT INTO dominio VALUES ('PPO ', 'Producto', 'Indica el producto principal resultante de una actividad de producción, minera o agrícola.', 'Cadena de caracteres', 'PPO');
INSERT INTO dominio VALUES ('RFA ', 'Tipo de instalación religiosa', 'Clasificación del tipo de lugar destinado al culto y prédica de cualquier religión.', 'Cadena de caracteres', 'RFA');
INSERT INTO dominio VALUES ('RGC ', 'Trocha', 'Separación entre rieles, medida perpendicularmente.', 'Cadena de caracteres', 'RGC');
INSERT INTO dominio VALUES ('RRA ', 'Tipo de tracción', 'Método a través del cual se distribuye la energía en un medio de transporte.', 'Cadena de caracteres', 'RRA');
INSERT INTO dominio VALUES ('RST ', 'Tipo de superficie de vía', 'Clasificación del material de construcción de las vías de comunicación destinado para uso vial.', 'Cadena de caracteres', 'RST');
INSERT INTO dominio VALUES ('SMC ', 'Material de superficie', 'Clasificación del material de la superficie de acuerdo a su composición. ', 'Cadena de caracteres', 'SMC');
INSERT INTO dominio VALUES ('SOE ', 'Soporte', 'Medio de almacenamiento de datos.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('SWT ', 'Tipo de fuente natural', 'Clasificación del tipo de fuente natural de agua según su origen.', 'Cadena de caracteres', 'SWT');
INSERT INTO dominio VALUES ('TA1 ', 'Tipo de accidente costero', 'Clasificación de la configuración geomorfológica de la zona litoral.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('TAP ', 'Tipo de área protegida', 'Área que por su extraordinarias belleza o riqueza en flora y fauna autóctona o en razón de un interés científico, debe ser protegida y conservada para investigaciones científicas, educación y goce de las presentes y futuras generaciones.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('TAS ', 'Tipo de asentamiento', 'Categorización en función del tamaño y de la configuración espacial del asentamiento humano.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('TC1 ', 'Tipo de edificio de comunicaciones', 'Clasificación según tipo de comunicaciones.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('TCC ', 'Tipo de suelo consolidado', 'Clasificación referida particularmente al tipo de rocas.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('TCP ', 'Tipo de círculo polar', 'Clasificación de cada uno de los paralelos que representan los círculos polares Ártico y Antártico.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('TDA ', 'Tipo de antena', 'Clasificación de antena según su uso.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('TDH ', 'Tipo de hito', 'Clasificación de hito según su ubicación', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('TDU ', 'Tipo de ducto', 'Clasificación de ducto por material que transporta.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('TEF ', 'Tipo de estación', 'Clasificación del lugar donde regularmente se detienen los trenes y admiten viajeros y/o mercancías.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('TEN ', 'Tipo de tensión', 'Clasificación de línea para transporte o distribución de energía eléctrica de acuerdo a su tensión nominal.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('TES ', 'Tipo de edificio de seguridad', 'Clasificación de edificios de seguridad según la autoridad a cargo.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('TGG ', 'Tipo de suelo congelado', 'Clasificación de suelos cuya dureza aumenta con el congelamiento.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('TGO ', 'Tipo de gravedad oficial', 'Clasificación del valor de la gravedad según el método utilizado para su cálculo.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('THH ', 'Tipo de humedal', 'Clasificación según características geomorfológicas, hidrológicas y ecosistémicas.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('TI1 ', 'Tipo de base antártica', 'Clasificación de la base en función del período en el que se encuentra en actividad.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('TIN ', 'Tipo de instalación deportiva', 'Clasificación de una instalación, ya sea deportiva o para esparcimiento.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('TLG ', 'Tipo de geoforma', 'Clasificación de una geoforma de acuerdo sus características geomorfológicas.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('TLQ ', 'Tipo de línea de quiebre', 'Línea que indica el tipo de cambio de la orientación de la pendiente. También es conocida como breakline. ', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('TMA ', 'Tipo de manzana', 'Clasificación según el nivel de presencia de edificaciones.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('TP1 ', 'Tipo de polo', 'Clasificación de cada uno de los dos puntos más septentrional y más austral de la superficie terrestre, opuestos entre sí, en función del hemisferio donde se encuentran.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('TPL ', 'Tipo de pileta', 'Clasificación de piletas de depósito de líquidos industriales y orgánicos según su tratamiento.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('TRO ', 'Tipo de rompeolas', 'Tipo de muro o pared de contención según su ubicación.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('TSN ', 'Tipo de suelo no consolidado', 'Se refiere particularmente a los sedimentos y suelos en sentido amplio.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('TTR ', 'Tipo de trópico', 'Clasificación de cada uno de los dos círculos imaginarios principales de la esfera celeste paralelos al Ecuador.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('TUP ', 'Tipo de uso de puente', 'Clasificación de acuerdo al modo de transporte que circula en él.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('TYP ', 'Tipo de vía de transporte', 'Clasificación de la vía de transporte en base a su diseño constructivo. Se refiere a los carriles, su distribución y características complementarias.', 'Cadena de caracteres', 'TYP');
INSERT INTO dominio VALUES ('TZ1 ', 'Denominación de zona de frontera', 'Denominación de la zona adyacente al límite internacional, que constituye una zona de seguridad destinada a complementar las previsiones territoriales de la defensa nacional y/o un área prioritaria para su desarrollo.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('TZZ ', 'Tipo de zona de frontera', 'Clasificación de la zona adyacente al límite internacional, que constituye una zona de seguridad destinada a complementar las previsiones territoriales de la defensa nacional y/o un área prioritaria para su desarrollo.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('VLJ ', 'Validación de límite interprovincial', 'Tipo de validación de un límite entre provincias.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('VLP ', 'Validación', 'Tipo de validación según la autoridad competente.', 'Cadena de caracteres', '-  ');
INSERT INTO dominio VALUES ('ISIC', 'Tipo de industria', 'Clasificación de actividad manufacturera según el Estándar Internacional de Clasificación de Industrias (ISIC).', 'Cadena de caracteres', '-  ');


-- Completed on 2019-05-03 11:41:28

--
-- PostgreSQL database dump complete
--

