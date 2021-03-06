<?php

class co_parametros
{
    // listado de ubicaciones
    function get_ubicaciones($where='1=1')
    {
        $sql = "SELECT *
		FROM ubicaciones 
		WHERE $where
        ";
	return toba::db()->consultar($sql);
    }
    
    // listado de ubicaciones
    function get_roles($where='1=1')
    {
        $sql = "SELECT *
		FROM roles
		WHERE $where
        ";
	return toba::db()->consultar($sql);
    }    
    
    // listado de ubicaciones
    function get_dependencias($where='1=1')
    {
        $sql = "SELECT *
		FROM dependencias 
		WHERE $where
        ";
	return toba::db()->consultar($sql);
    } 
    
    // listado de ubicaciones
    function get_instituciones($where='1=1')
    {
        $sql = "SELECT *
		FROM instituciones
		WHERE $where
        ";
	return toba::db()->consultar($sql);
    }  
    
    // listado de ubicaciones
    function get_resoluciones_tipos($where='1=1')
    {
        $sql = "SELECT *
		FROM resoluciones_tipos
		WHERE $where
        ";
	return toba::db()->consultar($sql);
    }  
    
    function get_ciclos_lectivos()
    {
	$sql = "SELECT *
		FROM ciclos_lectivos
                ORDER BY ciclo_lectivo DESC
		";
	return toba::db('planta')->consultar($sql);
    }    
}

