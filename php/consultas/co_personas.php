<?php

class co_personas
{
    // listado de personas
    function get_personas($where='1=1')
    {
        $sql = "SELECT *,
                    apellido || ', ' || nombres as nombre_completo
		FROM personas 
		WHERE $where
                ORDER BY nombre_completo
        ";
	return toba::db('planta')->consultar($sql);
    }
    
    function get_nombre_persona($persona)
    {
        $sql = "SELECT 
                    apellido || ', ' || nombres as nombre_completo
		FROM personas 
		WHERE persona = $persona
        ";
	return toba::db('planta')->consultar_fila($sql);
    }    
}

