<?php

class ci_actividades_completo extends extension_ci
{
    protected $s__filtro;

    //-----------------------------------------------------------------------------------
    //---- cuadro -----------------------------------------------------------------------
    //-----------------------------------------------------------------------------------
    function conf__cuadro(extension_ei_cuadro $cuadro)
    {
        $where = $this->dep('filtro')->get_sql_where();
        //if ($where != '1=1') {
            $datos = toba::consulta_php('co_actividades')->get_actividades_completo($where);
            $aux = array();
            foreach ($datos as $dat) {
                $ubicaciones_text = '';
                $ubicaciones = toba::consulta_php('co_actividades')->get_ubicaciones_actividad($dat['actividad']);
                foreach ($ubicaciones as $ubi) {
                    $ubicaciones_text .= $ubi['descripcion'].'-';
                }
                $dat['ubicacion_desc'] = substr($ubicaciones_text, 0, -1);
                
                $instituciones_text = '';
                $instituciones = toba::consulta_php('co_actividades')->get_instituciones_actividad($dat['actividad']);
                foreach ($instituciones as $ubi) {
                    $instituciones_text .= $ubi['descripcion'].'-';
                }
                $dat['institucion_desc'] = substr($instituciones_text, 0, -1);                
                
                $aux[] = $dat;
            }
            
            $cuadro->set_datos($aux);    
        //}
    }

    //-----------------------------------------------------------------------------------
    //---- filtro -----------------------------------------------------------------------
    //-----------------------------------------------------------------------------------
    function conf__filtro(extension_ei_filtro $filtro)
    {   
        if (isset($this->s__filtro)) {
            $filtro->set_datos($this->s__filtro);
        }   
        //$filtro->columna('fecha_desde')->set_condicion_fija('entre');
        //$filtro->columna('fecha_hasta')->set_condicion_fija('entre');
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

