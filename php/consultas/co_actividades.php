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
}

