<?php
// Cargar el controlador principal
require_once 'controlador/indexController.php';

// Crear una instancia del controlador
$controller = new IndexController();

// Llamar al método que muestra la página principal
$controller->mostrarPaginaPrincipal();
?>
