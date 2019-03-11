------------------------------------------------------------
--[280000830]--  Prestadores - relacion 
------------------------------------------------------------

------------------------------------------------------------
-- apex_objeto
------------------------------------------------------------

--- INICIO Grupo de desarrollo 280
INSERT INTO apex_objeto (proyecto, objeto, anterior, identificador, reflexivo, clase_proyecto, clase, punto_montaje, subclase, subclase_archivo, objeto_categoria_proyecto, objeto_categoria, nombre, titulo, colapsable, descripcion, fuente_datos_proyecto, fuente_datos, solicitud_registrar, solicitud_obj_obs_tipo, solicitud_obj_observacion, parametro_a, parametro_b, parametro_c, parametro_d, parametro_e, parametro_f, usuario, creacion, posicion_botonera) VALUES (
	'extension', --proyecto
	'280000830', --objeto
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
	'Prestadores - relacion', --nombre
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
	'2019-03-07 14:45:30', --creacion
	NULL  --posicion_botonera
);
--- FIN Grupo de desarrollo 280

------------------------------------------------------------
-- apex_objeto_datos_rel
------------------------------------------------------------
INSERT INTO apex_objeto_datos_rel (proyecto, objeto, debug, clave, ap, punto_montaje, ap_clase, ap_archivo, sinc_susp_constraints, sinc_orden_automatico, sinc_lock_optimista) VALUES (
	'extension', --proyecto
	'280000830', --objeto
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
	'280000722', --dep_id
	'280000830', --objeto_consumidor
	'280000822', --objeto_proveedor
	'st_prestadores', --identificador
	'1', --parametros_a
	'1', --parametros_b
	NULL, --parametros_c
	NULL, --inicializar
	'1'  --orden
);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES (
	'extension', --proyecto
	'280000733', --dep_id
	'280000830', --objeto_consumidor
	'280000838', --objeto_proveedor
	'st_prestadores_areas', --identificador
	NULL, --parametros_a
	NULL, --parametros_b
	NULL, --parametros_c
	NULL, --inicializar
	'2'  --orden
);
--- FIN Grupo de desarrollo 280

------------------------------------------------------------
-- apex_objeto_datos_rel_asoc
------------------------------------------------------------

--- INICIO Grupo de desarrollo 280
INSERT INTO apex_objeto_datos_rel_asoc (proyecto, objeto, asoc_id, identificador, padre_proyecto, padre_objeto, padre_id, padre_clave, hijo_proyecto, hijo_objeto, hijo_id, hijo_clave, cascada, orden) VALUES (
	'extension', --proyecto
	'280000830', --objeto
	'280000057', --asoc_id
	NULL, --identificador
	'extension', --padre_proyecto
	'280000822', --padre_objeto
	'st_prestadores', --padre_id
	NULL, --padre_clave
	'extension', --hijo_proyecto
	'280000838', --hijo_objeto
	'st_prestadores_areas', --hijo_id
	NULL, --hijo_clave
	NULL, --cascada
	'1'  --orden
);
--- FIN Grupo de desarrollo 280

------------------------------------------------------------
-- apex_objeto_rel_columnas_asoc
------------------------------------------------------------
INSERT INTO apex_objeto_rel_columnas_asoc (proyecto, objeto, asoc_id, padre_objeto, padre_clave, hijo_objeto, hijo_clave) VALUES (
	'extension', --proyecto
	'280000830', --objeto
	'280000057', --asoc_id
	'280000822', --padre_objeto
	'280001123', --padre_clave
	'280000838', --hijo_objeto
	'280001153'  --hijo_clave
);
