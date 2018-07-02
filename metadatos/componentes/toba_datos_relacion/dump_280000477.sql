------------------------------------------------------------
--[280000477]--  Actividades - relacion 
------------------------------------------------------------

------------------------------------------------------------
-- apex_objeto
------------------------------------------------------------

--- INICIO Grupo de desarrollo 280
INSERT INTO apex_objeto (proyecto, objeto, anterior, identificador, reflexivo, clase_proyecto, clase, punto_montaje, subclase, subclase_archivo, objeto_categoria_proyecto, objeto_categoria, nombre, titulo, colapsable, descripcion, fuente_datos_proyecto, fuente_datos, solicitud_registrar, solicitud_obj_obs_tipo, solicitud_obj_observacion, parametro_a, parametro_b, parametro_c, parametro_d, parametro_e, parametro_f, usuario, creacion, posicion_botonera) VALUES (
	'extension', --proyecto
	'280000477', --objeto
	NULL, --anterior
	NULL, --identificador
	NULL, --reflexivo
	'toba', --clase_proyecto
	'toba_datos_relacion', --clase
	'280000006', --punto_montaje
	NULL, --subclase
	NULL, --subclase_archivo
	NULL, --objeto_categoria_proyecto
	NULL, --objeto_categoria
	'Actividades - relacion', --nombre
	NULL, --titulo
	NULL, --colapsable
	NULL, --descripcion
	'extension', --fuente_datos_proyecto
	'extension', --fuente_datos
	NULL, --solicitud_registrar
	NULL, --solicitud_obj_obs_tipo
	NULL, --solicitud_obj_observacion
	NULL, --parametro_a
	NULL, --parametro_b
	NULL, --parametro_c
	NULL, --parametro_d
	NULL, --parametro_e
	NULL, --parametro_f
	NULL, --usuario
	'2017-12-05 14:31:12', --creacion
	NULL  --posicion_botonera
);
--- FIN Grupo de desarrollo 280

------------------------------------------------------------
-- apex_objeto_datos_rel
------------------------------------------------------------
INSERT INTO apex_objeto_datos_rel (proyecto, objeto, debug, clave, ap, punto_montaje, ap_clase, ap_archivo, sinc_susp_constraints, sinc_orden_automatico, sinc_lock_optimista) VALUES (
	'extension', --proyecto
	'280000477', --objeto
	'0', --debug
	NULL, --clave
	'2', --ap
	'280000006', --punto_montaje
	NULL, --ap_clase
	NULL, --ap_archivo
	'0', --sinc_susp_constraints
	'1', --sinc_orden_automatico
	'1'  --sinc_lock_optimista
);

------------------------------------------------------------
-- apex_objeto_dependencias
------------------------------------------------------------

--- INICIO Grupo de desarrollo 280
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES (
	'extension', --proyecto
	'280000405', --dep_id
	'280000477', --objeto_consumidor
	'280000476', --objeto_proveedor
	'actividades', --identificador
	'1', --parametros_a
	'1', --parametros_b
	NULL, --parametros_c
	NULL, --inicializar
	'1'  --orden
);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES (
	'extension', --proyecto
	'280000412', --dep_id
	'280000477', --objeto_consumidor
	'280000484', --objeto_proveedor
	'actividades_financiamientos', --identificador
	NULL, --parametros_a
	NULL, --parametros_b
	NULL, --parametros_c
	NULL, --inicializar
	'2'  --orden
);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES (
	'extension', --proyecto
	'280000413', --dep_id
	'280000477', --objeto_consumidor
	'280000485', --objeto_proveedor
	'actividades_informes', --identificador
	NULL, --parametros_a
	NULL, --parametros_b
	NULL, --parametros_c
	NULL, --inicializar
	'3'  --orden
);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES (
	'extension', --proyecto
	'280000414', --dep_id
	'280000477', --objeto_consumidor
	'280000486', --objeto_proveedor
	'actividades_instituciones', --identificador
	NULL, --parametros_a
	NULL, --parametros_b
	NULL, --parametros_c
	NULL, --inicializar
	'4'  --orden
);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES (
	'extension', --proyecto
	'280000415', --dep_id
	'280000477', --objeto_consumidor
	'280000487', --objeto_proveedor
	'actividades_ubicaciones', --identificador
	NULL, --parametros_a
	NULL, --parametros_b
	NULL, --parametros_c
	NULL, --inicializar
	'5'  --orden
);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES (
	'extension', --proyecto
	'280000416', --dep_id
	'280000477', --objeto_consumidor
	'280000490', --objeto_proveedor
	'personas_actividades', --identificador
	NULL, --parametros_a
	NULL, --parametros_b
	NULL, --parametros_c
	NULL, --inicializar
	'6'  --orden
);
--- FIN Grupo de desarrollo 280

------------------------------------------------------------
-- apex_objeto_datos_rel_asoc
------------------------------------------------------------

--- INICIO Grupo de desarrollo 280
INSERT INTO apex_objeto_datos_rel_asoc (proyecto, objeto, asoc_id, identificador, padre_proyecto, padre_objeto, padre_id, padre_clave, hijo_proyecto, hijo_objeto, hijo_id, hijo_clave, cascada, orden) VALUES (
	'extension', --proyecto
	'280000477', --objeto
	'280000034', --asoc_id
	NULL, --identificador
	'extension', --padre_proyecto
	'280000476', --padre_objeto
	'actividades', --padre_id
	NULL, --padre_clave
	'extension', --hijo_proyecto
	'280000484', --hijo_objeto
	'actividades_financiamientos', --hijo_id
	NULL, --hijo_clave
	NULL, --cascada
	'1'  --orden
);
INSERT INTO apex_objeto_datos_rel_asoc (proyecto, objeto, asoc_id, identificador, padre_proyecto, padre_objeto, padre_id, padre_clave, hijo_proyecto, hijo_objeto, hijo_id, hijo_clave, cascada, orden) VALUES (
	'extension', --proyecto
	'280000477', --objeto
	'280000035', --asoc_id
	NULL, --identificador
	'extension', --padre_proyecto
	'280000476', --padre_objeto
	'actividades', --padre_id
	NULL, --padre_clave
	'extension', --hijo_proyecto
	'280000485', --hijo_objeto
	'actividades_informes', --hijo_id
	NULL, --hijo_clave
	NULL, --cascada
	'2'  --orden
);
INSERT INTO apex_objeto_datos_rel_asoc (proyecto, objeto, asoc_id, identificador, padre_proyecto, padre_objeto, padre_id, padre_clave, hijo_proyecto, hijo_objeto, hijo_id, hijo_clave, cascada, orden) VALUES (
	'extension', --proyecto
	'280000477', --objeto
	'280000036', --asoc_id
	NULL, --identificador
	'extension', --padre_proyecto
	'280000476', --padre_objeto
	'actividades', --padre_id
	NULL, --padre_clave
	'extension', --hijo_proyecto
	'280000486', --hijo_objeto
	'actividades_instituciones', --hijo_id
	NULL, --hijo_clave
	NULL, --cascada
	'3'  --orden
);
INSERT INTO apex_objeto_datos_rel_asoc (proyecto, objeto, asoc_id, identificador, padre_proyecto, padre_objeto, padre_id, padre_clave, hijo_proyecto, hijo_objeto, hijo_id, hijo_clave, cascada, orden) VALUES (
	'extension', --proyecto
	'280000477', --objeto
	'280000037', --asoc_id
	NULL, --identificador
	'extension', --padre_proyecto
	'280000476', --padre_objeto
	'actividades', --padre_id
	NULL, --padre_clave
	'extension', --hijo_proyecto
	'280000487', --hijo_objeto
	'actividades_ubicaciones', --hijo_id
	NULL, --hijo_clave
	NULL, --cascada
	'4'  --orden
);
INSERT INTO apex_objeto_datos_rel_asoc (proyecto, objeto, asoc_id, identificador, padre_proyecto, padre_objeto, padre_id, padre_clave, hijo_proyecto, hijo_objeto, hijo_id, hijo_clave, cascada, orden) VALUES (
	'extension', --proyecto
	'280000477', --objeto
	'280000038', --asoc_id
	NULL, --identificador
	'extension', --padre_proyecto
	'280000476', --padre_objeto
	'actividades', --padre_id
	NULL, --padre_clave
	'extension', --hijo_proyecto
	'280000490', --hijo_objeto
	'personas_actividades', --hijo_id
	NULL, --hijo_clave
	NULL, --cascada
	'5'  --orden
);
--- FIN Grupo de desarrollo 280

------------------------------------------------------------
-- apex_objeto_rel_columnas_asoc
------------------------------------------------------------
INSERT INTO apex_objeto_rel_columnas_asoc (proyecto, objeto, asoc_id, padre_objeto, padre_clave, hijo_objeto, hijo_clave) VALUES (
	'extension', --proyecto
	'280000477', --objeto
	'280000034', --asoc_id
	'280000476', --padre_objeto
	'280000696', --padre_clave
	'280000484', --hijo_objeto
	'280000718'  --hijo_clave
);
INSERT INTO apex_objeto_rel_columnas_asoc (proyecto, objeto, asoc_id, padre_objeto, padre_clave, hijo_objeto, hijo_clave) VALUES (
	'extension', --proyecto
	'280000477', --objeto
	'280000035', --asoc_id
	'280000476', --padre_objeto
	'280000696', --padre_clave
	'280000485', --hijo_objeto
	'280000723'  --hijo_clave
);
INSERT INTO apex_objeto_rel_columnas_asoc (proyecto, objeto, asoc_id, padre_objeto, padre_clave, hijo_objeto, hijo_clave) VALUES (
	'extension', --proyecto
	'280000477', --objeto
	'280000036', --asoc_id
	'280000476', --padre_objeto
	'280000696', --padre_clave
	'280000486', --hijo_objeto
	'280000731'  --hijo_clave
);
INSERT INTO apex_objeto_rel_columnas_asoc (proyecto, objeto, asoc_id, padre_objeto, padre_clave, hijo_objeto, hijo_clave) VALUES (
	'extension', --proyecto
	'280000477', --objeto
	'280000037', --asoc_id
	'280000476', --padre_objeto
	'280000696', --padre_clave
	'280000487', --hijo_objeto
	'280000734'  --hijo_clave
);
INSERT INTO apex_objeto_rel_columnas_asoc (proyecto, objeto, asoc_id, padre_objeto, padre_clave, hijo_objeto, hijo_clave) VALUES (
	'extension', --proyecto
	'280000477', --objeto
	'280000038', --asoc_id
	'280000476', --padre_objeto
	'280000696', --padre_clave
	'280000490', --hijo_objeto
	'280000743'  --hijo_clave
);
