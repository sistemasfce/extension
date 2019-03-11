<?php

class co_servicios_terceros
{
    function get_comitentes($where='1=1')
    {
        $sql = "SELECT *
		FROM st_comitentes
		WHERE $where
                ORDER BY descripcion
        ";
	return toba::db()->consultar($sql);
    }

    function get_prestadores($where='1=1')
    {
        $sql = "SELECT *
		FROM st_prestadores
		WHERE $where
        ";
	$datos = toba::db()->consultar($sql);
        $aux = array();
        foreach ($datos as $dat) {
                $nombre = toba::consulta_php('co_personas')->get_nombre_persona($dat['persona']);
                $dat['nombre_completo'] = $nombre['nombre_completo'];
                $aux[] = $dat;
        }
        return $aux;
    }    

    function get_servicios_terceros($where='1=1')
    {
        $sql = "SELECT *
		FROM st_servicios_terceros
		WHERE $where
        ";
	return toba::db()->consultar($sql);
    }     
}
