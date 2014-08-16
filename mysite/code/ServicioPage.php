<?php
class Servicio extends DataObject {
   private static $db = array('Name' => 'Varchar', 'ServicioCode' => 'Varchar', 'Descripcion' => 'Text');
   private static $has_one = array('Categoria' => 'Categoria');
}
class Categoria extends DataObject {
   private static $db = array('Title' => 'Text');
   private static $has_many = array('Servicios' => 'Servicio');
} 