<?php

//Datos de conexion a la base de datos
$sDBHost = '';
$sDBName = '';
$sDBUsr = '';
$sDBPsw = '';
$sDBSchemaDomainsData = ''; //Esquema de la base de datos donde se encuentran los datos necesarios para el proceso de desnormalización (dominio y dominio_valor)
$sDBSchemaCatalog = ''; //Esquema donde se crearan las tablas desnormalizadas

//Usuarios dueño de las tablas
$sDBOwner = '';

//Usuarios que deben estar asignados a las tablas
$aDBGrantUsers = array();
$aDBGrantUsers['nombreusuario'] = 'privilegio';

//Listado de tablas a procesar
$aTablas = array();

$aTablas[] = 'public.hojas100';
$aTablas[] = 'public.hojas025';
$aTablas[] = 'public.hojas250';
$aTablas[] = 'public.hojas050';
$aTablas[] = 'public.hojas500';
$aTablas[] = 'public.estructuras_operativas_y_defensivas';
$aTablas[] = 'public.instalacion_militar';
$aTablas[] = 'externos.pasos_de_fronteras_internacionales';
$aTablas[] = 'externos.complejos_fronterizos';
$aTablas[] = 'externos.area_vuelos_dsr';
$aTablas[] = 'externos.area_vuelos_vant';
$aTablas[] = 'public.cultura_y_religion';
$aTablas[] = 'public.salud';
$aTablas[] = 'public.puntos_de_ciencia_y_educacion';
$aTablas[] = 'public.puntos_de_asentamientos_y_edificios';
$aTablas[] = 'public.lineas_de_zona_costera';
$aTablas[] = 'public.areas_de_aguas_continentales';
$aTablas[] = 'public.lineas_de_aguas_continentales';
$aTablas[] = 'public.areas_de_zona_costera';
$aTablas[] = 'public.puntos_de_puertos_y_muelles';
$aTablas[] = 'externos.bahra_v2';
$aTablas[] = 'public.puntos_de_geomorfologia';
$aTablas[] = 'public.lineas_de_geomorfologia';
$aTablas[] = 'public.departamento';
$aTablas[] = 'public.linea_de_limite';
$aTablas[] = 'public.pais';
$aTablas[] = 'public.provincia';
$aTablas[] = 'public.zona_de_frontera';
$aTablas[] = 'externos.gobiernoslocales_2020';
$aTablas[] = 'public.puntos_de_comunicacion';
$aTablas[] = 'public.areas_de_fabricacion_y_procesamiento';
$aTablas[] = 'public.puntos_de_energia';
$aTablas[] = 'public.puntos_de_extraccion';
$aTablas[] = 'public.puntos_de_fabricacion_y_procesamiento';
$aTablas[] = 'public.puntos_de_gestion_de_residuos';
$aTablas[] = 'public.area_protegida';
$aTablas[] = 'public.geodesia_hitos_internacionales';
$aTablas[] = 'public.geodesia_hitos_interprovinciales';
$aTablas[] = 'public.doscientas_millas_sector_antartico';
$aTablas[] = 'public.plataforma_continental';
$aTablas[] = 'public.zona_economica_exclusiva_argentina';
$aTablas[] = 'public.zona_contigua_argentina';
$aTablas[] = 'public.mar_territorial_argentino';
$aTablas[] = 'public.municipio';
$aTablas[] = 'public.puntos_de_glaciologia';
$aTablas[] = 'public.areas_de_montana';
$aTablas[] = 'public.puntos_de_transporte_aereo';
$aTablas[] = 'public.puntos_de_transporte_ferroviario';
$aTablas[] = 'public.lineas_de_transporte_ferroviario';
$aTablas[] = 'public.controles';
$aTablas[] = 'externos.rutas_nacionales_2021_geocarto';
$aTablas[] = 'externos.calle';
$aTablas[] = 'public.vial';
$aTablas[] = 'public.areas_de_asentamientos_y_edificios';
$aTablas[] = 'public.linea_de_limite';
$aTablas[] = 'externos.gobiernoslocales_2020';

