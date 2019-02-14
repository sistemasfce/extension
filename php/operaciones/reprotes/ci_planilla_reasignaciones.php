<?php

class ci_planilla_reasignaciones extends extension_ci
{
    protected $s__filtro;

    //-----------------------------------------------------------------------------------
    //---- cuadro -----------------------------------------------------------------------
    //-----------------------------------------------------------------------------------
    function conf__cuadro(extension_ei_cuadro $cuadro)
    {
        $where = $this->dep('filtro')->get_sql_where();
        $datos = toba::consulta_php('co_actividades')->get_actividades_planilla($where);
        $cuadro->set_datos($datos);    
    }

    //-----------------------------------------------------------------------------------
    //---- filtro -----------------------------------------------------------------------
    //-----------------------------------------------------------------------------------
    function conf__filtro(extension_ei_filtro $filtro)
    {   
        if (isset($this->s__filtro)) {
            $filtro->set_datos($this->s__filtro);
        }   
        $filtro->columna('fecha_desde')->set_condicion_fija('desde');
        $filtro->columna('fecha_hasta')->set_condicion_fija('hasta');
    }  

    function evt__filtro__filtrar($datos)
    {   
            $this->s__filtro = $datos;
    }   

    function evt__filtro__cancelar()
    {   
            unset($this->s__filtro);
    }
}

