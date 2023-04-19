<?php

include_once("modelo/pelicula.php");
include_once("modelo/horario.php");
include_once("modelo/paginacion.php");

//creacion de todas las peliculas 
    $peliculas = new Pelicula("", "", "", "", "", "", "", "", "");
    $arraypeliculas = $peliculas->obtieneTodos();
//creacion de horarios
    $horarios = new Horario("", "", "", "", "", "");
//creacion de paginacion
    $pagina = new Paginacion(4, "pelicula");
    $arraypeliculaspaginado = $pagina->mostrar();
    $num = $pagina->numeritos();
    
//si interactua con alguna pelicula o el dia
if(isset($_POST["pelicula"]) || isset($_POST["dia"])){
    
    require_once("controlador/controlador_peliculas.php");
    require_once("vista/pelicula.php");

//si interactua con la hora
}elseif(isset($_POST["hora"])){

    require_once("controlador/controlador_butacas.php");
    require_once("vista/sala.php");

}else{
    require_once("vista/principal.php");
}
?>
