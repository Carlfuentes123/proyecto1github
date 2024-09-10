<?php
// Conexión a la base de datos MySQL
$host = "localhost";
$dbname = "formulario_db";
$username = "root";
$password = "";

$conn = new mysqli($host, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nombre = $conn->real_escape_string($_POST['nombre']);
    $apellido = $conn->real_escape_string($_POST['apellido']);
    $correo = $conn->real_escape_string($_POST['correo']);
    $contraseña = password_hash($_POST['contraseña'], PASSWORD_DEFAULT); // Encriptación de la contraseña
    $pais = $conn->real_escape_string($_POST['pais']);
    $genero = $conn->real_escape_string($_POST['genero']);
    $terminos = isset($_POST['terminos']) ? 1 : 0;

    // Insertar los datos en la base de datos
    $sql = "INSERT INTO usuarios (nombre, apellido, correo, contraseña, pais, genero, terminos) 
            VALUES ('$nombre', '$apellido', '$correo', '$contraseña', '$pais', '$genero', '$terminos')";

    if ($conn->query($sql) === TRUE) {
        echo "Registro exitoso";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario Complejo</title>
</head>
<body>
    <h2>Registro de Usuario</h2>
    <form action="" method="POST">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required><br><br>

        <label for="apellido">Apellido:</label>
        <input type="text" id="apellido" name="apellido" required><br><br>

        <label for="correo">Correo Electrónico:</label>
        <input type="email" id="correo" name="correo" required><br><br>

        <label for="contraseña">Contraseña:</label>
        <input type="password" id="contraseña" name="contraseña" required><br><br>

        <label for="pais">País:</label>
        <select id="pais" name="pais" required>
            <option value="Guatemala">Guatemala</option>
            <option value="México">México</option>
            <option value="El Salvador">El Salvador</option>
            <!-- Agrega más países aquí -->
        </select><br><br>

        <label>Género:</label>
        <input type="radio" id="masculino" name="genero" value="Masculino" required>
        <label for="masculino">Masculino</label>
        <input type="radio" id="femenino" name="genero" value="Femenino" required>
        <label for="femenino">Femenino</label>
        <input type="radio" id="otro" name="genero" value="Otro" required>
        <label for="otro">Otro</label><br><br>

        <label for="terminos">
            <input type="checkbox" id="terminos" name="terminos" required> Acepto los términos y condiciones
        </label><br><br>

        <input type="submit" value="Registrarse">
    </form>
</body>
</html>