<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <script src="vista/js/script.js"></script>
    <style>
        .boton-modificar {
            display: inline-block;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            color: white;
            font-size: 16px;
            font-weight: bold;
            text-align: center;
            background-repeat: no-repeat;
            background-position: left center;
            background-size: 20px 20px;
            padding-left: 30px;
            cursor: pointer;
        }

        .carrito {
            background-image: url('vista/fotos/carrito.png');
            background-color: rgb(32, 155, 32);
        }

        .quitar {
            display: inline-block;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            font-weight: bold;
            text-align: center;
            background-size: 20px 20px;
            cursor: pointer;
            background-color: red;
            color: black;
        }

        .filas-columnas {
            background-color: black;
            position: relative;
            display: flex;
            align-items: center;
            justify-content: space-around;
            flex-wrap: wrap;
            gap: 10px 10px;
            padding: 10px;
        }
    </style>
    <script>
        window.onload = function() {
            const checkboxes = document.querySelectorAll('.checkbox-palomitas');

            // Agregar evento de escucha a cada checkbox
            checkboxes.forEach(function(checkbox) {
                checkbox.addEventListener('change', function() {
                    if (this.checked) {
                        // Encontrar el formulario padre más cercano
                        const form = this.closest('form');
                        if (form) {
                            form.submit();
                        }
                    }
                });
            });
        }
    </script>
</head>

<body>
    <?php
    //include "vista/menu.php";
    ?>
    <section class="h-100" style="background-color: black;">
        <div class="container h-100 py-5">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-10">

                    <form action="" action="" method="post">
                        <div class="card rounded-3 mb-4">
                            <div class="card-body p-4">
                                <div class="row d-flex justify-content-between align-items-center">
                                    <div class="col-md-3 col-lg-3 col-xl-3">
                                        <p class="lead fw-normal mb-2">Sala</p>
                                        <p><span class="text-muted">Nº: </span>1 <br><span class="text-muted">Luxury: </span>Si</p>
                                    </div>
                                    <div class="col-md-3 col-lg-3 col-xl-3">
                                        <p class="lead fw-normal mb-2">Fecha</p>
                                        <p><span class="text-muted">Día: </span>22-05-2023 <br><span class="text-muted">Hora: </span>16:00:00</p>
                                    </div>
                                    <div class="col-md-3 col-lg-3 col-xl-3">
                                        <p class="lead fw-normal mb-2">Butaca</p>
                                        <p><span class="text-muted">Fila: </span>1 <br><span class="text-muted">Columna: </span>10</p>
                                    </div>
                                    <div class="col-md-2 col-lg-2 col-xl-2 offset-lg-1">
                                        <h5 class="mb-0">15€</h5>
                                    </div>
                                    <div class="col-md-2 col-lg-2 col-xl-2 flex-md-fill" style="display: flex; justify-content: space-between;">
                                        <input type='submit' class="quitar" value='Quitar' name=''>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </form>

                    <form action="" action="" method="post">
                        <div class="card rounded-3 mb-4">
                            <div class="card-body p-4">
                                <div class="row d-flex justify-content-between align-items-center">
                                    <div class="col-md-3 col-lg-3 col-xl-3">
                                        <p class="lead fw-normal mb-2">Sala</p>
                                        <p><span class="text-muted">Nº: </span>1 <br><span class="text-muted">Luxury: </span>Si</p>
                                    </div>
                                    <div class="col-md-3 col-lg-3 col-xl-3">
                                        <p class="lead fw-normal mb-2">Fecha</p>
                                        <p><span class="text-muted">Día: </span>22-05-2023 <br><span class="text-muted">Hora: </span>16:00:00</p>
                                    </div>
                                    <div class="col-md-3 col-lg-3 col-xl-3">
                                        <p class="lead fw-normal mb-2">Butaca</p>
                                        <p><span class="text-muted">Fila: </span>1 <br><span class="text-muted">Columna: </span>10</p>
                                    </div>
                                    <div class="col-md-2 col-lg-2 col-xl-2 offset-lg-1">
                                        <h5 class="mb-0">15€</h5>
                                    </div>
                                    <div class="col-md-2 col-lg-2 col-xl-2 flex-md-fill" style="display: flex; justify-content: space-between;">
                                        <input type='submit' class="quitar" value='Quitar' name=''>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </form>

                    <form action="" action="" method="post">
                        <div class="card rounded-3 mb-4">
                            <div class="card-body p-4">
                                <div class="row d-flex justify-content-between align-items-center">
                                    <div class="col-md-3 col-lg-3 col-xl-3">
                                        <p class="lead fw-normal mb-2">Sala</p>
                                        <p><span class="text-muted">Nº: </span>1 <br><span class="text-muted">Luxury: </span>Si</p>
                                    </div>
                                    <div class="col-md-3 col-lg-3 col-xl-3">
                                        <p class="lead fw-normal mb-2">Fecha</p>
                                        <p><span class="text-muted">Día: </span>22-05-2023 <br><span class="text-muted">Hora: </span>16:00:00</p>
                                    </div>
                                    <div class="col-md-3 col-lg-3 col-xl-3">
                                        <p class="lead fw-normal mb-2">Butaca</p>
                                        <p><span class="text-muted">Fila: </span>1 <br><span class="text-muted">Columna: </span>10</p>
                                    </div>
                                    <div class="col-md-2 col-lg-2 col-xl-2 offset-lg-1">
                                        <h5 class="mb-0">15€</h5>
                                    </div>
                                    <div class="col-md-2 col-lg-2 col-xl-2 flex-md-fill" style="display: flex; justify-content: space-between;">
                                        <input type='submit' class="quitar" value='Quitar' name=''>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </form>

                    <form action="" method="post">
                        <div class="filas-columnas">
                            <input type='submit' class="boton-modificar carrito" value='Reservar' name='comprar_reservas'>
                        </div>
                    </form>

                </div>
            </div>
        </div>

    </section>

</body>

</html>