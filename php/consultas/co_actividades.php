<?php

class co_actividades
{
    // listado de actividades
    function get_actividades($where='1=1')
    {
        $sql = "SELECT *
		FROM actividades
		WHERE $where
        ";
	return toba::db()->consultar($sql);
    }
}

