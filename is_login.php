<?php
  session_start();
  include './database/connection.php';
  $username = $_POST['username'];
  $password = $_POST['password'];

  $user_data = mysqli_query($connection_db, "SELECT * from users where username = '$username' and password = '$password' LIMIT 1");
  if ($user_data->num_rows > 0) {
    $row_data = mysqli_fetch_assoc($user_data);
    $_SESSION['username'] = $row_data['username'];
    $_SESSION['password'] = $row_data['password'];
    $_SESSION['email'] = $row_data['email'];
    $_SESSION['id_user'] = $row_data['id'];
    setcookie("message", "delete", time() - 1);
    header("location: ./admin/dashboard.php");
  } else {
    setcookie("message", "Maaf, username atau password salah!", time() + 3600);
    header("location: login.php");
  }
?>