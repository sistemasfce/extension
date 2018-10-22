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
			$datos_fila = $this->tabla('actividades_informes')->get_filas();
			$aux = array();
			foreach ($datos_fila as $datos) {
					// el 23 es para que corte la cadena despues del caracter 19, de /home/fce/informes_ext/
					$nombre = substr($datos['informe_path'],23);
					$dir_tmp = toba::proyecto()->get_www_temp();
					exec("cp '". $datos['informe_path']. "' '" .$dir_tmp['path']."/".$nombre."'");
					$temp_archivo = toba::proyecto()->get_www_temp($nombre);
					$tamanio = round(filesize($temp_archivo['path']) / 1024);
					$datos['informe_path_v'] = "<a href='{$temp_archivo['url']}'target='_blank'>Descargar archivo</a>";
					$datos['informe_archivo'] = $nombre. ' - Tam.: '.$tamanio. ' KB';   
				$aux[] = $datos;
			}
			$form_ml->set_datos($aux);
		}        
	}

	function evt__form_ml_informes__modificacion($datos)
	{
		$aux = array();
		foreach ($datos as $dat) {
			if (isset($dat['informe_archivo'])) {
				$nombre_archivo = $dat['informe_archivo']['name'];
				$destino = '/home/fce/informes_ext/'.$nombre_archivo;
				move_uploaded_file($dat['informe_archivo']['tmp_name'], $destino);   
				$dat['informe_path'] = $destino;   
			}
			$aux[] = $dat;
		}
		$this->tabla('actividades_informes')->procesar_filas($aux);        
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