-- Registros a importar a la tabla atributo
--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.6.2

-- Started on 2019-05-02 14:48:42


SET search_path = desnormalizacion, pg_catalog;

--
-- TOC entry 4620 (class 0 OID 263122)
-- Dependencies: 205
-- Data for Name: atributo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO atributo VALUES ('FNA1', 'nombre_geografico', 'Nombre completo que se utiliza para designar un objeto en un mapa o carta. Está formado por el término genérico y el término específico. Ejemplo: río Mendoza.', 'Cadena de caracteres', 'FNA');
INSERT INTO atributo VALUES ('FNA2', 'nombre_geografico_2', 'Nombre completo que se utiliza para designar un objeto en un mapa o carta. Está formado por el término genérico y el término específico. Ejemplo: río Mendoza.', 'Cadena de caracteres', 'FNA');
INSERT INTO atributo VALUES ('CER', 'codigo_de_estacion_ramsac', 'Código alfanumérico que identifica a cada estación GPS/GNSS permanente de la Red RAMSAC.', 'Cadena de caracteres', NULL);
INSERT INTO atributo VALUES ('TIS', 'tipo_de_isla', 'Clasificación de isla según las características de la masa de agua que la rodea.', 'Cadena de caracteres', NULL);
-- INSERT INTO atributo VALUES ('OBJETO', 'Leyenda', NULL, NULL, NULL);
INSERT INTO atributo VALUES ('AEL', 'altura_elipsoidal', 'Altura elipsoidal referida al marco de referencia geodésico nacional.', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('AI1', 'anio_de_instalacion', 'Establecimiento del año de instalación de una estación GPS/GNSS permanente de RAMSAC.', 'Fecha', '-  ');
INSERT INTO atributo VALUES ('ALT', 'altitud', 'Altura de elevación respecto al nivel medio del mar (cota).', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('AM1', 'anio_de_medicion', 'Establecimiento del año de medición de un pilar geodésico.', 'Fecha', '-  ');
INSERT INTO atributo VALUES ('AVU', 'altura_de_vuelo', 'Distancia que existe entre el punto de vista o centro óptico de la cámara aérea y el terreno.', 'Numérico positivo', '-  ');
INSERT INTO atributo VALUES ('BA1', 'codigo_bahra', 'Código correspondiente a la Base de Asentamientos Humanos de la República Argentina.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('CDH', 'caracteristica_de_hoja', 'Código que recibe cada unidad en la que se subdivide el territorio a los fines de la representación cartográfica', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('CFO', 'cantidad_de_fotogramas', 'Número que representa la cantidad total de fotogramas que componen un recorrido.', 'Numérico entero positivo', '-  ');
INSERT INTO atributo VALUES ('CMA', 'codigo_de_malla', 'Identificación alfanumérica de la malla formada pon un número comprendido entre 0 y 9 y/o una letra entre A y P', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('CMR', 'camara', 'Marca y modelo del dispositivo de captura de las imágenes fotográficas.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('COO', 'cota_oficial', 'Altura ortométrica referida al sistema de referencia vertical nacional.', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('CRE', 'codigo_de_recorrido', 'Identificación del recorrido según el código de cuadrante, la ubicación del rollo y el código del rollo.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('CRO', 'codigo_de_rollo', 'Identificación numérica única de cada rollo.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('CRV', 'valor_de_curva_de_nivel', 'Valor específico asignado a la curva de nivel de elevación o de profundidad.', 'Numérico', 'CRV');
INSERT INTO atributo VALUES ('DDU', 'descripcion_de_ubicacion', 'Reseña de la localización de un objeto geográfico.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('DEN', 'densificacion_posgar', 'Código alfanumérico que identifica a puntos pertenecientes a la Red Densificación POSGAR.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('DIF', 'distancia_focal', 'Distancia desde el plano focal, donde se proyecta la imagen, hasta el foco del objetivo.', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('EDV', 'escala_de_vuelo', 'Escala de la fotografía, la cual relaciona el tamaño de la imagen con el tamaño real del objeto, dependiendo de la altura de vuelo de la cámara aérea sobre el terreno y la distancia focal de la lente de la cámara. ', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('EGL', 'elevacion_vertical_relativa', 'Distancia vertical respecto a un plano relativo de referencia. ', 'Numérico', 'EGL');
INSERT INTO atributo VALUES ('EPS', 'codigo_epsg_SRID ', 'Código publicado por el European Petroleum Survey Group.', 'Numérico entero corto', '-  ');
INSERT INTO atributo VALUES ('EQV', 'equidistancia_vertical', 'Distancia existente en un plano vertical entre dos curvas de nivel.', 'Numérico', 'EQV');
INSERT INTO atributo VALUES ('FDC', 'fuente_de_captura', 'Identificación del nombre y tipo de fuente utilizada para capturar la información. Puede incluir fecha y otros datos adicionales.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('FDD', 'fecha', 'Indicación del año, mes y día de toma del dato fuente. Acorde al formato establecido en la Norma ISO 8601:2000 5.2.1.1, donde [AAAA] representa un año calendario, [MM] el número ordinal de un mes natural en el año calendario, [DD] el número ordinal de un día dentro del mes calendario. ', 'Cadena de caracteres', 'FDD');
INSERT INTO atributo VALUES ('FDE', 'fotograma_desde', 'Numeración del primer fotograma de un recorrido. Se forma con el código de malla, el código de recorrido y el código de foto.', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('FEO', 'orientacion_del_objeto', 'Distancia angular medida desde el norte geográfico (0°) en sentido horario. Establece el patrón lineal del objeto para su representación cartográfica. ', 'Numérico', 'FEO');
INSERT INTO atributo VALUES ('FHA', 'fotograma_hasta', 'Numeración del último fotograma de un recorrido. Se forma con el código de malla, el código de recorrido y el código de foto.', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('FNA', 'nombre_geografico', 'Nombre completo que se utiliza para designar un objeto en un mapa o carta. Está formado por el término genérico y el término específico. Ejemplo: río Mendoza.', 'Cadena de caracteres', 'FNA');
INSERT INTO atributo VALUES ('GNA', 'termino_generico', 'Parte del nombre geográfico que indica el tipo de objeto que identifica. Ejemplo: río, monte, glaciar, establecimiento.', 'Cadena de caracteres', 'GNA');
INSERT INTO atributo VALUES ('GSF', 'gravedad_oficial', 'Valor gravimétrico referido al sistema de referencia gravimétrico nacional.', 'Numérico', 'GSF');
INSERT INTO atributo VALUES ('IN1', 'codigo_indec', 'Código único de vías de circulación asignado por el Instituto Nacional de Estadística y Censos de la República Argentina.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('LAA', 'latitud_salida', 'Coordenadas geográficas de latitud que indican el final de un recorrido.', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('LAE', 'latitud_entrada', 'Coordenadas geográficas de latitud que indican el inicio de un recorrido.', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('LAG', 'latitud_grados', 'Grados sexagesimales de la latitud de un punto.', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('LAM', 'latitud_minutos', 'Minutos sexagesimales de la latitud de un punto.', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('LAS', 'latitud_segundos', 'Segundos sexagesimales de la latitud de un punto.', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('LOE', 'longitud_entrada', 'Coordenadas geográficas de longitud que indican el inicio de un recorrido.', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('LGR', 'longitud_grados', 'Grados sexagesimales de la longitud de un punto.', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('LOM', 'longitud_minutos', 'Minutos sexagesimales de la longitud de un punto.', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('LOS', 'longitud_segundos', 'Segundos sexagesimales de la longitud de un punto.', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('LSS', 'longitud_salida', 'Coordenadas geográficas de longitud que indican el final de un recorrido.', 'Numérico', '-  ');
INSERT INTO atributo VALUES ('LTN', 'contador_de_carriles', 'Número total de carriles independientes o paralelos, incluyendo ambas direcciones. ', 'Número', 'LTN');
INSERT INTO atributo VALUES ('NA3', 'codigo_de_fotograma', 'Identificación del fotograma formada por el código de malla, código de recorrido y número de foto. El código de recorrido contiene el código de cuadrante, la ubicación del rollo y el código de rollo.', 'Cadena de caracteres', 'NA3');
INSERT INTO atributo VALUES ('NAM', 'termino_especifico', 'Parte de un nombre geográfico que acompaña al término genérico y que identifica e individualiza un objeto geográfico determinado. Ejemplo: Paraná en río Paraná; Upsala en glaciar Upsala; Las Marías en establecimiento Las Marías; Esperanza en el caso de bahía Esperanza.', 'Cadena de caracteres', 'NAM');
INSERT INTO atributo VALUES ('PA1', 'pasma_1', 'Código alfanumérico que identifica puntos pertenecientes a la Red PASMA.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('PA2', 'pasma_2', 'Código alfanumérico que identifica puntos pertenecientes a la Red PASMA.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('PA3', 'pasma_3', 'Código alfanumérico que identifica puntos pertenecientes a la Red PASMA.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('PR1', 'provincial_1', 'Código alfanumérico que identifica puntos pertenecientes a la Red Geodésica Provincial.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('PR2', 'provincial_2', 'Código alfanumérico que identifica puntos pertenecientes a la Red Geodésica Provincial.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('PR3', 'provincial_3', 'Código alfanumérico que identifica puntos pertenecientes a la Red Geodésica Provincial.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('PSG', 'posgar', 'Código alfanumérico que identifica puntos pertenecientes a la Red POSGAR.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('RNI', 'red_de_nivelacion', 'Código alfanumérico que identifica puntos de nivelación pertenecientes a la red geocéntrica.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('RTN', 'designacion_de_red_vial', 'Identificación de una red vial.', 'Cadena de caracteres', 'RTN');
INSERT INTO atributo VALUES ('SAG', 'autoridad_de_fuente', 'Nombre de la autoridad responsable de la información utilizada.', 'Cadena de caracteres', 'SAG');
INSERT INTO atributo VALUES ('TAO', 'tipo_de_accidente_submarino', 'Clasificación del relieve submarino.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('ULV', 'ultima_visita', 'Fecha de la última visita realizada al punto geodésico,  acorde al formato establecido en la Norma ISO 8601:2000 5.2.1.1, donde [AAAA] representa un año calendario, [MM] el número ordinal de un mes natural en el año calendario, [DD] el número ordinal de un día dentro del mes calendario.', 'Cadena de caracteres', '-  ');
INSERT INTO atributo VALUES ('COD_PCIA', 'codigo_indec_provincia', 'Desnormalización BAHRA', null, null);
INSERT INTO atributo VALUES ('NOM_PCIA', 'nombre_provincia', 'Desnormalización BAHRA', null, null);
INSERT INTO atributo VALUES ('COD_DEPTO', 'codigo_indec_departamento', 'Desnormalización BAHRA', null, null);
INSERT INTO atributo VALUES ('NOM_DEPTO', 'nombre_departamento', 'Desnormalización BAHRA', null, null);
INSERT INTO atributo VALUES ('COD_ASE', 'codigo_asentamiento', 'Desnormalización BAHRA', null, null);
INSERT INTO atributo VALUES ('NOMBRE', 'nombre_geografico', 'Desnormalización BAHRA', null, null);
INSERT INTO atributo VALUES ('TIPO', 'tipo_asentamiento', 'Desnormalización BAHRA', null, null);
INSERT INTO atributo VALUES ('COD_AGLO', 'codigo_aglomerado', 'Desnormalización BAHRA', null, null);
INSERT INTO atributo VALUES ('NOM_AGLO', 'nombre_aglomerado', 'Desnormalización BAHRA', null, null);
INSERT INTO atributo VALUES ('COD_AGL', 'codigo_indec_gobierno_local', 'Desnormalización BAHRA', null, null);
INSERT INTO atributo VALUES ('NOM_AGL', 'nombre_gobierno_local', 'Desnormalización BAHRA', null, null);
INSERT INTO atributo VALUES ('LAT_GD', 'latitud_grado_decimal', 'Desnormalización BAHRA', null, null);
INSERT INTO atributo VALUES ('LONG_GD', 'longitud_grado_decimal', 'Desnormalización BAHRA', null, null);
INSERT INTO atributo VALUES ('LAT_GS', 'latitud_grado_sexagecimal', 'Desnormalización BAHRA', null, null);
INSERT INTO atributo VALUES ('LONG_GS', 'longitud_grado_sexagecimal', 'Desnormalización BAHRA', null, null);
INSERT INTO atributo VALUES ('FUENTE', 'fuente_ubicacion', 'Desnormalización BAHRA', null, null);
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values
('TGL','tipo_gobierno_local','Desnormalización Gobierno Local');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values
('COD_TGL','codigo_tipo_gobierno_local','Desnormalización Gobierno Local');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values
('NAM_DPTO','departamento','Desnormalización Gobierno Local');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values
('COD_DPTO','codigo_departamento','Desnormalización Gobierno Local');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values
('NAM_PROV','provincia','Desnormalización Gobierno Local');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values
('COD_PROV','codigo_provincia','Desnormalización Gobierno Local');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values
('CARAC','caracteristica_de_hoja','Desnormalización Carta');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values
('ORIGEN_DEL','origen_del_dato','Desnormalización Carta');
INSERT INTO atributo VALUES ('GNA1', 'Termino genericos', 'Parte del nombre geográfico que indica el tipo de objeto que identifica. Ejemplo: río, monte, glaciar, establecimiento.', 'Cadena de caracteres', 'GNA');
INSERT INTO atributo VALUES ('NAM1', 'Termino especificos', 'Parte de un nombre geográfico que acompaña al término genérico y que identifica e individualiza un objeto geográfico determinado. Ejemplo: Paraná en río Paraná; Upsala en glaciar Upsala; Las Marías en establecimiento Las Marías; Esperanza en el caso de bahía Esperanza.', 'Cadena de caracteres', 'NAM');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values
('NUM_PROYEC','numero_proyecto','Desnormalización Vuelos VANT');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values
('NOMBRE_IGN','nombre','Desnormalización Vuelos VANT');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values
('FECHA_VUEL','fecha_vuelo','Desnormalización Vuelos VANT');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values
('CANT_FOTOS','cantidad_fotos','Desnormalización Vuelos VANT');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values
('ANIO','data','Desnormalización Vuelos VANT');


-- Completed on 2019-05-02 14:48:43

--
-- PostgreSQL database dump complete
--

