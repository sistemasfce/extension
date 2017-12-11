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
}

