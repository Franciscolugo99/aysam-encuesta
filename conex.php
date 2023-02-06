<?php
//Conectar con el servidor
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "aysamconfor";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());

}

//recuperar las variables;
//magia
$ip = getenv('REMOTE_ADDR');
$navegador = getenv('HTTP_USER_AGENT');
$nombre = $_POST ['nombre'];
$apellido = $_POST ['apellido'];
$correo = $_POST ['email'];
$departamento = $_POST ['departamento'];
$conformidad = $_POST ['conformidad'];
$comentario = $_POST ['commentario'];


$sql = "INSERT INTO user (nombre, apellido, correo, departamento, conformidad, comentario, ip_user)
VALUES ('$nombre','$apellido', '$correo', '$departamento','$conformidad','$comentario','$ip')";

if (mysqli_query($conn, $sql)) {
  //redirecciono a la pagina de exit.html
  echo "<script type='text/javascript'>
  window.location.href = 'exit.html';
</script>";
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);