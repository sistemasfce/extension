<?php

class co_actividades
{
    // listado de actividades
    function get_actividades($where='1=1')
    {
        $sql = "SELECT *
		FROM actividades
		WHERE $where
                ORDER BY titulo
        ";
	return toba::db()->consultar($sql);
    }

    // listado de actividades
    function get_actividades_completo($where='1=1')
    {
        $sql = "SELECT actividad,
                        titulo,
                        solicitud_tipo,
                        fecha_carga,
                        resolucion || '/' || resolucion_anio as resolucion_desc,
                        resolucion_fecha,
                        fecha_desde,
                        fecha_hasta,
                        actividades_tipos.descripcion as actividad_tipo_desc,
                        responsable,
                        especialidad,
                        especialidad_2,
                        especialidad_3,
                        objetivos,
                        dependencias.descripcion as dep_academica_desc,
                        dep2.descripcion as dep_institucional_desc
                        
		FROM actividades LEFT OUTER JOIN actividades_tipos ON (actividades.actividad_tipo = actividades_tipos.actividad_tipo)
                                LEFT OUTER JOIN dependencias ON (actividades.dep_academica = dependencias.dependencia)
                                LEFT OUTER JOIN dependencias as dep2 ON (actividades.dep_institucional = dep2.dependencia)
		WHERE $where
                ORDER BY fecha_desde
        ";
	return toba::db()->consultar($sql);
    }
    
    function get_actividades_planilla($where='1=1')
    {
        $sql = "SELECT personas_actividades.persona,
	'EX' as dimension_desc,
	actividades.titulo as actividad_desc,
        actividades.resolucion || '/' || actividades.resolucion_anio as resolucion_desc,
        CASE WHEN roles.rol = 4 THEN 'Director'
        WHEN roles.rol = 3 THEN 'Coordinador'
        ELSE 'Unidad ejecutora'
        END as rol_desc,
        
	--roles.descripcion as rol_desc,
        dependencias.descripcion as departamento_desc,
        CASE WHEN (SELECT COUNT(*) FROM ubicaciones,actividades_ubicaciones WHERE ubicaciones.ubicacion = actividades_ubicaciones.ubicacion 
            AND actividades_ubicaciones.actividad = actividades.actividad) > 1 THEN '' ELSE (SELECT codigo FROM ubicaciones,actividades_ubicaciones WHERE ubicaciones.ubicacion = actividades_ubicaciones.ubicacion 
            AND actividades_ubicaciones.actividad = actividades.actividad LIMIT 1) 
	END as ubicacion_desc,
	actividades.fecha_desde,
	actividades.fecha_hasta,
	CASE WHEN personas_actividades.responsable = 'S' THEN 'SI'
        ELSE 'NO' END as responsable
                        
        FROM personas_actividades 
			LEFT OUTER JOIN actividades ON personas_actividades.actividad = actividades.actividad
			LEFT OUTER JOIN actividades_tipos ON (actividades.actividad_tipo = actividades_tipos.actividad_tipo)
			LEFT OUTER JOIN roles ON personas_actividades.rol = roles.rol
                        LEFT OUTER JOIN dependencias ON (actividades.dep_academica = dependencias.dependencia)
                        
        WHERE $where
        ORDER BY fecha_desde
        ";
	return toba::db()->consultar($sql);
    }
    
    // listado de actividades
    function get_actividades_tipos($where='1=1')
    {
        $sql = "SELECT *
		FROM actividades_tipos
		WHERE $where
           
        ";
	return toba::db()->consultar($sql);
    }    
    
    function get_actividades_por_persona($where)
    {
        $sql = "SELECT  titulo, 
                        resolucion || '/' || resolucion_anio as resolucion_desc,
                        fecha_desde,
                        fecha_hasta,
                        resolucion_fecha,
                        roles.descripcion as rol_nombre,
                        horas_asignadas
                FROM personas_actividades 
                    LEFT OUTER JOIN actividades ON (personas_actividades.actividad = actividades.actividad)
                    LEFT OUTER JOIN roles ON (personas_actividades.rol = roles.rol)
		WHERE $where
           
        ";
	return toba::db()->consultar($sql);
    }
    
    function get_personas_por_actividad($where=null)
    {
        $sql = "SELECT  actividades.actividad,
                        titulo, 
                        fecha_desde,
                        fecha_hasta,
                        resolucion_fecha,                        
                        resolucion || '/' || resolucion_anio as resolucion_desc,
                        horas_asignadas,
                        roles.descripcion as rol_nombre,
                        persona
                FROM personas_actividades 
                    LEFT OUTER JOIN actividades ON (personas_actividades.actividad = actividades.actividad)
                    LEFT OUTER JOIN roles ON (personas_actividades.rol = roles.rol)
		
           
        ";
	return toba::db()->consultar($sql);
    }    
    
    function get_ubicaciones_actividad($actividad)
    {
        $sql = "SELECT descripcion
                FROM ubicaciones LEFT OUTER JOIN actividades_ubicaciones ON ubicaciones.ubicacion = actividades_ubicaciones.ubicacion
                        
                WHERE actividad = $actividad";
        return toba::db()->consultar($sql);        
    }    
    
    function get_instituciones_actividad($actividad)
    {
        $sql = "SELECT descripcion
                FROM instituciones LEFT OUTER JOIN actividades_instituciones ON instituciones.institucion = actividades_instituciones.institucion
                        
                WHERE actividad = $actividad";
        return toba::db()->consultar($sql);        
    }      

    function get_personas_actividad($actividad)
    {
        $sql = "SELECT persona, rol, horas_asignadas
                FROM personas_actividades      
                WHERE actividad = $actividad";
        return toba::db()->consultar($sql);        
    }  
    
}

