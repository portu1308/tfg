<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Open+Sans:wght@400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="vista/css/sala_admin.css">
    <script src="vista/js/sala_admin.js"></script>
</head>

<body>
    <?php
    include 'vista/menu.php';
    ?>
    <div id="imagengrande">
        Crear Sala
    </div>

    <form method='post' action=''>
        <input type="hidden" name="id_sala" value="<?= $id_sala ?? 0 ?>" />
        <div class="filas-columnas">
            <label for='longcolumna'>Maxímo columnas:
                <input type='number' min='1' name='longcolumna' value='<?= $max_columna ?? "" ?>'>
            </label>
            <label for='longfila'>Maxímo filas:
                <input type='number' min='1' name='longfila' value='<?= $max_fila ?? "" ?>'>
            </label>
            <label for='descripcion'>Descripcion:
                <input type='tex' name='descripcion' value='<?= $descripcion ?? "" ?>'>
            </label>
            <label for='habilitada'>Habilitada:
                <select name="habilitada">
                    <option value="0"></option>
                    <option value="1" <?php if ($habilitada == 1) echo "selected"; ?>>No habilitada</option>
                </select>
            </label>
            <label for='luxury'>Luxury:
                <select name="luxury">
                    <option value="0"></option>
                    <option value="1" <?php if ($luxury == 1) echo "selected"; ?>>Luxury</option>
                </select>
            </label>
            <input type='submit' class="boton-modificar pen" value='previsualizar' name='previsualizar'><br><br>
        </div>

        <div class="butacas-contenedor">
            <div class="butacascontenido">
                <table id='butacas'>
                    <?php
                    for ($filas = $max_fila; $filas >= 0; $filas--) {
                    ?>
                        <tr>
                            <?php
                            /* MENU SELECCIONAR LAS FILAS */
                            //el if es para dar color
                            if (!array_key_exists($filas, $array_filas)) {
                            ?>
                                <td><input type='checkbox' name='filas[<?= $filas ?>]' class='checkbox'><span><?= $filas ?? "" ?></span></td>
                            <?php
                            } else {
                            ?>
                                <td><input type='checkbox' name='filas[<?= $filas ?>]' class='checkbox'><span class='marcado'><?= $filas ?? "" ?></span></td>
                                <?php
                            }
                            /* */

                            for ($columnas = 1; $columnas <= $max_columna; $columnas++) {
                                if ($filas == 0) {
                                    /* MENU SELECCIONAR LAS COLUMNAS */
                                    //el if es para dar color
                                    if (!array_key_exists($columnas, $array_columnas)) {
                                ?>
                                        <td><input type='checkbox' name='columnas[<?= $columnas ?>]' class='checkbox'><span><?= $columnas ?? "" ?></span></td>
                                    <?php
                                    } else {
                                    ?>
                                        <td><input type='checkbox' name='columnas[<?= $columnas ?>]' class='checkbox'><span class='marcado'><?= $columnas ?? "" ?></span></td>
                                    <?php
                                    }
                                } elseif (array_key_exists($filas, $array_filas)) {
                                    if (!array_key_exists($filas . ";" . $columnas, $array_butacas)) {
                                    ?>
                                        <td><input type="checkbox" name="butacas[<?= $filas ?>;<?= $columnas ?>]" class="checkbox"><span><?= $columnas ?? "" ?></span></td>
                                    <?php
                                    } else {
                                        /*  IMPRIMIR BUTACAS */
                                    ?>
                                        <td>
                                            <span style="position: relative; display: block;">
                                                <img src="vista/fotos/butacas/butaca_verde.png" class="butaca">
                                                <span class="numero"><?= $columnas ?? "" ?></span>
                                            </span>
                                        </td>
                                    <?php
                                    }
                                } else {
                                    if (!array_key_exists($columnas, $array_columnas) || array_key_exists($filas . ";" . $columnas, $array_butacas)) {
                                        /*  IMPRIMIR BUTACAS */
                                    ?>
                                        <td>
                                            <span style="position: relative; display: block;">
                                                <img src="vista/fotos/butacas/butaca_verde.png" class="butaca">
                                                <span class="numero"><?= $columnas ?? "" ?></span>
                                            </span>
                                        </td>
                                    <?php
                                    } else {
                                    ?>
                                        <td><input type="checkbox" name="butacas[<?= $filas ?>;<?= $columnas ?>]" class="checkbox"><span><?= $columnas ?? "" ?></span></td>
                            <?php
                                    }
                                }
                            }
                            ?>
                        </tr>
                    <?php
                    }
                    ?>
                </table>
            </div>
        </div>
        <div class="filas-columnas">
            <input type='submit' class="boton-modificar pen" value='Modificar' name='editar_sala_admin'>
            <input type='submit' class="boton-modificar confirm" value='Correcto' name='enviar_sala'>
        </div>
    </form>

</body>

</html>