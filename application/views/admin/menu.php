 <nav class="navbar navbar-inverse navbar-fixed-top" style="background-color:  #87CEFA; " role="navigation">
        <div class="container ">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!--<a class="navbar-brand" href="<?php echo base_url().'welcome'?>"><font face="Buxton Sketch" color="White" size="6"> <u> TOKO ELEKTRONIK</u></font></a>-->
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1 ">
                <ul class="nav navbar-nav">
                   <?php $h=$this->session->userdata('akses'); ?>
                    <?php $u=$this->session->userdata('user'); ?>
                    <?php if($h=='1'){ ?> 
                     <!--dropdown-->
                    
                     <li>
                        <a href="<?php echo base_url().'welcome'?>"><span class="fa fa-home"></span> Home</a>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="fa fa-shopping-cart" aria-hidden="true"></span> Transaksi</a>
                        <ul class="dropdown-menu">
                            <li><a href="<?php echo base_url().'admin/penjualan'?>"> Penjualan (Barang Keluar)</a></li>
                           <li><a href="<?php echo base_url().'admin/pembelian'?>"> Pembelian (Barang masuk)</a></li> 
                        </ul>
                    </li>
                    <!--ending dropdown-->
                    <!--dropdown-->
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="fa fa-cubes" aria-hidden="true"></span> Barang</a>
                        <ul class="dropdown-menu">
                            <li><a href="<?php echo base_url().'admin/barang'?>"> Data Barang</a></li> 
                            <li><a href="<?php echo base_url().'admin/kategori'?>"> Kategori Barang</a></li> 
                        </ul>
                    </li>
                    <!--ending dropdown-->
                    <li>
                        <a href="<?php echo base_url().'admin/retur'?>"><span class="fa fa-refresh"></span> Retur</a>
                    </li>
                    <li>
                        <a href="<?php echo base_url().'admin/suplier'?>"><span class="fa fa-truck"></span> Suplier</a>
                    </li>

                    <li>
                        <a href="<?php echo base_url().'admin/laporan'?>"><span class="fa fa-file"></span> Laporan</a>
                    </li>
                    <li>
                        <a href="<?php echo base_url().'admin/pengguna'?>"><span class="fa fa-users"></span> Pengguna</a>
                    </li>
                    <?php }?>


                    <?php if($h=='2'){ ?> 
                      <!--dropdown-->
                      <li>
                        <a href="<?php echo base_url().'welcome'?>"><span class="fa fa-home"></span> Home</a>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="fa fa-shopping-cart" aria-hidden="true"></span> Transaksi</a>
                        <ul class="dropdown-menu">
                            <li><a href="<?php echo base_url().'admin/penjualan'?>"> Penjualan (Barang Keluar)</a></li> 
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="fa fa-cubes" aria-hidden="true"></span> Barang</a>
                        <ul class="dropdown-menu">
                            <li><a href="<?php echo base_url().'admin/barang'?>"> Data Barang</a></li> 
                        </ul>
                    </li>


                 
                    <!--ending dropdown-->
                    
                    
                    <?php }?>
                     <li>
                        <a href="<?php echo base_url().'administrator/logout'?>"><span class="fa fa-sign-out"></span> Logout</a>
                    </li>
                </ul>


            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>