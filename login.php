<?php
session_start();
if (isset($_SESSION['username'])) {
  header("location: admin/dashboard.php");
}
?>

<!DOCTYPE html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Welcome to Admin</title>

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="assets/res/css/styles.css">
  <link rel="stylesheet" type="text/css" href="assets/res/css/responsive.css">
  <script type="text/javascript" src="assets/res/js/index.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>

  <style>
    .container-wrap-login {
      display: flex;
      width: 100%;
      min-height: 100vh;
      flex-wrap: wrap;
      justify-content: center;
      align-items: center;
    }

    .container-login {
      background-color: #ffffff;
      box-shadow: 0 0 20px 5px #f8efef;
      border-radius: 15px;
      padding: 50px;
      display: grid;
      grid-template-columns: repeat(2, 1fr);
      column-gap: 5px;
    }

    .message-login {
      margin: 50% auto;
    }

    .btn-login {
      width: 100%;
      background-color: #4551C5;
    }

    .btn-login:hover {
      background-color: #4551C5;
    }

    .field-icon {
      float: right;
      margin-right: 10px;
      margin-left: -25px;
      margin-top: -30px;
      position: relative;
      z-index: 2;
    }
  </style>
</head>

<body>
  <div class="container container-wrap-login">
    <div class="container-login">
      <div class="">
        <img class="" src="assets/images/taputku.png" draggable="false">
      </div>
      <div class="message-login">
        <h2 class="mb-3">Login Admin Wisata Taput.</h2>
        <div style="color: red;margin-bottom: 15px;">
          <?php
          if (isset($_COOKIE["message"])) {
            echo $_COOKIE["message"];
          }
          ?>
        </div>
        <form method="POST" class="form-login" action="is_login.php">
          <div class="mb-3">
            <label for="input_email" class="form-label">Username</label>
            <input type="text" class="form-control" name="username" required>
          </div>
          <div class="mb-3">
            <label for="input_password" class="form-label">Password</label>
            <div>
              <input id="input_password" type="password" class="form-control" name="password" required>
              <span toggle="#password-field" class="fa fa-fw fa-eye-slash field-icon toggle-password"></span>
            </div>
          </div>
          <button type="submit" class="btn btn-primary btn-login">LOGIN</button>
        </form>
      </div>
    </div>
  </div>
</body>
<script>
  $(document).ready(function() {
    $(".toggle-password").click(function() {
      $(this).toggleClass("fa-eye-slash fa-eye");
      let input = $('#input_password');
      if (input.attr("type") == "password") {
        input.attr("type", "text");
      } else {
        input.attr("type", "password");
      }
    });
  });
</script>

</html>