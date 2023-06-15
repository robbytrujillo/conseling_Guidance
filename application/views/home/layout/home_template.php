<!DOCTYPE html>
<html lang="en">

<head>
  <title>IHBSCG</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


  <link href="https://fonts.googleapis.com/css?family=Muli:300,400,700,900" rel="stylesheet">
  <link rel="stylesheet" href="<?= base_url('assets/oneschool/') ?>fonts/icomoon/style.css">

  <link rel="stylesheet" href="<?= base_url('assets/oneschool/'); ?>css/bootstrap.min.css">
  <link rel="stylesheet" href="<?= base_url('assets/oneschool/'); ?>css/jquery-ui.css">
  <link rel="stylesheet" href="<?= base_url('assets/oneschool/'); ?>css/owl.carousel.min.css">
  <link rel="stylesheet" href="<?= base_url('assets/oneschool/'); ?>css/owl.theme.default.min.css">
  <link rel="stylesheet" href="<?= base_url('assets/oneschool/'); ?>css/owl.theme.default.min.css">

  <link rel="stylesheet" href="<?= base_url('assets/oneschool/'); ?>css/jquery.fancybox.min.css">

  <link rel="stylesheet" href="<?= base_url('assets/oneschool/'); ?>css/bootstrap-datepicker.css">

  <link rel="stylesheet" href="<?= base_url('assets/oneschool/'); ?>fonts/flaticon/font/flaticon.css">

  <link rel="stylesheet" href="<?= base_url('assets/oneschool/'); ?>css/aos.css">

  <link rel="stylesheet" href="<?= base_url('assets/oneschool/'); ?>css/style.css">
  <!-- Toastr -->
  <link rel="stylesheet" href="<?= base_url('assets/AdminLTE-3.0.5/'); ?>plugins/toastr/toastr.min.css">
  <link rel="icon" href="../assets/AdminLTE-3.0.5/dist/img/ihbs-logo.png">

  <!-- script typewritter -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/typed.js/2.0.12/typed.min.js"></script>

</head>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

  <!-- Footer-->
  <?php include "home_header.php"; ?>

  <!-- Contents-->
  <?= $contents; ?>

  <!-- Footer-->
  <?php include "home_footer.php"; ?>


  </div> <!-- .site-wrap -->


  <script src="<?= base_url('assets/oneschool/'); ?>js/jquery-3.3.1.min.js"></script>
  <script src="<?= base_url('assets/oneschool/'); ?>js/jquery-migrate-3.0.1.min.js"></script>
  <script src="<?= base_url('assets/oneschool/'); ?>js/jquery-ui.js"></script>
  <script src="<?= base_url('assets/oneschool/'); ?>js/popper.min.js"></script>
  <script src="<?= base_url('assets/oneschool/'); ?>js/bootstrap.min.js"></script>
  <script src="<?= base_url('assets/oneschool/'); ?>js/owl.carousel.min.js"></script>
  <script src="<?= base_url('assets/oneschool/'); ?>js/jquery.stellar.min.js"></script>
  <script src="<?= base_url('assets/oneschool/'); ?>js/jquery.countdown.min.js"></script>
  <script src="<?= base_url('assets/oneschool/'); ?>js/bootstrap-datepicker.min.js"></script>
  <script src="<?= base_url('assets/oneschool/'); ?>js/jquery.easing.1.3.js"></script>
  <script src="<?= base_url('assets/oneschool/'); ?>js/aos.js"></script>
  <script src="<?= base_url('assets/oneschool/'); ?>js/jquery.fancybox.min.js"></script>
  <script src="<?= base_url('assets/oneschool/'); ?>js/jquery.sticky.js"></script>

  <script src="<?= base_url('assets/oneschool/'); ?>js/main.js"></script>

  

  <!-- Toastr -->
  <script src="<?= base_url('assets/AdminLTE-3.0.5/'); ?>plugins/toastr/toastr.min.js"></script>
  
  <!-- Process -->
  <script>
    $(document).ready(function() {
      const typed = new Typed('#typed-text', {
        strings: ['Adab..', 'Morals..', 'Discipline..'],
        typeSpeed: 100,
        backSpeed: 50,
        loop: true
      });
    });
  </script>

  <!-- Me Script-->
  <?php include "home_js.php"; ?>

  <!-- <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> -->




</body>

</html>