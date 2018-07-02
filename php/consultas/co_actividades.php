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
                        resolucion || '/' || resolucion_anio,
                        horas_asignadas
                FROM personas_actividades 
                    LEFT OUTER JOIN actividades ON (personas_actividades.actividad = actividades.actividad)
		WHERE $where
           
        ";
	return toba::db()->consultar($sql);
    }
}

