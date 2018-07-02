<?php
class ci_personas extends extension_ci
{
    protected $s__filtro;
    
	//-------------------------------------------------------------------------
	function relacion()
	{
		return $this->controlador->dep('relacion_planta');
	}
	
	//-------------------------------------------------------------------------
	function tabla($id)
	{
		return $this->controlador->dep('relacion_planta')->tabla($id);    
	}        
        
	//-----------------------------------------------------------------------------------
	//---- form -------------------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function conf__form(extension_ei_formulario $form)
	{
            if ($this->relacion()->esta_cargada()) {
		$datos = $this->tabla('personas')->get();            
		$form->set_datos($datos);
            }            
	}

	function evt__form__modificacion($datos)
	{
            $this->tabla('personas')->set($datos);
	}

	//-----------------------------------------------------------------------------------
	//---- cuadro -----------------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function conf__cuadro(extension_ei_cuadro $cuadro)
	{
            $datos = toba::consulta_php('co_personas')->get_personas();
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
            $this->dep('relacion_planta')->resetear();
            $this->set_pantalla('seleccion');
	}

	function evt__eliminar()
	{
            try {
                $this->dep('relacion_planta')->eliminar_todo();
                $this->set_pantalla('seleccion');
            } catch (toba_error $e) {
                toba::notificacion()->agregar('No es posible eliminar la persona.');
            }
	}

	function evt__guardar()
	{
		try {
                    $this->relacion()->sincronizar();
                    $this->relacion()->resetear();
		} catch (toba_error $e) {
		    $this->informar_msg('Error al guardar persona '. $e->get_mensaje());
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

}
?>