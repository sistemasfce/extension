<?php
class ci_actividades extends extension_ci
{
    	protected $s__filtro;
        
	//-------------------------------------------------------------------------
	function relacion()
	{
            return $this->dep('relacion');
	}
	
	//-------------------------------------------------------------------------
	function tabla($id)
	{
            return $this->dep('relacion')->tabla($id);    
	}         
	//-----------------------------------------------------------------------------------
	//---- form -------------------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function conf__form(extension_ei_formulario $form)
	{
            if ($this->relacion()->esta_cargada()) {
		$datos = $this->tabla('actividades')->get();            
		$form->set_datos($datos);
            }            
	}

	function evt__form__modificacion($datos)
	{
            $this->tabla('actividades')->set($datos);
	}

	//-----------------------------------------------------------------------------------
	//---- cuadro -----------------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function conf__cuadro(extension_ei_cuadro $cuadro)
	{
            $datos = toba::consulta_php('co_actividades')->get_actividades();
            $cuadro->set_datos($datos);            
	}

	function evt__cuadro__seleccion($seleccion)
	{
            $this->relacion()->cargar($seleccion);
            $this->set_pantalla('edicion');        
	}

	//-----------------------------------------------------------------------------------
	//---- eventos ----------------------------------------------------------------------
	//-----------------------------------------------------------------------------------
	function evt__agregar()
	{
            $this->set_pantalla('edicion');
	}

	function evt__cancelar()
	{
            $this->dep('relacion')->resetear();
            $this->set_pantalla('seleccion');
	}

	function evt__eliminar()
	{
            try {
                $this->dep('relacion')->eliminar_todo();
                $this->set_pantalla('seleccion');
            } catch (toba_error $e) {
                toba::notificacion()->agregar('No es posible eliminar la actividad.');
            }
	}

	function evt__guardar()
	{
		try {
                    $this->relacion()->sincronizar();
                    $this->relacion()->resetear();
		} catch (toba_error $e) {
		    $this->informar_msg('Error al guardar actividad '. $e->get_mensaje());
		    return;
		}
		$this->set_pantalla('seleccion');
	} 
        
	//-----------------------------------------------------------------------------------
	//---- filtro -----------------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function conf__filtro(extension_ei_filtro $filtro)
	{   
		if (isset($this->s__filtro)) {
			$filtro->set_datos($this->s__filtro);
		}   
	}  
	
	function evt__filtro__filtrar($datos)
	{   
		$this->s__filtro = $datos;
	}   

	function evt__filtro__cancelar()
	{   
		unset($this->s__filtro);
	}    
        
	//-----------------------------------------------------------------------------------
	//---- form_ml ----------------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function conf__form_ml_ubicaciones(extension_ei_formulario_ml $form_ml)
	{
            if ($this->relacion()->esta_cargada()) {
		$datos = $this->tabla('actividades_ubicaciones')->get_filas();
                $form_ml->set_datos($datos);
            }
	}

	function evt__form_ml_ubicaciones__modificacion($datos)
	{
            $this->tabla('actividades_ubicaciones')->procesar_filas($datos);
	}

	function conf__form_ml_financiamientos(extension_ei_formulario_ml $form_ml)
	{
            if ($this->relacion()->esta_cargada()) {
		$datos = $this->tabla('actividades_financiamientos')->get_filas();
                $form_ml->set_datos($datos);
            }
	}

	function evt__form_ml_financiamientos__modificacion($datos)
	{
            $this->tabla('actividades_financiamientos')->procesar_filas($datos);
	} 

	function conf__form_ml_instituciones(extension_ei_formulario_ml $form_ml)
	{
            if ($this->relacion()->esta_cargada()) {
		$datos = $this->tabla('actividades_instituciones')->get_filas();
                $form_ml->set_datos($datos);
            }
	}

	function evt__form_ml_instituciones__modificacion($datos)
	{
            $this->tabla('actividades_instituciones')->procesar_filas($datos);
	} 
        
	function conf__form_ml_informes(extension_ei_formulario_ml $form_ml)
	{
            if ($this->relacion()->esta_cargada()) {
		$datos = $this->tabla('actividades_informes')->get_filas();
                $form_ml->set_datos($datos);
            }
	}

	function evt__form_ml_informes__modificacion($datos)
	{
            $this->tabla('actividades_informes')->procesar_filas($datos);
	}    
        
	function conf__form_ml_personas(extension_ei_formulario_ml $form_ml)
	{
            if ($this->relacion()->esta_cargada()) {
		$datos = $this->tabla('personas_actividades')->get_filas();
                $form_ml->set_datos($datos);
            }
	}

	function evt__form_ml_personas__modificacion($datos)
	{
            $this->tabla('personas_actividades')->procesar_filas($datos);
	}          
}
?>