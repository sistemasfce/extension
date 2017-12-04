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
}

