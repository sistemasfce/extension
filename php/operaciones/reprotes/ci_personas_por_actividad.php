<?php

class ci_personas_por_actividad extends extension_ci
{
    //-----------------------------------------------------------------------------------
    //---- cuadro -----------------------------------------------------------------------
    //-----------------------------------------------------------------------------------

    function conf__cuadro(extension_ei_cuadro $cuadro)
    {
        $datos = toba::consulta_php('co_actividades')->get_personas_por_actividad();
        $resultados = array();
        foreach ($datos as $dat) {
            $aux = $dat;
            $persona = toba::consulta_php('co_personas')->get_nombre_persona($dat['persona']);
            $aux['persona_nombre'] = $persona['nombre_completo'];
            $resultados[] = $aux;
        }
        $cuadro->set_datos($resultados);    
    }
        
       
}