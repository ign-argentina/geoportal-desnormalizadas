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

INSERT INTO atributo VALUES ('FNA1', 'Nombre geográfico', 'Nombre completo que se utiliza para designar un objeto en un mapa o carta. Está formado por el término genérico y el término específico. Ejemplo: río Mendoza.', 'Cadena de caracteres', 'FNA');
INSERT INTO atributo VALUES ('FNA2', 'Nombre geográfico 2', 'Nombre completo que se utiliza para designar un objeto en un mapa o carta. Está formado por el término genérico y el término específico. Ejemplo: río Mendoza.', 'Cadena de caracteres', 'FNA');
INSERT INTO atributo VALUES ('CER', 'Código de estación RAMSAC', 'Código alfanumérico que identifica a cada estación GPS/GNSS permanente de la Red RAMSAC.', 'Cadena de caracteres', NULL);
INSERT INTO atributo VALUES ('TIS', 'Tipo de isla', 'Clasificación de isla según las características de la masa de agua que la rodea.', 'Cadena de caracteres', NULL);
-- INSERT INTO atributo VALUES ('OBJETO', 'Leyenda', NULL, NULL, NULL);
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
INSERT INTO atributo VALUES ('COD_PCIA', 'codigo_indec_provincia', 'Desnormalización BAHRA', null, null);
INSERT INTO atributo VALUES ('NOM_PCIA', 'nombre_provincia', 'Desnormalización BAHRA', null, null);
INSERT INTO atributo VALUES ('COD_DEPTO', 'codigo_indec_departamento', 'Desnormalización BAHRA', null, null);
INSERT INTO atributo VALUES ('NOM_DEPTO', 'nombre_departamento', 'Desnormalización BAHRA', null, null);
INSERT INTO atributo VALUES ('COD_ASE', 'codigo_asentamiento', 'Desnormalización BAHRA', null, null);
INSERT INTO atributo VALUES ('TIPO_ASENT', 'tipo_asentamiento', 'Desnormalización BAHRA', null, null);
INSERT INTO atributo VALUES ('COD_AGLO', 'codigo_aglomerado', 'Desnormalización BAHRA', null, null);
INSERT INTO atributo VALUES ('NOM_AGLO', 'nombre_aglomerado', 'Desnormalización BAHRA', null, null);
INSERT INTO atributo VALUES ('COD_AGL', 'codigo_indec_gobierno_local', 'Desnormalización BAHRA', null, null);
INSERT INTO atributo VALUES ('NOM_AGL', 'nombre_gobierno_local', 'Desnormalización BAHRA', null, null);
INSERT INTO atributo VALUES ('LAT_GD', 'latitud_grado_decimal', 'Desnormalización BAHRA', null, null);
INSERT INTO atributo VALUES ('LONG_GD', 'longitud_grado_decimal', 'Desnormalización BAHRA', null, null);
INSERT INTO atributo VALUES ('LAT_GS', 'latitud_grado_sexagecimal', 'Desnormalización BAHRA', null, null);
INSERT INTO atributo VALUES ('LONG_GS', 'longitud_grado_sexagecimal', 'Desnormalización BAHRA', null, null);
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
INSERT INTO atributo VALUES ('GNA1', 'Término genéricos', 'Parte del nombre geográfico que indica el tipo de objeto que identifica. Ejemplo: río, monte, glaciar, establecimiento.', 'Cadena de caracteres', 'GNA');
INSERT INTO atributo VALUES ('NAM1', 'Término específicos', 'Parte de un nombre geográfico que acompaña al término genérico y que identifica e individualiza un objeto geográfico determinado. Ejemplo: Paraná en río Paraná; Upsala en glaciar Upsala; Las Marías en establecimiento Las Marías; Esperanza en el caso de bahía Esperanza.', 'Cadena de caracteres', 'NAM');
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

insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('CAM','clasificacion_area','clasificacion_area');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('TYP','tipo_de_via_de_transporte','tipo_ de_via_de_transporte');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('RST','tipo_de_superficie_de_via','tipo_de_superficie_de_via');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('JER','jerarquia','jerarquia');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('HCT','jurisdiccion_de_via_de_transporte','jurisdiccion_de_via_de_transporte');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('COD_PFI','codigo_paso_de_frontera_internacional','codigo_paso_de_frontera_internacional');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('NOM_PFI','nombre_paso_de_frontera_internacional','nombre_paso_de_frontera_internacional');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('CAT_PFI','cotegoria_paso_de_frontera_internacional','cotegoria_paso_de_frontera_internacional');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('PRES_ACI','presencia_area_control_integrado','presencia_area_control_integrado');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('TIPO_ACI','tipo_area_control_integrado','tipo_area_control_integrado');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('PRES_CF','presencia_complejo_fronterizo','presencia_complejo_fronterizo');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('CANT_CF','cantidad_complejos_fronterizos','cantidad_complejos_fronterizos');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('REGION','region','region');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('NOM_ADF','nombre_area_de_desarrollo_de_frontera','nombre_area_de_desarrollo_de_frontera');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('NUM_ADF','numero_area_de_desarrollo_de_frontera','numero_area_de_desarrollo_de_frontera');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('PROV','provincia','provincia');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DEPTO','departamento','departamento');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('MUNI','municipio','municipio');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('LAT_PFI','latitud_pfi','latitud_pfi');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('LON_PFI','longitud_pfi','longitud_pfi');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('CRUCE_PFI','tipo_pase_segun_cruce','tipo_pase_segun_cruce');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('HAB_MIGR','habilitacion_migratoria','habilitacion_migratoria');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('MOD_MIGR','modalidad','modalidad');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('ESPEC','especialidad','especialidad');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('AUTORIDAD','autoridad_de_coordinacion','autoridad_de_coordinacion');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('FFSS_ARG','fuerza_de_seguridad','fuerza_de_seguridad');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('PVECINO','pais_vecino','pais_vecino');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('COD_CF','codigo_complejo_fronterizo','codigo_complejo_fronterizo');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('NOM_CF','nombre_complejo_fronterizo','nombre_complejo_fronterizo');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('LAT_CF','latitud_cf','latitud_cf');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('LON_CF','longitud_cf','longitud_cf');

insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('NOMBRE_ANT','nombre_anterior','nombre_anterior');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('FECHA_EDIC','fecha_edicion','fecha_edicion');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('FECHA_LEV_','fecha_levantamiento_o_compilacion','fecha_levantamiento_o_compilacion');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('TIPO_LEV_C','tipo_levantamiento_o_compilacion','tipo_levantamiento_o_compilacion');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('MARCO_DE_R','marco_de_referencia','marco_de_referencia');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('SIST_DE_PR','sistema_de_proyeccion','sistema_de_proyeccion');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('NUM_FAJA','numero_faja','numero_faja');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('MERIDIANO_','meridiano','meridiano');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('ELIPSOIDE','elipsoide','elipsoide');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('CODIGO_INT','codigo_interno','codigo_interno');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('LAT_NO','latitud_no','latitud_no');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('LON_NO','longitud_no','longitud_no');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('LAT_NE','latitud_ne','latitud_ne');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('LON_NE','longitud_ne','longitud_ne');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('LAT_SO','latitud_so','latitud_so');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('LON_SO','longitud_so','longitud_so');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('LAT_SE','latitud_se','latitud_se');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('LON_SE','longitud_se','longitud_se');

-- Riesgo
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('F_E','frecuencia_del_evento','frecuencia_del_evento');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('AC_ID','anticipando_la_crecida_id','anticipando_la_crecida_id');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('FUENTE_ELE','fuente_de_elevacion','fuente_de_elevacion');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DEIS_L','leptospirosis','leptospirosis');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DEIS_H','hantavirus','hantavirus');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DEIS_C','chagas_agudo_vectorial','chagas_agudo_vectorial');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DEIS_VIH','vih','vih');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DEIS_TUB','tuberculosis','tuberculosis');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DEIS_M','meningitis_tbc_edad_menores_cinco','meningitis_tbc_edad_menores_cinco');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DEIS_T','tetanos','tetanos');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DEIS_S','sifilis_congenita','sifilis_congenita');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('MORT_INF','total_mortalidad_infantil','total_mortalidad_infantil');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('MORT_MAT','total_mortalidad_materna','total_mortalidad_materna');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DES_EPIDEM','eventos_de_epidemias_registrados_desinventar','eventos_de_epidemias_registrados_desinventar');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DES_PLAGA','eventos_de_plagas_registrados_desinventar','eventos_de_plagas_registrados_desinventar');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DES_EPIZOO','eventos_de_epizootia_registrados_desinventar','eventos_de_epizootia_registrados_desinventar');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DES_BIOLOG','eventos_biologicos_registrados_desinventar','eventos_biologicos_registrados_desinventar');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DES_INCEND','eventos_de_incendios_registrados_desinventar','eventos_de_incendios_registrados_desinventar');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DES_INC_FO','eventos_de_incendios_forestales_registrados_desinventar','eventos_de_incendios_forestales_registrados_desinventar');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DES_ESTRUC','eventos_de_accidentes_estructuras_registrados_desinventar','eventos_de_accidentes_estructuras_registrados_desinventar');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DES_CONT','eventos_de_contaminacion_registrados_desinventar','eventos_de_contaminacion_registrados_desinventar');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DES_EXPLO','eventos_de_expolosion_registrados_desinventar','eventos_de_expolosion_registrados_desinventar');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DES_INFILT','eventos_de_infiltracion_registrados_desinventar','eventos_de_infiltracion_registrados_desinventar');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DES_ACCIDE','eventos_de_accidentes_registrados_desinventar','eventos_de_accidentes_registrados_desinventar');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DES_INTOXI','eventos_de_intoxicacion_registrados_desinventar','eventos_de_intoxicacion_registrados_desinventar');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DES_SOBRET','eventos_de_sobretension_registrados_desinventar','eventos_de_sobretension_registrados_desinventar');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DES_ALUVIO','eventos_de_aluviones_registrados_desinventar','eventos_de_aluviones_registrados_desinventar');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DES_TERREM','eventos_de_terremotos_registrados_desinventar','eventos_de_terremotos_registrados_desinventar');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DES_REUP_C','eventos_de_erupciones_y_cenizas_registrados_desinventar','eventos_de_erupciones_y_cenizas_registrados_desinventar');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DES_DESLIZ','eventos_de_deslizamientos_registrados_desinventar','eventos_de_deslizamientos_registrados_desinventar');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DES_ERO_CO','eventos_de_erosion_de_costa_registrados_desinventar','eventos_de_erosion_de_costa_registrados_desinventar');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DES_SEDIME','eventos_de_sedimentacion_registrados_desinventar','eventos_de_sedimentacion_registrados_desinventar');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DES_AVALAN','eventos_de_avalanchas_registrados_desinventar','eventos_de_avalanchas_registrados_desinventar');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DES_INUN','eventos_de_inundaciones_registrados_desinventar','eventos_de_inundaciones_registrados_desinventar');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DES_TORM','eventos_de_tormentas_registrados_desinventar','eventos_de_tormentas_registrados_desinventar');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DES_VIEFUE','eventos_de_vientos_fuertes_registrados_desinventar','eventos_de_vientos_fuertes_registrados_desinventar');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DES_TORMNI','eventos_de_tormentas_de_nieve_registrados_desinventar','eventos_de_tormentas_de_nieve_registrados_desinventar');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DES_NIEBLA','eventos_de_nieblas_registrados_desinventar','eventos_de_nieblas_registrados_desinventar');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DES_GRANIZ','eventos_de_granizos_registrados_desinventar','eventos_de_granizos_registrados_desinventar');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DES_SEQUIA','eventos_de_sequias_registrados_desinventar','eventos_de_sequias_registrados_desinventar');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DES_ESCARC','eventos_de_escarcha_registrados_desinventar','eventos_de_escarcha_registrados_desinventar');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DES_OLASCA','eventos_de_olas_de_calor_registrados_desinventar','eventos_de_olas_de_calor_registrados_desinventar');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DES_LLUVIA','eventos_de_lluvias_registrados_desinventar','eventos_de_lluvias_registrados_desinventar');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DES_TORMEL','eventos_de_tormentas_electricas_registrados_desinventar','eventos_de_tormentas_electricas_registrados_desinventar');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DES_TORNAD','eventos_de_tornados_registrados_desinventar','eventos_de_tornados_registrados_desinventar');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('OBRA_SOC','obra_social_incluye_pami','obra_social_incluye_pami');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('PREPAGA','prepaga_obra_social','prepaga_obra_social');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('PREPA_VO','prepaga_voluntaria','prepaga_voluntaria');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('PLAN','plan_o_programa_estatal_de_salud','plan_o_programa_estatal_de_salud');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('SIN_COBERT','sin_cobertura','sin_cobertura');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('PORC_S_CO','porcentaje_sin_cobertura','porcentaje_sin_cobertura');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('H_S_NBI','hogares_sin_NBI','hogares_sin_NBI');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('H_C_NBI','hogares_con_NBI','hogares_con_NBI');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('H_TOTAL','hogares_totales','hogares_totales');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('PORC_NBI','porcentaje_hogares_con_NBI','porcentaje_hogares_con_NBI');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DIF_VER','total_persona_con_dificultad_o_limitacion_permanente_para_ver','total_persona_con_dificultad_o_limitacion_permanente_para_ver');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DIF_OIR','total_persona_con_dificultad_o_limitacion_permanente_para_oir','total_persona_con_dificultad_o_limitacion_permanente_para_oir');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DIF_MOV','total_persona_con_dificultad_o_limitacion_permanente_para_caminar_o_subir','total_persona_con_dificultad_o_limitacion_permanente_para_caminar_o_subir');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DIF_OBJ','total_persona_con_dificultad_o_limitacion_permanente_para_agarrar_objetos','total_persona_con_dificultad_o_limitacion_permanente_para_agarrar_objetos');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('DIF_APRE','total_persona_con_dificultad_o_limitacion_permanente_para_entender_aprender','total_persona_con_dificultad_o_limitacion_permanente_para_entender_aprender');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('SUM_NEGL','suma_registro_incendios_negligencia','suma_registro_incendios_negligencia');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('SUM_INT','suma_registro_incendios_intencionales','suma_registro_incendios_intencionales');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('SUM_NAT','suma_registro_incendios_naturales','suma_registro_incendios_naturales');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('SUM_DESC','suma_registro_incendios_desconocido','suma_registro_incendios_desconocido');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('INCI_HAZ_I','niveles_de_incidentes_con_hazmat_if_sinagir','niveles_de_incidentes_con_hazmat_if_sinagir');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('INCI_HAZ_T','niveles_de_incidentes_con_hazmat_t_sinagir','niveles_de_incidentes_con_hazmat_t_sinagir');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('INCI_FORES','niveles_de_incidentes_forestales_sinagir','niveles_de_incidentes_forestales_sinagir');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('TERREM','niveles_de_exposicion_de_terremotos_sinagir','niveles_de_exposicion_de_terremotos_sinagir');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('ERUP','niveles_de_exposicion_de_erupciones_volcanicas_sinagir','niveles_de_exposicion_de_erupciones_volcanicas_sinagir');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('REMOC_MASA','niveles_de_exposicion_de_remocion_en_masa_sinagir','niveles_de_exposicion_de_remocion_en_masa_sinagir');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('INUN_REG','niveles_de_exposicion_inundaciones_sinagir','niveles_de_exposicion_inundaciones_sinagir');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('INUN_NUC','niveles_de_exposicion_inundaciones_de_nucleos_urbanos_sinagir','niveles_de_exposicion_inundaciones_de_nucleos_urbanos_sinagir');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('INUN_LLA','niveles_de_exposicion_inundaciones_de_llanura_sinagir','niveles_de_exposicion_inundaciones_de_llanura_sinagir');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('TORM_SEV','niveles_de_exposicion_de_tormentas_severas_sinagir','niveles_de_exposicion_de_tormentas_severas_sinagir');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('GRAN_NEV','niveles_de_exposicion_de_grandes_nevadas_sinagir','niveles_de_exposicion_de_grandes_nevadas_sinagir');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('INCI_PRES_','niveles_de_exposicion_de_incidentes_con_presas_op_sinagir','niveles_de_exposicion_de_incidentes_con_presas_op_sinagir');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('INCI_PRE_F','niveles_de_exposicion_de_incidentes_con_presas_f_sinagir','niveles_de_exposicion_de_incidentes_con_presas_f_sinagir');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('ENOS_CALID','niveles_de_exposicion_de_corrientes_calidas_sinagir','niveles_de_exposicion_de_corrientes_calidas_sinagir');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('ENOS_FRIOS','niveles_de_exposicion_de_corrientes_frias_sinagir','niveles_de_exposicion_de_corrientes_frias_sinagir');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('IVSD','indice_de_vulnerabilidad_social_frente_a_desastres_sintesis','indice_de_vulnerabilidad_social_frente_a_desastres_sintesis');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('ACELERAC','aceleracion_maxima_del_suelo','aceleracion_maxima_del_suelo');
insert into desnormalizacion.atributo (codigo,etiqueta,definicion) values ('P_SISMICA','peligrosidad_sismica','peligrosidad_sismica');


-- Completed on 2019-05-02 14:48:43

--
-- PostgreSQL database dump complete
--

