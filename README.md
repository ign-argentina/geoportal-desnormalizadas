# geoportal-desnormalizadas

Conjunto de consultas y/o store procedures necesarios para construir las tablas desnormalizadas (sin la codificación del catálogo de IGN) a partir de los datos Oficiales de IGN

## Uso

  - Ejecutar los siguientes scripts en la base de datos con un usuario que tenga privilegios para crear esquemas:
  	- 00.esquema_create.sql
  	- 01.dominio_create_table.sql
  	- 02.dominio_insert.sql
  	- 03.dominio_valor_create_table.sql
  	- 04.dominio_valor_insert.sql
  	- 05.atributo_create_table.sql
  	- 06.atributo_insert.sql
  	- 07.atributo_leyenda_create_table.sql
  	- 08.atributo_leyenda_insert.sql
  	- 09.atributo_quitar_create_table.sql
  	- 10.atributo_quitar_insert.sql
  	- 11.atributo_sld_create_table.sql
  	- 12.atributo_sld_insert.sql
  - Editar el archivo de configuración `config.php`
  - Editar el archivo `genera_tablas_sig.php` para indicar las tablas a ser desnormalizadas
  - Ejecutar el script PHP `genera_tablas_sig.php`

## Edición del archivo de configuración `config.php`

El archivo de configuración contiene los datos necesarios para que el script PHP pueda conectarse con la base de datos y realizar la desnormalización de tablas. Los parámetros de configuración son:

- sDBHost: host name o dirección IP del servidor de base de datos
- sDBName: nombre de la base de datos
- sDBUsr: usuario de conexión a la base de datos
- sDBPsw: contraseña de conexión a la base de datos
- sDBSchemaDomainsData: esquema de la base de datos que contiene los datos necesarios para que funcione el proceso de desnormalización. Este esquema se ha creado en la ejecución del script `00.esquema_create.sql` y se llama `desnormalizacion`
- sDBSchemaCatalog: esquema donde se crearan las tablas desnormalizadas. El esquema debe existir previo a la ejecución del script PHP

## Edición del archivo `genera_tablas_sig.php`

Se debe editar el script PHP para indicar qué tablas son las que se desean desnormalizar. Las tablas se indican mendiante el vector `$aTablas` y cada item del vector debe contener la tabla junto con su esquema. Por ejemplo: `$aTablas[] = 'externos.bahra_v2';`

