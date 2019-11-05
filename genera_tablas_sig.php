<?php

/*********************************
Genera las tablas  para mostrar los datos SIG "lindos" porque QGIS (y WFS) no funciona correctamente con vistas.
Los atributos los transforma tomando datos del catálogo IGN el cual se importó a la base de datos en las tablas:
- atributo_quitar: campos que no debe mostrar en la vista "linda"
- atributo_sld: campos correspondientes a los atributos feos (para SLD) y que deben dejarse
- atributo_leyenda: campos correspondientes a atributo leyenda
- dominio: maestro de dominios
- dominio_valor: posibles valores de cada dominio
- atributo: atributos que no corresponden a dominios
IMPORTANTE: Se debe informar el listado de tablas a procesar en el vector $aTablas
*********************************/
require_once 'config.php';



//Listado de tablas a procesar
$aTablas = array();


//Listado de tablas a procesar
$aTablas = array();

$aTablas[] = 'externos.bahra_v2';
$aTablas[] = 'public.hojas100';
$aTablas[] = 'public.hojas025';
$aTablas[] = 'public.hojas250';
$aTablas[] = 'public.hojas050';
$aTablas[] = 'public.hojas500';
$aTablas[] = 'public.estructuras_operativas_y_defensivas';
$aTablas[] = 'public.instalacion_militar';
$aTablas[] = 'externos.area_vuelos_dsr';
$aTablas[] = 'externos.area_vuelos_vant';
$aTablas[] = 'public.v_asentamientos_humanos';
$aTablas[] = 'public.puntos_de_asentamientos_y_edificios';
$aTablas[] = 'public.cultura_y_religion';
$aTablas[] = 'public.salud';
$aTablas[] = 'public.puntos_de_ciencia_y_educacion';
$aTablas[] = 'public.areas_de_asentamientos_y_edificios';
$aTablas[] = 'public.lineas_de_zona_costera';
$aTablas[] = 'public.areas_de_aguas_continentales';
$aTablas[] = 'public.lineas_de_aguas_continentales';
$aTablas[] = 'public.areas_de_zona_costera';
$aTablas[] = 'public.puntos_de_puertos_y_muelles';
$aTablas[] = 'public.puntos_de_comunicacion';
$aTablas[] = 'public.areas_de_fabricacion_y_procesamiento';
$aTablas[] = 'public.puntos_de_energia';
$aTablas[] = 'public.puntos_de_extraccion';
$aTablas[] = 'public.area_protegida';
$aTablas[] = 'public.departamento';
$aTablas[] = 'public.linea_de_limite';
$aTablas[] = 'public.provincia';
$aTablas[] = 'public.zona_de_frontera';
$aTablas[] = 'public.puntos_de_geomorfologia';
$aTablas[] = 'public.areas_de_glaciologia';
$aTablas[] = 'public.puntos_de_glaciologia';
$aTablas[] = 'public.areas_de_transporte_aereo';
$aTablas[] = 'public.puntos_de_transporte_aereo';
$aTablas[] = 'public.puntos_de_transporte_ferroviario';
$aTablas[] = 'public.lineas_de_transporte_ferroviario';
$aTablas[] = 'public.controles';
$aTablas[] = 'public.vial';
$aTablas[] = 'public.lineas_de_geomorfologia';
$aTablas[] = 'public.mar_territorial_argentino';
$aTablas[] = 'public.municipio';
$aTablas[] = 'public.pais';
$aTablas[] = 'public.plataforma_continental';
$aTablas[] = 'public.zona_contigua_argentina';
$aTablas[] = 'public.zona_economica_exclusiva_argentina';


// Conectando y seleccionado la base de datos  
$dbconn = pg_connect("host=".$sDBHost." dbname=".$sDBName." user=".$sDBUsr." password=".$sDBPsw)
    or die('No se ha podido conectar: ' . pg_last_error());

//Obtiene los campos que no debe mostrar en la vista "linda"
$s = "select codigo from ".$sDBSchemaDomainsData.".atributo_quitar";
$result2 = pg_query($s) or die('La consulta fallo: ' . pg_last_error().' <br /> '.$s);
$aCamposNoMostrar = array();
while ($aItem2 = pg_fetch_array($result2, null, PGSQL_ASSOC)) {
	$aCamposNoMostrar[] = $aItem2['codigo'];
}

file_put_contents('tablas_sig.sql', '');

foreach ($aTablas as $sTabla) {
	
	$aAux = explode('.', $sTabla);
	$sTablaEsquema = $aAux[0];
	$sTablaNombre = $aAux[1];
	
	$aCamposVista = array(); //Los campos generales que conforman la vista
	$aJoinsVista = array(); //Los joins que debe hacer para mostrar los valores de los dominios
	$aCamposLeyenda = array(); //Los campos que se concatenan para formar la leyenda
	$aCamposFeos = array(); //Los campos que los tiene que dejar como vienen porque se utilizan para SLD
	
	//Obtiene los campos correspondientes a atributo leyenda
	$s = "select codigo from ".$sDBSchemaDomainsData.".atributo_leyenda where tabla = '".$sTablaNombre."' order by orden asc";
	$result2 = pg_query($s) or die('La consulta fallo: ' . pg_last_error().' <br /> '.$s);
	while ($aItem2 = pg_fetch_array($result2, null, PGSQL_ASSOC)) {
		$aCamposLeyenda[] = $sTablaNombre.'.'.strtolower($aItem2['codigo']);
	}
	
	//Obtiene los campos correspondientes a los atributos feos (para SLD)
	$s = "select codigo from ".$sDBSchemaDomainsData.".atributo_sld where tabla = '".$sTabla."'";
	$result2 = pg_query($s) or die('La consulta fallo: ' . pg_last_error().' <br /> '.$s);
	while ($aItem2 = pg_fetch_array($result2, null, PGSQL_ASSOC)) {
		$aCamposFeos[] = $sTabla.'.'.strtolower($aItem2['codigo']);
	}
	
	$s = "SELECT column_name
		  FROM information_schema.columns
		  WHERE table_schema = '".$sTablaEsquema."'
				AND table_name   = '".$sTablaNombre."'
				AND column_name not in ('".join("', '", $aCamposNoMostrar)."')";
	$result = pg_query($s) or die('La consulta fallo: ' . pg_last_error().' <br /> '.$s);
	while ($aItem = pg_fetch_array($result, null, PGSQL_ASSOC)) {
		
		//Verifica si el campo no pertenece a atributo leyenda
		if (!in_array($aItem['column_name'], $aCamposLeyenda)) {
		
			//Intenta buscar el campo como dominio
			$s = "select * from ".$sDBSchemaDomainsData.".dominio where codigo = '".strtoupper($aItem['column_name'])."'";
			$result2 = pg_query($s) or die('La consulta fallo: ' . pg_last_error().' <br /> '.$s);
			if ($aItem2 = pg_fetch_array($result2, null, PGSQL_ASSOC)) {
				$aCamposVista[] = 'dominio_valor_'.$aItem['column_name'].'.valor as '.nombreSHP2NombreTabla($aItem2['etiqueta']);
				$aJoinsVista[] = $sDBSchemaDomainsData.'.dominio_valor as dominio_valor_'.$aItem['column_name'].' on (dominio_valor_'.$aItem['column_name'].'.codigo = \''.strtoupper($aItem['column_name']).'\' and dominio_valor_'.$aItem['column_name'].'.clave = '.$sTabla.'.'.$aItem['column_name'].')';
			} else {
				//Intenta buscar el campo como atributo
				$s = "select * from ".$sDBSchemaDomainsData.".atributo where codigo = '".strtoupper($aItem['column_name'])."'";
				if (count($aCamposLeyenda) > 0) {
					$s .= " and etiqueta != 'Leyenda'";
				}
				$result2 = pg_query($s) or die('La consulta fallo: ' . pg_last_error().' <br /> '.$s);
				if ($aItem2 = pg_fetch_array($result2, null, PGSQL_ASSOC)) {
					$aCamposVista[] = $sTablaNombre.'.'.$aItem['column_name'].' as '.nombreSHP2NombreTabla($aItem2['etiqueta']);
					$aJoinsVista[] = $sDBSchemaDomainsData.'.atributo as atributo_'.$aItem['column_name'].' on (atributo_'.$aItem['column_name'].'.codigo = \''.strtoupper($aItem['column_name']).'\')';
				} else {
					$aCamposVista[] = $sTablaNombre.'.'.$aItem['column_name'];
				}
			}
			
		}
		
	}
	
	/*
	print_r($aCamposLeyenda);
	print_r($aCamposVista);
	print_r($aJoinsVista);
	die;
	*/
	
	
	$aVista = array();
	$aVista[] = 'SELECT ';
	if (count($aCamposLeyenda) > 0) {
		$aVista[] = 'CONCAT('.join(", ' ', ", $aCamposLeyenda).') as leyenda, ';
	}
	$aVista[] = join(', ', $aCamposVista);
	if (count($aCamposFeos) > 0) {
		$aVista[] = ', '.join(', ', $aCamposFeos);
	}
	$aVista[] = 'FROM '.$sTablaEsquema.'.'.$sTablaNombre;
	if (count($aJoinsVista) > 0) {
		$aVista[] = 'LEFT JOIN '.join("\nLEFT JOIN ", $aJoinsVista);
	}
	
	$sVista = 'DROP TABLE IF EXISTS '.$sDBSchemaCatalog.'.sig_'.$sTablaNombre.';';
	$sVista .= "\n".'CREATE TABLE '.$sDBSchemaCatalog.'.sig_'.$sTablaNombre.' AS '.join("\n", $aVista).';';
	$sVista .= "\n".'ALTER TABLE '.$sDBSchemaCatalog.'.sig_'.$sTablaNombre.' ADD CONSTRAINT pk_sig_'.$sTablaNombre.' PRIMARY KEY (gid);';
	
	$sVista .= "\n".'ALTER TABLE '.$sDBSchemaCatalog.'.sig_'.$sTablaNombre.' OWNER to '.$sDBOwner.';';
	foreach ($aDBGrantUsers as $sGrantUser => $sPrivilege) { //Recorre el vector de usuarios y le asigna permisos sobre la tabla creada
		$sVista .= "\n".'GRANT '.$sPrivilege.' ON TABLE '.$sDBSchemaCatalog.'.sig_'.$sTablaNombre.' TO '.$sGrantUser.';';
	}
	//die($sVista);
	
	file_put_contents('tablas_sig.sql', $sVista."\n\n", FILE_APPEND);
}

//Ejecutar el script generado
pg_query(file_get_contents('tablas_sig.sql')) or die('La consulta fallo: ' . pg_last_error().' <br /> '.$s);

function nombreSHP2NombreTabla($sSHP) {
	$sSHP = utf8_decode($sSHP);
	$string = str_replace(' ', '_', $sSHP);
	$string = strtolower($string);
	$string = str_replace('.shp', '', $string);
	
	$string = trim($string);
 
    $string = str_replace(
        array('á', 'à', 'ä', 'â', 'ª', 'Á', 'À', 'Â', 'Ä'),
        array('a', 'a', 'a', 'a', 'a', 'A', 'A', 'A', 'A'),
        $string
    );
 
    $string = str_replace(
        array('é', 'è', 'ë', 'ê', 'É', 'È', 'Ê', 'Ë'),
        array('e', 'e', 'e', 'e', 'E', 'E', 'E', 'E'),
        $string
    );
 
    $string = str_replace(
        array('í', 'ì', 'ï', 'î', 'Í', 'Ì', 'Ï', 'Î'),
        array('i', 'i', 'i', 'i', 'I', 'I', 'I', 'I'),
        $string
    );
 
    $string = str_replace(
        array('ó', 'ò', 'ö', 'ô', 'Ó', 'Ò', 'Ö', 'Ô'),
        array('o', 'o', 'o', 'o', 'O', 'O', 'O', 'O'),
        $string
    );
 
    $string = str_replace(
        array('ú', 'ù', 'ü', 'û', 'Ú', 'Ù', 'Û', 'Ü'),
        array('u', 'u', 'u', 'u', 'U', 'U', 'U', 'U'),
        $string
    );
 
    $string = str_replace(
        array('ñ', 'Ñ', 'ç', 'Ç'),
        array('n', 'N', 'c', 'C',),
        $string
    );
 
    //Esta parte se encarga de eliminar cualquier caracter extraño
    $string = str_replace(
        array('º', '-', '~',
             '#', '@', '|', '!', '"',
             '·', '$', '%', '&', '/',
             '(', ')', '?', '\'', '¡',
             '¿', '[', '^', '<code>', ']',
             '+', '}', '{', '¨', '´',
             '>', '< ', ';', ',', ':'),
        '',
        $string
    );
	
	return $string;
}

?>