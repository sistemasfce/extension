------------------------------------------------------------
--[280000674]--  Actividades completo - cuadro 
------------------------------------------------------------

------------------------------------------------------------
-- apex_objeto
------------------------------------------------------------

--- INICIO Grupo de desarrollo 280
INSERT INTO apex_objeto (proyecto, objeto, anterior, identificador, reflexivo, clase_proyecto, clase, punto_montaje, subclase, subclase_archivo, objeto_categoria_proyecto, objeto_categoria, nombre, titulo, colapsable, descripcion, fuente_datos_proyecto, fuente_datos, solicitud_registrar, solicitud_obj_obs_tipo, solicitud_obj_observacion, parametro_a, parametro_b, parametro_c, parametro_d, parametro_e, parametro_f, usuario, creacion, posicion_botonera) VALUES (
	'extension', --proyecto
	'280000674', --objeto
	NULL, --anterior
	NULL, --identificador
	NULL, --reflexivo
	'toba', --clase_proyecto
	'toba_ei_cuadro', --clase
	'280000006', --punto_montaje
	NULL, --subclase
	NULL, --subclase_archivo
	NULL, --objeto_categoria_proyecto
	NULL, --objeto_categoria
	'Actividades completo - cuadro', --nombre
	NULL, --titulo
	'0', --colapsable
	NULL, --descripcion
	NULL, --fuente_datos_proyecto
	NULL, --fuente_datos
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
	'2018-10-17 11:57:24', --creacion
	'abajo'  --posicion_botonera
);
--- FIN Grupo de desarrollo 280

------------------------------------------------------------
-- apex_objeto_cuadro
------------------------------------------------------------
INSERT INTO apex_objeto_cuadro (objeto_cuadro_proyecto, objeto_cuadro, titulo, subtitulo, sql, columnas_clave, columna_descripcion, clave_dbr, archivos_callbacks, ancho, ordenar, paginar, tamano_pagina, tipo_paginado, mostrar_total_registros, eof_invisible, eof_customizado, siempre_con_titulo, exportar_paginado, exportar, exportar_rtf, pdf_propiedades, pdf_respetar_paginacion, asociacion_columnas, ev_seleccion, ev_eliminar, dao_nucleo_proyecto, dao_nucleo, dao_metodo, dao_parametros, desplegable, desplegable_activo, scroll, scroll_alto, cc_modo, cc_modo_anidado_colap, cc_modo_anidado_totcol, cc_modo_anidado_totcua) VALUES (
	'extension', --objeto_cuadro_proyecto
	'280000674', --objeto_cuadro
	NULL, --titulo
	NULL, --subtitulo
	NULL, --sql
	NULL, --columnas_clave
	NULL, --columna_descripcion
	'0', --clave_dbr
	NULL, --archivos_callbacks
	'100%', --ancho
	'1', --ordenar
	'0', --paginar
	NULL, --tamano_pagina
	'P', --tipo_paginado
	'1', --mostrar_total_registros
	'0', --eof_invisible
	NULL, --eof_customizado
	'0', --siempre_con_titulo
	'0', --exportar_paginado
	'1', --exportar
	'1', --exportar_rtf
	NULL, --pdf_propiedades
	NULL, --pdf_respetar_paginacion
	NULL, --asociacion_columnas
	NULL, --ev_seleccion
	NULL, --ev_eliminar
	NULL, --dao_nucleo_proyecto
	NULL, --dao_nucleo
	NULL, --dao_metodo
	NULL, --dao_parametros
	NULL, --desplegable
	NULL, --desplegable_activo
	'1', --scroll
	'500px', --scroll_alto
	NULL, --cc_modo
	NULL, --cc_modo_anidado_colap
	NULL, --cc_modo_anidado_totcol
	NULL  --cc_modo_anidado_totcua
);

------------------------------------------------------------
-- apex_objeto_ei_cuadro_columna
------------------------------------------------------------

--- INICIO Grupo de desarrollo 280
INSERT INTO apex_objeto_ei_cuadro_columna (objeto_cuadro_proyecto, objeto_cuadro, objeto_cuadro_col, clave, orden, titulo, estilo_titulo, estilo, ancho, formateo, vinculo_indice, no_ordenar, mostrar_xls, mostrar_pdf, pdf_propiedades, desabilitado, total, total_cc, usar_vinculo, vinculo_carpeta, vinculo_item, vinculo_popup, vinculo_popup_param, vinculo_target, vinculo_celda, vinculo_servicio, permitir_html, grupo, evento_asociado) VALUES (
	'extension', --objeto_cuadro_proyecto
	'280000674', --objeto_cuadro
	'280001110', --objeto_cuadro_col
	'titulo', --clave
	'1', --orden
	'Titulo', --titulo
	'ei-cuadro-col-tit', --estilo_titulo
	'4', --estilo
	NULL, --ancho
	'1', --formateo
	NULL, --vinculo_indice
	NULL, --no_ordenar
	NULL, --mostrar_xls
	NULL, --mostrar_pdf
	NULL, --pdf_propiedades
	NULL, --desabilitado
	NULL, --total
	NULL, --total_cc
	NULL, --usar_vinculo
	NULL, --vinculo_carpeta
	NULL, --vinculo_item
	NULL, --vinculo_popup
	NULL, --vinculo_popup_param
	NULL, --vinculo_target
	NULL, --vinculo_celda
	NULL, --vinculo_servicio
	'0', --permitir_html
	NULL, --grupo
	NULL  --evento_asociado
);
INSERT INTO apex_objeto_ei_cuadro_columna (objeto_cuadro_proyecto, objeto_cuadro, objeto_cuadro_col, clave, orden, titulo, estilo_titulo, estilo, ancho, formateo, vinculo_indice, no_ordenar, mostrar_xls, mostrar_pdf, pdf_propiedades, desabilitado, total, total_cc, usar_vinculo, vinculo_carpeta, vinculo_item, vinculo_popup, vinculo_popup_param, vinculo_target, vinculo_celda, vinculo_servicio, permitir_html, grupo, evento_asociado) VALUES (
	'extension', --objeto_cuadro_proyecto
	'280000674', --objeto_cuadro
	'280001111', --objeto_cuadro_col
	'solicitud_tipo', --clave
	'2', --orden
	'Tipo solicitud', --titulo
	'ei-cuadro-col-tit', --estilo_titulo
	'4', --estilo
	NULL, --ancho
	'1', --formateo
	NULL, --vinculo_indice
	NULL, --no_ordenar
	NULL, --mostrar_xls
	NULL, --mostrar_pdf
	NULL, --pdf_propiedades
	NULL, --desabilitado
	NULL, --total
	NULL, --total_cc
	NULL, --usar_vinculo
	NULL, --vinculo_carpeta
	NULL, --vinculo_item
	NULL, --vinculo_popup
	NULL, --vinculo_popup_param
	NULL, --vinculo_target
	NULL, --vinculo_celda
	NULL, --vinculo_servicio
	'0', --permitir_html
	NULL, --grupo
	NULL  --evento_asociado
);
INSERT INTO apex_objeto_ei_cuadro_columna (objeto_cuadro_proyecto, objeto_cuadro, objeto_cuadro_col, clave, orden, titulo, estilo_titulo, estilo, ancho, formateo, vinculo_indice, no_ordenar, mostrar_xls, mostrar_pdf, pdf_propiedades, desabilitado, total, total_cc, usar_vinculo, vinculo_carpeta, vinculo_item, vinculo_popup, vinculo_popup_param, vinculo_target, vinculo_celda, vinculo_servicio, permitir_html, grupo, evento_asociado) VALUES (
	'extension', --objeto_cuadro_proyecto
	'280000674', --objeto_cuadro
	'280001113', --objeto_cuadro_col
	'resolucion_desc', --clave
	'4', --orden
	'Resoluci�n', --titulo
	'ei-cuadro-col-tit', --estilo_titulo
	'4', --estilo
	NULL, --ancho
	'1', --formateo
	NULL, --vinculo_indice
	NULL, --no_ordenar
	NULL, --mostrar_xls
	NULL, --mostrar_pdf
	NULL, --pdf_propiedades
	NULL, --desabilitado
	NULL, --total
	NULL, --total_cc
	NULL, --usar_vinculo
	NULL, --vinculo_carpeta
	NULL, --vinculo_item
	NULL, --vinculo_popup
	NULL, --vinculo_popup_param
	NULL, --vinculo_target
	NULL, --vinculo_celda
	NULL, --vinculo_servicio
	'0', --permitir_html
	NULL, --grupo
	NULL  --evento_asociado
);
INSERT INTO apex_objeto_ei_cuadro_columna (objeto_cuadro_proyecto, objeto_cuadro, objeto_cuadro_col, clave, orden, titulo, estilo_titulo, estilo, ancho, formateo, vinculo_indice, no_ordenar, mostrar_xls, mostrar_pdf, pdf_propiedades, desabilitado, total, total_cc, usar_vinculo, vinculo_carpeta, vinculo_item, vinculo_popup, vinculo_popup_param, vinculo_target, vinculo_celda, vinculo_servicio, permitir_html, grupo, evento_asociado) VALUES (
	'extension', --objeto_cuadro_proyecto
	'280000674', --objeto_cuadro
	'280001117', --objeto_cuadro_col
	'fecha_desde', --clave
	'6', --orden
	'Fecha desde', --titulo
	'ei-cuadro-col-tit', --estilo_titulo
	'4', --estilo
	NULL, --ancho
	'8', --formateo
	NULL, --vinculo_indice
	NULL, --no_ordenar
	NULL, --mostrar_xls
	NULL, --mostrar_pdf
	NULL, --pdf_propiedades
	NULL, --desabilitado
	NULL, --total
	NULL, --total_cc
	NULL, --usar_vinculo
	NULL, --vinculo_carpeta
	NULL, --vinculo_item
	NULL, --vinculo_popup
	NULL, --vinculo_popup_param
	NULL, --vinculo_target
	NULL, --vinculo_celda
	NULL, --vinculo_servicio
	'0', --permitir_html
	NULL, --grupo
	NULL  --evento_asociado
);
INSERT INTO apex_objeto_ei_cuadro_columna (objeto_cuadro_proyecto, objeto_cuadro, objeto_cuadro_col, clave, orden, titulo, estilo_titulo, estilo, ancho, formateo, vinculo_indice, no_ordenar, mostrar_xls, mostrar_pdf, pdf_propiedades, desabilitado, total, total_cc, usar_vinculo, vinculo_carpeta, vinculo_item, vinculo_popup, vinculo_popup_param, vinculo_target, vinculo_celda, vinculo_servicio, permitir_html, grupo, evento_asociado) VALUES (
	'extension', --objeto_cuadro_proyecto
	'280000674', --objeto_cuadro
	'280001118', --objeto_cuadro_col
	'fecha_hasta', --clave
	'7', --orden
	'Fecha hasta', --titulo
	'ei-cuadro-col-tit', --estilo_titulo
	'4', --estilo
	NULL, --ancho
	'8', --formateo
	NULL, --vinculo_indice
	NULL, --no_ordenar
	NULL, --mostrar_xls
	NULL, --mostrar_pdf
	NULL, --pdf_propiedades
	NULL, --desabilitado
	NULL, --total
	NULL, --total_cc
	NULL, --usar_vinculo
	NULL, --vinculo_carpeta
	NULL, --vinculo_item
	NULL, --vinculo_popup
	NULL, --vinculo_popup_param
	NULL, --vinculo_target
	NULL, --vinculo_celda
	NULL, --vinculo_servicio
	'0', --permitir_html
	NULL, --grupo
	NULL  --evento_asociado
);
INSERT INTO apex_objeto_ei_cuadro_columna (objeto_cuadro_proyecto, objeto_cuadro, objeto_cuadro_col, clave, orden, titulo, estilo_titulo, estilo, ancho, formateo, vinculo_indice, no_ordenar, mostrar_xls, mostrar_pdf, pdf_propiedades, desabilitado, total, total_cc, usar_vinculo, vinculo_carpeta, vinculo_item, vinculo_popup, vinculo_popup_param, vinculo_target, vinculo_celda, vinculo_servicio, permitir_html, grupo, evento_asociado) VALUES (
	'extension', --objeto_cuadro_proyecto
	'280000674', --objeto_cuadro
	'280001119', --objeto_cuadro_col
	'actividad_tipo_desc', --clave
	'3', --orden
	'Tipo actividad', --titulo
	'ei-cuadro-col-tit', --estilo_titulo
	'0', --estilo
	NULL, --ancho
	'1', --formateo
	NULL, --vinculo_indice
	NULL, --no_ordenar
	NULL, --mostrar_xls
	NULL, --mostrar_pdf
	NULL, --pdf_propiedades
	NULL, --desabilitado
	NULL, --total
	NULL, --total_cc
	NULL, --usar_vinculo
	NULL, --vinculo_carpeta
	NULL, --vinculo_item
	NULL, --vinculo_popup
	NULL, --vinculo_popup_param
	NULL, --vinculo_target
	NULL, --vinculo_celda
	NULL, --vinculo_servicio
	'0', --permitir_html
	NULL, --grupo
	NULL  --evento_asociado
);
INSERT INTO apex_objeto_ei_cuadro_columna (objeto_cuadro_proyecto, objeto_cuadro, objeto_cuadro_col, clave, orden, titulo, estilo_titulo, estilo, ancho, formateo, vinculo_indice, no_ordenar, mostrar_xls, mostrar_pdf, pdf_propiedades, desabilitado, total, total_cc, usar_vinculo, vinculo_carpeta, vinculo_item, vinculo_popup, vinculo_popup_param, vinculo_target, vinculo_celda, vinculo_servicio, permitir_html, grupo, evento_asociado) VALUES (
	'extension', --objeto_cuadro_proyecto
	'280000674', --objeto_cuadro
	'280001120', --objeto_cuadro_col
	'responsable_desc', --clave
	'9', --orden
	'Responsable', --titulo
	'ei-cuadro-col-tit', --estilo_titulo
	'0', --estilo
	NULL, --ancho
	'1', --formateo
	NULL, --vinculo_indice
	NULL, --no_ordenar
	NULL, --mostrar_xls
	NULL, --mostrar_pdf
	NULL, --pdf_propiedades
	NULL, --desabilitado
	NULL, --total
	NULL, --total_cc
	NULL, --usar_vinculo
	NULL, --vinculo_carpeta
	NULL, --vinculo_item
	NULL, --vinculo_popup
	NULL, --vinculo_popup_param
	NULL, --vinculo_target
	NULL, --vinculo_celda
	NULL, --vinculo_servicio
	'0', --permitir_html
	NULL, --grupo
	NULL  --evento_asociado
);
INSERT INTO apex_objeto_ei_cuadro_columna (objeto_cuadro_proyecto, objeto_cuadro, objeto_cuadro_col, clave, orden, titulo, estilo_titulo, estilo, ancho, formateo, vinculo_indice, no_ordenar, mostrar_xls, mostrar_pdf, pdf_propiedades, desabilitado, total, total_cc, usar_vinculo, vinculo_carpeta, vinculo_item, vinculo_popup, vinculo_popup_param, vinculo_target, vinculo_celda, vinculo_servicio, permitir_html, grupo, evento_asociado) VALUES (
	'extension', --objeto_cuadro_proyecto
	'280000674', --objeto_cuadro
	'280001121', --objeto_cuadro_col
	'especialidad', --clave
	'10', --orden
	'Especialidad', --titulo
	'ei-cuadro-col-tit', --estilo_titulo
	'4', --estilo
	NULL, --ancho
	'1', --formateo
	NULL, --vinculo_indice
	NULL, --no_ordenar
	NULL, --mostrar_xls
	NULL, --mostrar_pdf
	NULL, --pdf_propiedades
	NULL, --desabilitado
	NULL, --total
	NULL, --total_cc
	NULL, --usar_vinculo
	NULL, --vinculo_carpeta
	NULL, --vinculo_item
	NULL, --vinculo_popup
	NULL, --vinculo_popup_param
	NULL, --vinculo_target
	NULL, --vinculo_celda
	NULL, --vinculo_servicio
	'0', --permitir_html
	NULL, --grupo
	NULL  --evento_asociado
);
INSERT INTO apex_objeto_ei_cuadro_columna (objeto_cuadro_proyecto, objeto_cuadro, objeto_cuadro_col, clave, orden, titulo, estilo_titulo, estilo, ancho, formateo, vinculo_indice, no_ordenar, mostrar_xls, mostrar_pdf, pdf_propiedades, desabilitado, total, total_cc, usar_vinculo, vinculo_carpeta, vinculo_item, vinculo_popup, vinculo_popup_param, vinculo_target, vinculo_celda, vinculo_servicio, permitir_html, grupo, evento_asociado) VALUES (
	'extension', --objeto_cuadro_proyecto
	'280000674', --objeto_cuadro
	'280001122', --objeto_cuadro_col
	'especialidad_2', --clave
	'11', --orden
	'Especialidad 2', --titulo
	'ei-cuadro-col-tit', --estilo_titulo
	'4', --estilo
	NULL, --ancho
	'1', --formateo
	NULL, --vinculo_indice
	NULL, --no_ordenar
	NULL, --mostrar_xls
	NULL, --mostrar_pdf
	NULL, --pdf_propiedades
	NULL, --desabilitado
	NULL, --total
	NULL, --total_cc
	NULL, --usar_vinculo
	NULL, --vinculo_carpeta
	NULL, --vinculo_item
	NULL, --vinculo_popup
	NULL, --vinculo_popup_param
	NULL, --vinculo_target
	NULL, --vinculo_celda
	NULL, --vinculo_servicio
	'0', --permitir_html
	NULL, --grupo
	NULL  --evento_asociado
);
INSERT INTO apex_objeto_ei_cuadro_columna (objeto_cuadro_proyecto, objeto_cuadro, objeto_cuadro_col, clave, orden, titulo, estilo_titulo, estilo, ancho, formateo, vinculo_indice, no_ordenar, mostrar_xls, mostrar_pdf, pdf_propiedades, desabilitado, total, total_cc, usar_vinculo, vinculo_carpeta, vinculo_item, vinculo_popup, vinculo_popup_param, vinculo_target, vinculo_celda, vinculo_servicio, permitir_html, grupo, evento_asociado) VALUES (
	'extension', --objeto_cuadro_proyecto
	'280000674', --objeto_cuadro
	'280001123', --objeto_cuadro_col
	'especialidad_3', --clave
	'12', --orden
	'Especialidad 3', --titulo
	'ei-cuadro-col-tit', --estilo_titulo
	'4', --estilo
	NULL, --ancho
	'1', --formateo
	NULL, --vinculo_indice
	NULL, --no_ordenar
	NULL, --mostrar_xls
	NULL, --mostrar_pdf
	NULL, --pdf_propiedades
	NULL, --desabilitado
	NULL, --total
	NULL, --total_cc
	NULL, --usar_vinculo
	NULL, --vinculo_carpeta
	NULL, --vinculo_item
	NULL, --vinculo_popup
	NULL, --vinculo_popup_param
	NULL, --vinculo_target
	NULL, --vinculo_celda
	NULL, --vinculo_servicio
	'0', --permitir_html
	NULL, --grupo
	NULL  --evento_asociado
);
INSERT INTO apex_objeto_ei_cuadro_columna (objeto_cuadro_proyecto, objeto_cuadro, objeto_cuadro_col, clave, orden, titulo, estilo_titulo, estilo, ancho, formateo, vinculo_indice, no_ordenar, mostrar_xls, mostrar_pdf, pdf_propiedades, desabilitado, total, total_cc, usar_vinculo, vinculo_carpeta, vinculo_item, vinculo_popup, vinculo_popup_param, vinculo_target, vinculo_celda, vinculo_servicio, permitir_html, grupo, evento_asociado) VALUES (
	'extension', --objeto_cuadro_proyecto
	'280000674', --objeto_cuadro
	'280001124', --objeto_cuadro_col
	'objetivos', --clave
	'13', --orden
	'Objetivos', --titulo
	'ei-cuadro-col-tit', --estilo_titulo
	'4', --estilo
	NULL, --ancho
	'1', --formateo
	NULL, --vinculo_indice
	NULL, --no_ordenar
	NULL, --mostrar_xls
	NULL, --mostrar_pdf
	NULL, --pdf_propiedades
	NULL, --desabilitado
	NULL, --total
	NULL, --total_cc
	NULL, --usar_vinculo
	NULL, --vinculo_carpeta
	NULL, --vinculo_item
	NULL, --vinculo_popup
	NULL, --vinculo_popup_param
	NULL, --vinculo_target
	NULL, --vinculo_celda
	NULL, --vinculo_servicio
	'0', --permitir_html
	NULL, --grupo
	NULL  --evento_asociado
);
INSERT INTO apex_objeto_ei_cuadro_columna (objeto_cuadro_proyecto, objeto_cuadro, objeto_cuadro_col, clave, orden, titulo, estilo_titulo, estilo, ancho, formateo, vinculo_indice, no_ordenar, mostrar_xls, mostrar_pdf, pdf_propiedades, desabilitado, total, total_cc, usar_vinculo, vinculo_carpeta, vinculo_item, vinculo_popup, vinculo_popup_param, vinculo_target, vinculo_celda, vinculo_servicio, permitir_html, grupo, evento_asociado) VALUES (
	'extension', --objeto_cuadro_proyecto
	'280000674', --objeto_cuadro
	'280001125', --objeto_cuadro_col
	'dep_academica_desc', --clave
	'14', --orden
	'Dep acad�mica', --titulo
	'ei-cuadro-col-tit', --estilo_titulo
	'0', --estilo
	NULL, --ancho
	'1', --formateo
	NULL, --vinculo_indice
	NULL, --no_ordenar
	NULL, --mostrar_xls
	NULL, --mostrar_pdf
	NULL, --pdf_propiedades
	NULL, --desabilitado
	NULL, --total
	NULL, --total_cc
	NULL, --usar_vinculo
	NULL, --vinculo_carpeta
	NULL, --vinculo_item
	NULL, --vinculo_popup
	NULL, --vinculo_popup_param
	NULL, --vinculo_target
	NULL, --vinculo_celda
	NULL, --vinculo_servicio
	'0', --permitir_html
	NULL, --grupo
	NULL  --evento_asociado
);
INSERT INTO apex_objeto_ei_cuadro_columna (objeto_cuadro_proyecto, objeto_cuadro, objeto_cuadro_col, clave, orden, titulo, estilo_titulo, estilo, ancho, formateo, vinculo_indice, no_ordenar, mostrar_xls, mostrar_pdf, pdf_propiedades, desabilitado, total, total_cc, usar_vinculo, vinculo_carpeta, vinculo_item, vinculo_popup, vinculo_popup_param, vinculo_target, vinculo_celda, vinculo_servicio, permitir_html, grupo, evento_asociado) VALUES (
	'extension', --objeto_cuadro_proyecto
	'280000674', --objeto_cuadro
	'280001126', --objeto_cuadro_col
	'dep_institucional_desc', --clave
	'15', --orden
	'Dep institucional', --titulo
	'ei-cuadro-col-tit', --estilo_titulo
	'0', --estilo
	NULL, --ancho
	'1', --formateo
	NULL, --vinculo_indice
	NULL, --no_ordenar
	NULL, --mostrar_xls
	NULL, --mostrar_pdf
	NULL, --pdf_propiedades
	NULL, --desabilitado
	NULL, --total
	NULL, --total_cc
	NULL, --usar_vinculo
	NULL, --vinculo_carpeta
	NULL, --vinculo_item
	NULL, --vinculo_popup
	NULL, --vinculo_popup_param
	NULL, --vinculo_target
	NULL, --vinculo_celda
	NULL, --vinculo_servicio
	'0', --permitir_html
	NULL, --grupo
	NULL  --evento_asociado
);
INSERT INTO apex_objeto_ei_cuadro_columna (objeto_cuadro_proyecto, objeto_cuadro, objeto_cuadro_col, clave, orden, titulo, estilo_titulo, estilo, ancho, formateo, vinculo_indice, no_ordenar, mostrar_xls, mostrar_pdf, pdf_propiedades, desabilitado, total, total_cc, usar_vinculo, vinculo_carpeta, vinculo_item, vinculo_popup, vinculo_popup_param, vinculo_target, vinculo_celda, vinculo_servicio, permitir_html, grupo, evento_asociado) VALUES (
	'extension', --objeto_cuadro_proyecto
	'280000674', --objeto_cuadro
	'280001143', --objeto_cuadro_col
	'resolucion_fecha', --clave
	'5', --orden
	'Resol. fecha', --titulo
	'ei-cuadro-col-tit', --estilo_titulo
	'4', --estilo
	NULL, --ancho
	'8', --formateo
	NULL, --vinculo_indice
	NULL, --no_ordenar
	NULL, --mostrar_xls
	NULL, --mostrar_pdf
	NULL, --pdf_propiedades
	NULL, --desabilitado
	NULL, --total
	NULL, --total_cc
	NULL, --usar_vinculo
	NULL, --vinculo_carpeta
	NULL, --vinculo_item
	NULL, --vinculo_popup
	NULL, --vinculo_popup_param
	NULL, --vinculo_target
	NULL, --vinculo_celda
	NULL, --vinculo_servicio
	'0', --permitir_html
	NULL, --grupo
	NULL  --evento_asociado
);
INSERT INTO apex_objeto_ei_cuadro_columna (objeto_cuadro_proyecto, objeto_cuadro, objeto_cuadro_col, clave, orden, titulo, estilo_titulo, estilo, ancho, formateo, vinculo_indice, no_ordenar, mostrar_xls, mostrar_pdf, pdf_propiedades, desabilitado, total, total_cc, usar_vinculo, vinculo_carpeta, vinculo_item, vinculo_popup, vinculo_popup_param, vinculo_target, vinculo_celda, vinculo_servicio, permitir_html, grupo, evento_asociado) VALUES (
	'extension', --objeto_cuadro_proyecto
	'280000674', --objeto_cuadro
	'280001144', --objeto_cuadro_col
	'ubicacion_desc', --clave
	'8', --orden
	'Ubicaci�n', --titulo
	'ei-cuadro-col-tit', --estilo_titulo
	'4', --estilo
	NULL, --ancho
	'1', --formateo
	NULL, --vinculo_indice
	NULL, --no_ordenar
	NULL, --mostrar_xls
	NULL, --mostrar_pdf
	NULL, --pdf_propiedades
	NULL, --desabilitado
	NULL, --total
	NULL, --total_cc
	NULL, --usar_vinculo
	NULL, --vinculo_carpeta
	NULL, --vinculo_item
	NULL, --vinculo_popup
	NULL, --vinculo_popup_param
	NULL, --vinculo_target
	NULL, --vinculo_celda
	NULL, --vinculo_servicio
	'0', --permitir_html
	NULL, --grupo
	NULL  --evento_asociado
);
INSERT INTO apex_objeto_ei_cuadro_columna (objeto_cuadro_proyecto, objeto_cuadro, objeto_cuadro_col, clave, orden, titulo, estilo_titulo, estilo, ancho, formateo, vinculo_indice, no_ordenar, mostrar_xls, mostrar_pdf, pdf_propiedades, desabilitado, total, total_cc, usar_vinculo, vinculo_carpeta, vinculo_item, vinculo_popup, vinculo_popup_param, vinculo_target, vinculo_celda, vinculo_servicio, permitir_html, grupo, evento_asociado) VALUES (
	'extension', --objeto_cuadro_proyecto
	'280000674', --objeto_cuadro
	'280001145', --objeto_cuadro_col
	'institucion_desc', --clave
	'16', --orden
	'Instituci�n', --titulo
	'ei-cuadro-col-tit', --estilo_titulo
	'4', --estilo
	NULL, --ancho
	'1', --formateo
	NULL, --vinculo_indice
	NULL, --no_ordenar
	NULL, --mostrar_xls
	NULL, --mostrar_pdf
	NULL, --pdf_propiedades
	NULL, --desabilitado
	NULL, --total
	NULL, --total_cc
	NULL, --usar_vinculo
	NULL, --vinculo_carpeta
	NULL, --vinculo_item
	NULL, --vinculo_popup
	NULL, --vinculo_popup_param
	NULL, --vinculo_target
	NULL, --vinculo_celda
	NULL, --vinculo_servicio
	'0', --permitir_html
	NULL, --grupo
	NULL  --evento_asociado
);
--- FIN Grupo de desarrollo 280
