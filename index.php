<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>WEBSITE OBJEK WISATA TAPANULI UTARA</title>
  <link rel="stylesheet" type="text/css" href="assets/res/css/styles.css">
  <link rel="stylesheet" type="text/css" href="assets/res/css/responsive.css">
  <script type="text/javascript" src="assets/res/js/index.js"></script>

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous" />

  <!-- Google Font -->
  <link rel="preconnect" href="https://fonts.gstatic.com" />
  <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet" />
  <link rel="shortcut icon" href="assets/images/taputku.png">


  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>

</head>

<body class="1">
  <header class="header">
    <div class="header-brand">
      <h1 class="header-title">
        <marquee direction="left" scrollamount="4" a href="index.php?page=home">W i s a t a   T a p u t </a> </marquee>
      </h1>
    </div>
    <a id="menu" class="header-menu">
      <button class="hamburger-menu"><i class="fa fa-bars"></i></button>
      <button class="close-menu"><i class="fa fa-times"></i></button>
    </a>
    <nav id="drawer" class="nav">
      <ul class="nav-list">
        <li class="nav-item"><a href="index.php?page=home">Home</a><?php ?></li>
        <li class="nav-item"><a href="index.php?page=events">Events</a></li>
        <li class="nav-item"><a href="index.php?page=akomodasi">Akomodasi</a></li>
        <li class="nav-item"><a href="index.php?page=product">Produk</a></li>
        <li class="nav-item"><a href="index.php?page=about-us">About Us</a></li>
        <li class="nav-item"><a href="login.php">Admin</a></li>
      </ul>
    </nav>
  </header>
  <?php
  // if (isset($_GET['page']) == 'home') {
  //   include 'guest/hero.php';
  // }
  // masih mencari yaa
  // include 'guest/hero.php';
  ?>
  <div id="hero-content">

  </div>

  <main id="main-content">
    <?php
    if (isset($_GET['page'])) {
      switch ($_GET['page']) {
        case 'home':
          include 'guest/content_index.php';
          break;
        case 'events':
          include 'guest/content_events.php';
          break;
        case 'akomodasi':
          include 'guest/content_akomodasi.php';
          break;
        case 'product':
          include 'guest/content_product.php';
          break;
        case 'about-us':
          include 'guest/content_about_us.php';
          break;
        default:
          include 'guest/content_index.php';
      }
    } else {
      include 'guest/content_index.php';
    }
    ?>
  </main>
  <footer>
    <div class="footer-content">
      <h1 class="footer-brand">
        <a href="/">Wisata Tapanuli Utara</a>
      </h1>
      <p class="footer-copyright">
        <b>Arsy Silaban &copy;
        <script>
          document.write(new Date().getFullYear());
        </script>
        - Wisata Tapanuli Utara</b>
      </p>
    </div>
  </footer>
</body>

</script>

<script>
  let search = window.location.search;
  let heroContentElement = document.querySelector('#hero-content');
  heroContentElement.innerHTML = "";
  if (search == '' || search == '?page=home') {
    heroContentElement.innerHTML += `
    <div class="hero">
      <div class="hero-message" style="padding: 30px;">
        <h1 style="font-weight: bold;">Selamat Datang di<br>Tapanuli Utara</h1>
        <p class="" style="margin: 2em 0; font-size: 25px; font-weight: 500;">
          Kabupaten Tapanuli Utara adalah sebuah kabupaten di provinsi Sumatra Utara, Indonesia yang ibukotanya
          berada di kecamatan Tarutung.
        </p>
      </div>
      <img src="assets/images/hero.jpeg" alt="image-hero">
    </div>
    `;
  }
</script>

</html>