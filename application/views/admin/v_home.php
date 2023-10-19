<!DOCTYPE html>
<html lang="en">

<head>


    <title>Welcome Toko Elektronik</title>

    <!-- Bootstrap Core CSS -->
    <link href="<?php echo base_url() . 'assets/css/bootstrap.min.css' ?>" rel="stylesheet">
    <link href="<?php echo base_url() . 'assets/css/style.css' ?>" rel="stylesheet">
    <link href="<?php echo base_url() . 'assets/css/font-awesome.css' ?>" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<?php echo base_url() . 'assets/css/4-col-portfolio.css' ?>" rel="stylesheet">

    <style type="text/css">
        .bg {
            width: 100%;
            height: 100%;
            position: fixed;
            z-index: -1;
            float: left;
            left: 0;
            margin-top: -20px;
        }
    </style>
</head>

<body>
    <img src="<?php echo base_url() . 'assets/img/bg3.jpg' ?>" alt="gambar" class="bg" />
    <!-- Navigation -->
    <?php
    $this->load->view('admin/menu');
    ?>

    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-12">

                <h1 align="center" class="page-header" style="color:#fff;">
                    <font face="Buxton Sketch">Sistem Informasi Persediaan Barang</font> <br />
                    <small>
                        <font face="Buxton Sketch" color="white">PT.Surya Citra Teknik Cemerlang</font>
                    </small>
                </h1>
            </div>
        </div>

        <p align="center"><img src="<?php echo base_url() . 'assets/img/pos.jpg' ?>" alt="gambar" /></p>

        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p style="text-align:center;">
                        <font color="white">Copyright &copy; <?php echo '2022'; ?> by Ferdiansyah </font>
                    </p>
                </div>
            </div>
            <!-- /.row -->
        </footer>


        <!-- /.container -->

        <!-- jQuery -->
        <script src="<?php echo base_url() . 'assets/js/jquery.js' ?>"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="<?php echo base_url() . 'assets/js/bootstrap.min.js' ?>"></script>

</body>

</html>