<?php

class co_personas
{
    // listado de personas
    function get_personas($where='1=1')
    {
        $sql = "SELECT *
		FROM personas 
		WHERE $where
        ";
	return toba::db()->consultar($sql);
    }
}

