<?php
class ci_comitentes extends extension_ci
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
            $datos = $this->tabla('st_comitentes')->get();            
            $form->set_datos($datos);
        }            
    }

    function evt__form__modificacion($datos)
    {
        $this->tabla('st_comitentes')->set($datos);
    }

    //-----------------------------------------------------------------------------------
    //---- cuadro -----------------------------------------------------------------------
    //-----------------------------------------------------------------------------------

    function conf__cuadro(extension_ei_cuadro $cuadro)
    {
        $where = $this->dep('filtro')->get_sql_where();
        $datos = toba::consulta_php('co_servicios_terceros')->get_comitentes($where);
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
            toba::notificacion()->agregar('No es posible eliminar el comitente.');
        }
    }

    function evt__guardar()
    {
        try {
            $this->relacion()->sincronizar();
            $this->relacion()->resetear();
        } catch (toba_error $e) {
            $this->informar_msg('Error al guardar comitente '. $e->get_mensaje());
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