
------------------------------------------------------------
-- apex_usuario_grupo_acc
------------------------------------------------------------
INSERT INTO apex_usuario_grupo_acc (proyecto, usuario_grupo_acc, nombre, nivel_acceso, descripcion, vencimiento, dias, hora_entrada, hora_salida, listar, permite_edicion, menu_usuario) VALUES (
	'extension', --proyecto
	'admin', --usuario_grupo_acc
	'Administrador', --nombre
	'0', --nivel_acceso
	'Accede a toda la funcionalidad', --descripcion
	NULL, --vencimiento
	NULL, --dias
	NULL, --hora_entrada
	NULL, --hora_salida
	NULL, --listar
	'1', --permite_edicion
	NULL  --menu_usuario
);

------------------------------------------------------------
-- apex_usuario_grupo_acc_item
------------------------------------------------------------

--- INICIO Grupo de desarrollo 0
INSERT INTO apex_usuario_grupo_acc_item (proyecto, usuario_grupo_acc, item_id, item) VALUES (
	'extension', --proyecto
	'admin', --usuario_grupo_acc
	NULL, --item_id
	'2'  --item
);
--- FIN Grupo de desarrollo 0

--- INICIO Grupo de desarrollo 280
INSERT INTO apex_usuario_grupo_acc_item (proyecto, usuario_grupo_acc, item_id, item) VALUES (
	'extension', --proyecto
	'admin', --usuario_grupo_acc
	NULL, --item_id
	'280000128'  --item
);
INSERT INTO apex_usuario_grupo_acc_item (proyecto, usuario_grupo_acc, item_id, item) VALUES (
	'extension', --proyecto
	'admin', --usuario_grupo_acc
	NULL, --item_id
	'280000129'  --item
);
INSERT INTO apex_usuario_grupo_acc_item (proyecto, usuario_grupo_acc, item_id, item) VALUES (
	'extension', --proyecto
	'admin', --usuario_grupo_acc
	NULL, --item_id
	'280000130'  --item
);
INSERT INTO apex_usuario_grupo_acc_item (proyecto, usuario_grupo_acc, item_id, item) VALUES (
	'extension', --proyecto
	'admin', --usuario_grupo_acc
	NULL, --item_id
	'280000131'  --item
);
INSERT INTO apex_usuario_grupo_acc_item (proyecto, usuario_grupo_acc, item_id, item) VALUES (
	'extension', --proyecto
	'admin', --usuario_grupo_acc
	NULL, --item_id
	'280000132'  --item
);
INSERT INTO apex_usuario_grupo_acc_item (proyecto, usuario_grupo_acc, item_id, item) VALUES (
	'extension', --proyecto
	'admin', --usuario_grupo_acc
	NULL, --item_id
	'280000133'  --item
);
INSERT INTO apex_usuario_grupo_acc_item (proyecto, usuario_grupo_acc, item_id, item) VALUES (
	'extension', --proyecto
	'admin', --usuario_grupo_acc
	NULL, --item_id
	'280000147'  --item
);
INSERT INTO apex_usuario_grupo_acc_item (proyecto, usuario_grupo_acc, item_id, item) VALUES (
	'extension', --proyecto
	'admin', --usuario_grupo_acc
	NULL, --item_id
	'280000148'  --item
);
INSERT INTO apex_usuario_grupo_acc_item (proyecto, usuario_grupo_acc, item_id, item) VALUES (
	'extension', --proyecto
	'admin', --usuario_grupo_acc
	NULL, --item_id
	'280000172'  --item
);
INSERT INTO apex_usuario_grupo_acc_item (proyecto, usuario_grupo_acc, item_id, item) VALUES (
	'extension', --proyecto
	'admin', --usuario_grupo_acc
	NULL, --item_id
	'280000180'  --item
);
INSERT INTO apex_usuario_grupo_acc_item (proyecto, usuario_grupo_acc, item_id, item) VALUES (
	'extension', --proyecto
	'admin', --usuario_grupo_acc
	NULL, --item_id
	'280000184'  --item
);
INSERT INTO apex_usuario_grupo_acc_item (proyecto, usuario_grupo_acc, item_id, item) VALUES (
	'extension', --proyecto
	'admin', --usuario_grupo_acc
	NULL, --item_id
	'280000207'  --item
);
INSERT INTO apex_usuario_grupo_acc_item (proyecto, usuario_grupo_acc, item_id, item) VALUES (
	'extension', --proyecto
	'admin', --usuario_grupo_acc
	NULL, --item_id
	'280000208'  --item
);
INSERT INTO apex_usuario_grupo_acc_item (proyecto, usuario_grupo_acc, item_id, item) VALUES (
	'extension', --proyecto
	'admin', --usuario_grupo_acc
	NULL, --item_id
	'280000209'  --item
);
INSERT INTO apex_usuario_grupo_acc_item (proyecto, usuario_grupo_acc, item_id, item) VALUES (
	'extension', --proyecto
	'admin', --usuario_grupo_acc
	NULL, --item_id
	'280000210'  --item
);
--- FIN Grupo de desarrollo 280
