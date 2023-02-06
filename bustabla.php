<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <link rel="shortcut icon" href="img/gota-de-agua.png" />
    <link rel="stylesheet" href="estilos.css">
    <title>Encuesta Aysam Soporte</title>
</head>

<body>

    <div class="burbujas">
        <div class="burbuja"></div>
        <div class="burbuja"></div>
        <div class="burbuja"></div>
        <div class="burbuja"></div>
        <div class="burbuja"></div>
        <div class="burbuja"></div>
        <div class="burbuja"></div>
        <div class="burbuja"></div>
        <div class="burbuja"></div>
        <div class="burbuja"></div>
    </div>
    <div class="container" id="general">
        <div id="Imgleft">
            <div id="superior">
                <img class=" animate__animated animate__backInRight	" src="img/GMHpcNb4_400x400.jpg" id="img3">
            </div>
            <div class="row g-4">

                <div class="col-auto">
                    <label for="num_registros" class="col-form-label">Mostrar: </label>
                </div>

                <div class="col-auto">
                    <select name="num_registros" id="num_registros" class="form-select">
                        <option value="10">10</option>
                        <option value="25">25</option>
                        <option value="50">50</option>
                        <option value="100">100</option>
                    </select>
                </div>

                <div class="col-auto">
                    <label for="num_registros" class="col-form-label">registros </label>
                </div>

                <div class="col-5"></div>

                <div class="col-auto">
                    <label for="campo" class="col-form-label">Buscar: </label>
                </div>
                <div class="col-auto">
                    <input type="text" name="campo" id="campo" class="form-control">
                </div>
            </div>

            <div class="row py-4">
                <div class="col">
                    <table class="table table-sm table-bordered">
                        <thead>
                            <th class="table-info">ID</th>
                            <th class="table-info">Nombre</th>
                            <th class="table-info">Apellido</th>
                            <th class="table-info">Correo electrónico</th>
                            <th class="table-info">Departamento / Area</th>
                            <th class="table-info">Experiencia</th>
                            <th class="table-info">Comentarios</th>
                            <th class="table-info">Fecha</th>
                        </thead>

                        <!-- El id del cuerpo de la tabla. -->
                        <tbody class="table-group-divider" id="content">

                        </tbody>
                    </table>
                </div>
            </div>

            <div class="row">
                <div class="col-6">
                    <label id="lbl-total"></label>
                </div>

                <div class="col-6" id="nav-paginacion"></div>
            </div>
        </div>


        <div id="inferior">
            <img src="img/—Pngtree—water drop decoration painting cartoon_5455417.png"
                class=" animate__animated animate__heartBeat	" id="imagen2" s>
        </div>
    </div>


    <script>
    /* Escuchar un evento keyup en el campo de entrada y luego llamar a la función getData. */
    document.getElementById("campo").addEventListener("keyup", function() {
        getData(1)
    }, false)
    document.getElementById("num_registros").addEventListener("change", function() {
        getData(paginaActual)
    }, false)


    /* Peticion AJAX */
    function getData(pagina) {
        let input = document.getElementById("campo").value
        let num_registros = document.getElementById("num_registros").value
        let content = document.getElementById("content")

        if (pagina != null) {
            paginaActual = pagina
        }

        let url = "load.php"
        let formaData = new FormData()
        formaData.append('campo', input)
        formaData.append('registros', num_registros)
        formaData.append('pagina', paginaActual)

        fetch(url, {
                method: "POST",
                body: formaData
            }).then(response => response.json())
            .then(data => {
                content.innerHTML = data.data
                document.getElementById("lbl-total").innerHTML = 'Mostrando ' + data.totalFiltro +
                    ' de ' + data.totalRegistros + ' registros'
                document.getElementById("nav-paginacion").innerHTML = data.paginacion
            }).catch(err => console.log(err))
    }
    </script>

</body>

</html>
</body>

</html>