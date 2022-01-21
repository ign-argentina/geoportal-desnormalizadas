<?php

/*********************************
Genera las tablas  para mostrar los datos SIG "lindos" porque QGIS (y WFS) no funciona correctamente con vistas.
Los atributos los transforma tomando datos del cat�logo IGN el cual se import� a la base de datos en las tablas:
- atributo_quitar: campos que no debe mostrar en la vista "linda"
- atributo_sld: campos correspondientes a los atributos feos (para SLD) y que deben dejarse
- atributo_leyenda: campos correspondientes a atributo leyenda
- dominio: maestro de dominios
- dominio_valor: posibles valores de cada dominio
- atributo: atributos que no corresponden a dominios
IMPORTANTE: Se debe informar el listado de tablas a procesar en el vector $aTablas
*********************************/
require_once 'LibStrings.php';
require_once 'config.php';

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
