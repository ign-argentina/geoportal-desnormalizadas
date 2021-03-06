-- Registros a importar a la tabla atributo
--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.6.2

-- Started on 2019-05-02 14:48:42


SET search_path = public, pg_catalog;

--
-- TOC entry 4620 (class 0 OID 263122)
-- Dependencies: 205
-- Data for Name: atributo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO atributo VALUES ('FNA1', 'Nombre geográfico', 'Nombre completo que se utiliza para designar un objeto en un mapa o carta. Está formado por el término genérico y el término específico. Ejemplo: río Mendoza.', 'Cadena de caracteres', 'FNA');
INSERT INTO atributo VALUES ('FNA2', 'Nombre geográfico 2', 'Nombre completo que se utiliza para designar un objeto en un mapa o carta. Está formado por el término genérico y el término específico. Ejemplo: río Mendoza.', 'Cadena de caracteres', 'FNA');
INSERT INTO atributo VALUES ('CER', 'Código de estación RAMSAC', 'Código alfanumérico que identifica a cada estación GPS/GNSS permanente de la Red RAMSAC.', 'Cadena de caracteres', NULL);
INSERT INTO atributo VALUES ('TIS', 'Tipo de isla', 'Clasificación de isla según las características de la masa de agua que la rodea.', 'Cadena de caracteres', NULL);
INSERT INTO atributo VALUES ('OBJETO', 'Leyenda', NULL, NULL, NULL);
INSERT INTO atributo VALUES ('AEL', 'Altura elipsoidal', 'Altura elipsoidal referida al marco de referencia geodésico nacional.', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('AI1', 'Año de instalación', 'Establecimiento del año de instalación de una estación GPS/GNSS permanente de RAMSAC.', 'Fecha', '-  ');
INSERT INTO atributo VALUES ('ALT', 'Altitud', 'Altura de elevación respecto al nivel medio del mar (cota).', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('AM1', 'Año de medición', 'Establecimiento del año de medición de un pilar geodésico.', 'Fecha', '-  ');
INSERT INTO atributo VALUES ('AVU', 'Altura de vuelo', 'Distancia que existe entre el punto de vista o centro óptico de la cámara aérea y el terreno.', 'Numérico positivo', '-  ');
INSERT INTO atributo VALUES ('BA1', 'Código BAHRA', 'Código correspondiente a la Base de Asentamientos Humanos de la República Argentina.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('CDH', 'Característica de hoja', 'Código que recibe cada unidad en la que se subdivide el territorio a los fines de la representación cartográfica', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('CFO', 'Cantidad de fotogramas', 'Número que representa la cantidad total de fotogramas que componen un recorrido.', 'Numérico entero positivo', '-  ');
INSERT INTO atributo VALUES ('CMA', 'Código de malla', 'Identificación alfanumérica de la malla formada pon un número comprendido entre 0 y 9 y/o una letra entre A y P', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('CMR', 'Cámara', 'Marca y modelo del dispositivo de captura de las imágenes fotográficas.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('COO', 'Cota oficial', 'Altura ortométrica referida al sistema de referencia vertical nacional.', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('CRE', 'Código de recorrido', 'Identificación del recorrido según el código de cuadrante, la ubicación del rollo y el código del rollo.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('CRO', 'Código de rollo', 'Identificación numérica única de cada rollo.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('CRV', 'Valor de curva de nivel', 'Valor específico asignado a la curva de nivel de elevación o de profundidad.', 'Numérico', 'CRV');
INSERT INTO atributo VALUES ('DDU', 'Descripción de ubicación', 'Reseña de la localización de un objeto geográfico.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('DEN', 'Densificación POSGAR', 'Código alfanumérico que identifica a puntos pertenecientes a la Red Densificación POSGAR.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('DIF', 'Distancia focal', 'Distancia desde el plano focal, donde se proyecta la imagen, hasta el foco del objetivo.', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('EDV', 'Escala de vuelo', 'Escala de la fotografía, la cual relaciona el tamaño de la imagen con el tamaño real del objeto, dependiendo de la altura de vuelo de la cámara aérea sobre el terreno y la distancia focal de la lente de la cámara. ', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('EGL', 'Elevación vertical relativa', 'Distancia vertical respecto a un plano relativo de referencia. ', 'Numérico', 'EGL');
INSERT INTO atributo VALUES ('EPS', 'Código EPSG/SRID ', 'Código publicado por el European Petroleum Survey Group.', 'Numérico entero corto', '-  ');
INSERT INTO atributo VALUES ('EQV', 'Equidistancia vertical', 'Distancia existente en un plano vertical entre dos curvas de nivel.', 'Numérico', 'EQV');
INSERT INTO atributo VALUES ('FDC', 'Fuente de captura', 'Identificación del nombre y tipo de fuente utilizada para capturar la información. Puede incluir fecha y otros datos adicionales.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('FDD', 'Fecha', 'Indicación del año, mes y día de toma del dato fuente. Acorde al formato establecido en la Norma ISO 8601:2000 5.2.1.1, donde [AAAA] representa un año calendario, [MM] el número ordinal de un mes natural en el año calendario, [DD] el número ordinal de un día dentro del mes calendario. ', 'Cadena de caracteres', 'FDD');
INSERT INTO atributo VALUES ('FDE', 'Fotograma desde', 'Numeración del primer fotograma de un recorrido. Se forma con el código de malla, el código de recorrido y el código de foto.', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('FEO', 'Orientación del objeto', 'Distancia angular medida desde el norte geográfico (0°) en sentido horario. Establece el patrón lineal del objeto para su representación cartográfica. ', 'Numérico', 'FEO');
INSERT INTO atributo VALUES ('FHA', 'Fotograma hasta', 'Numeración del último fotograma de un recorrido. Se forma con el código de malla, el código de recorrido y el código de foto.', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('FNA', 'Nombre geográfico', 'Nombre completo que se utiliza para designar un objeto en un mapa o carta. Está formado por el término genérico y el término específico. Ejemplo: río Mendoza.', 'Cadena de caracteres', 'FNA');
INSERT INTO atributo VALUES ('GNA', 'Término genérico', 'Parte del nombre geográfico que indica el tipo de objeto que identifica. Ejemplo: río, monte, glaciar, establecimiento.', 'Cadena de caracteres', 'GNA');
INSERT INTO atributo VALUES ('GSF', 'Gravedad oficial', 'Valor gravimétrico referido al sistema de referencia gravimétrico nacional.', 'Numérico', 'GSF');
INSERT INTO atributo VALUES ('IN1', 'Código INDEC', 'Código único de vías de circulación asignado por el Instituto Nacional de Estadística y Censos de la República Argentina.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('LAA', 'Latitud salida', 'Coordenadas geográficas de latitud que indican el final de un recorrido.', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('LAE', 'Latitud entrada', 'Coordenadas geográficas de latitud que indican el inicio de un recorrido.', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('LAG', 'Latitud grados', 'Grados sexagesimales de la latitud de un punto.', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('LAM', 'Latitud minutos', 'Minutos sexagesimales de la latitud de un punto.', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('LAS', 'Latitud segundos', 'Segundos sexagesimales de la latitud de un punto.', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('LOE', 'Longitud entrada', 'Coordenadas geográficas de longitud que indican el inicio de un recorrido.', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('LGR', 'Longitud grados', 'Grados sexagesimales de la longitud de un punto.', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('LOM', 'Longitud minutos', 'Minutos sexagesimales de la longitud de un punto.', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('LOS', 'Longitud segundos', 'Segundos sexagesimales de la longitud de un punto.', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('LSS', 'Longitud salida', 'Coordenadas geográficas de longitud que indican el final de un recorrido.', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('LTN', 'Contador de carriles', 'Número total de carriles independientes o paralelos, incluyendo ambas direcciones. ', 'Número', 'LTN');
INSERT INTO atributo VALUES ('NA3', 'Código de fotograma', 'Identificación del fotograma formada por el código de malla, código de recorrido y número de foto. El código de recorrido contiene el código de cuadrante, la ubicación del rollo y el código de rollo.', 'Cadena de caracteres', 'NA3');
INSERT INTO atributo VALUES ('NAM', 'Término específico', 'Parte de un nombre geográfico que acompaña al término genérico y que identifica e individualiza un objeto geográfico determinado. Ejemplo: Paraná en río Paraná; Upsala en glaciar Upsala; Las Marías en establecimiento Las Marías; Esperanza en el caso de bahía Esperanza.', 'Cadena de caracteres', 'NAM');
INSERT INTO atributo VALUES ('PA1', 'PASMA 1', 'Código alfanumérico que identifica puntos pertenecientes a la Red PASMA.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('PA2', 'PASMA 2', 'Código alfanumérico que identifica puntos pertenecientes a la Red PASMA.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('PA3', 'PASMA 3', 'Código alfanumérico que identifica puntos pertenecientes a la Red PASMA.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('PR1', 'Provincial 1', 'Código alfanumérico que identifica puntos pertenecientes a la Red Geodésica Provincial.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('PR2', 'Provincial 2', 'Código alfanumérico que identifica puntos pertenecientes a la Red Geodésica Provincial.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('PR3', 'Provincial 3', 'Código alfanumérico que identifica puntos pertenecientes a la Red Geodésica Provincial.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('PSG', 'POSGAR', 'Código alfanumérico que identifica puntos pertenecientes a la Red POSGAR.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('RNI', 'Red de nivelación', 'Código alfanumérico que identifica puntos de nivelación pertenecientes a la red geocéntrica.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('RTN', 'Designación de red vial', 'Identificación de una red vial.', 'Cadena de caracteres', 'RTN');
INSERT INTO atributo VALUES ('SAG', 'Autoridad de fuente', 'Nombre de la autoridad responsable de la información utilizada.', 'Cadena de caracteres', 'SAG');
INSERT INTO atributo VALUES ('TAO', 'Tipo de accidente submarino', 'Clasificación del relieve submarino.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('ULV', 'Última visita', 'Fecha de la última visita realizada al punto geodésico,  acorde al formato establecido en la Norma ISO 8601:2000 5.2.1.1, donde [AAAA] representa un año calendario, [MM] el número ordinal de un mes natural en el año calendario, [DD] el número ordinal de un día dentro del mes calendario.', 'Cadena de caracteres', '-  ');


-- Completed on 2019-05-02 14:48:43

--
-- PostgreSQL database dump complete
--

