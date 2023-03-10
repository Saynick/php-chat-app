<?php  
session_start();

# check if username & password  submitted
if(isset($_POST['username']) &&
   isset($_POST['password'])){

   # Conexión con el archivo BD
   include '../db.conn.php';
   
   # 
   $password = $_POST['password'];
   $username = $_POST['username'];
   
   #simple form Validation
   if(empty($username)){
      # mensaje de error
      $em = "Username is required";

      # redirect to 'index.php' and passing error message
      header("Location: ../../index.php?error=$em");
   }else if(empty($password)){
      # error message
      $em = "Password is required";

      # redirect to 'index.php' and passing error message
      header("Location: ../../index.php?error=$em");
   }else {
      $sql  = "SELECT * FROM 
               users WHERE username=?";
      $stmt = $conn->prepare($sql);
      $stmt->execute([$username]);

      # if the username is exist
      if($stmt->rowCount() === 1){
        # fetching user data
        $user = $stmt->fetch();

        # if both username's are strictly equal
        if ($user['username'] === $username) {
           
           # verifying the encrypted password
          if (password_verify($password, $user['password'])) {

            # successfully logged in
            # creating the SESSION
            $_SESSION['username'] = $user['username'];
            $_SESSION['name'] = $user['name'];
            $_SESSION['user_id'] = $user['user_id'];

            # redirect to 'home.php'
            header("Location: ../../home.php");

          }else {
            # error message
            $em = "Incorect Username or password";

            # redirect to 'index.php' and passing error message
            header("Location: ../../index.php?error=$em");
          }
        }else {
          # error message
          $em = "Incorect Username or password";

          # redirect to 'index.php' and passing error message
          header("Location: ../../index.php?error=$em");
        }
      }
   }
}else {
  header("Location: ../../index.php");
  exit;
}