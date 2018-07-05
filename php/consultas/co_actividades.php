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
}

