<?php 

# Nombre Servidor
$sName = "localhost";
# Nombre Usuario
$uName = "root";
# password
$pass = "root";

# Nombre BD
$db_name = "chat";

#Creación de la Conexión de BD
try {
    $conn = new PDO("mysql:host=$sName;dbname=$db_name", 
                    $uName, $pass);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}catch(PDOException $e){
  echo "Connection failed : ". $e->getMessage();
}