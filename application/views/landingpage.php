<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Pondok Pesantren Mahasiswa Nurul Hikmah - Landing Page</title>
    <!-- Bootstrap core CSS -->
    <link href="<?php echo base_url(); ?>/landingpage/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bx-Slider StyleSheet CSS -->
    <link href="<?php echo base_url(); ?>/landingpage/css/jquery.bxslider.css" rel="stylesheet">
    <!-- Font Awesome StyleSheet CSS -->
    <link href="<?php echo base_url(); ?>/landingpage/css/font-awesome.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>/landingpage/css/svg-style.css" rel="stylesheet">
    <!-- Pretty Photo CSS -->
    <link href="<?php echo base_url(); ?>/landingpage/css/prettyPhoto.css" rel="stylesheet">
    <!-- Widget CSS -->
    <link href="<?php echo base_url(); ?>/landingpage/css/widget.css" rel="stylesheet">
    <!-- DL Menu CSS -->
    <link href="<?php echo base_url(); ?>/landingpage/js/dl-menu/component.css" rel="stylesheet">
    <!-- Typography CSS -->
    <link href="<?php echo base_url(); ?>/landingpage/css/typography.css" rel="stylesheet">
    <!-- Animation CSS -->
    <link href="<?php echo base_url(); ?>/landingpage/css/animate.css" rel="stylesheet">
    <!-- Owl Carousel CSS -->
    <link href="<?php echo base_url(); ?>/landingpage/css/owl.carousel.css" rel="stylesheet">
    <!-- Shortcodes CSS -->
    <link href="<?php echo base_url(); ?>/landingpage/css/shortcodes.css" rel="stylesheet">
    <!-- Custom Main StyleSheet CSS -->
    <link href="<?php echo base_url(); ?>/landingpage/style.css" rel="stylesheet">
    <!-- Color CSS -->
    <link href="<?php echo base_url(); ?>/landingpage/css/color.css" rel="stylesheet">
    <!-- Responsive CSS -->
    <link href="<?php echo base_url(); ?>/landingpage/css/responsive.css" rel="stylesheet">
    <style>
        .nav_wrapper {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
    
        .main_navigation ul {
            display: flex;
            gap: 20px;
            list-style: none;
            padding: 0;
            margin: 0;
        }
    
        .main_navigation ul li {
            display: inline-block;
        }
    
        .main_navigation ul li a {
            text-decoration: none;
            font-weight: bold;
            color: #333;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
    
        .logo_wrap img {
            display: block;
        }
    </style>
    <style>
        .container {
            display: flex;
            align-items: center;
            justify-content: space-between;
            /* Logo di kiri, menu di kanan */
            padding: 10px 20px;
        }

        .logo_wrap {
            flex-shrink: 0;
            /* Agar logo tidak menyusut */
        }

        .main_navigation {
            flex-grow: 1;
            display: flex;
            justify-content: flex-end;
            /* Menu di pojok kanan */
        }

        .main_navigation ul {
            display: flex;
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .main_navigation ul li {
            margin-left: 20px;
            /* Beri jarak antar item menu */
        }

        .main_navigation ul li a {
            text-decoration: none;
            padding: 10px 15px;
            display: block;
        }
    </style>

</head>

<body>

    <!--Wrapper Start-->
    <div class="ct_wrapper">

        <!--Header Wrap Start-->
        <header>
            <div class="logo_nav_outer_wrap">
                <div class="container">
                    <div class="nav_wrapper">
                        <!-- Logo -->
                        <div class="logo_wrap">
                            <a href="#"><img width="100px" src="<?php echo base_url(); ?>/landingpage/images/logo2.png" alt="Logo Pondok Pesantren Mahasiswa Nurul Hikmah"></a>
                        </div>
        
                        <!-- Navigasi -->
                        <nav class="main_navigation">
                            <ul>
                                <li><a href="index.html">Home<span>BERANDA</span></a></li>
                                <li><a href="about-us.html">Tentang Kami<span>PROFIL PESANTREN</span></a></li>
                                <li><a href="our-teacher.html">Pengajar<span>USTADZ/USTADZAH</span></a></li>
                                <li><a href="contact-us.html">Kontak<span>HUBUNGI KAMI</span></a></li>
                                <li><a href="/school/login">Login<span>MASUK</span></a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </header>
        <!--Header Wrap End-->

        <!--Banner Wrap Start-->
        <div class="banner_outer_wrap">
            <ul class="main_slider">

                <li>
                    <img src="<?php echo base_url(); ?>/landingpage/images/image.png" alt="">
                    <div class="ct_banner_caption">
                        <p class="fadeInDown" style="color:white">
                            <br><br><br><br><br>
                            Selamat datang di Pondok Pesantren Mahasiswa Nurul Hikmah. Kami berkomitmen untuk mencetak generasi yang berilmu, berakhlak mulia, dan bermanfaat bagi umat.
                        </p>
                        <a class="fadeInDown" href="#">LEBIH LANJUT</a>
                    </div>
                </li>
            </ul>
        </div>
        <!--Banner Wrap End-->

        <!--Content Wrap Start-->
        <div class="ct_content_wrap">
            <!--Get Started Wrap Start-->
            <section>
                <div class="container">
                    <div class="get_started_outer_wrap">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="get_started_content_wrap ct_blog_detail_des_list">
                                    <h3>Tentang Pondok Pesantren Mahasiswa Nurul Hikmah</h3>
                                    <p>Pondok Pesantren Mahasiswa Nurul Hikmah adalah lembaga pendidikan yang fokus pada pembinaan akhlak, ilmu, dan keterampilan bagi mahasiswa. Kami memiliki kurikulum yang terintegrasi antara ilmu agama dan ilmu umum.</p>
                                    <p><a href="#" style="color:grey">Selengkapnya&nbsp;<i class="fa fa-arrow-right"></i></a></p>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <img src="<?php echo base_url(); ?>/landingpage/images/foto1.png" alt="Logo Pondok Pesantren Mahasiswa Nurul Hikmah">
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!--Get Started Wrap End-->

        <!--Footer Wrap Start-->
        <footer>
            <!--Footer Col Wrap Start-->
            <div class="ct_footer_bg">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-sm-6">
                            <div class="footer_col_1 widget">
                                <a href="#"><img src="<?php echo base_url(); ?>/landingpage/images/logo2.png" alt="Logo Pondok Pesantren Mahasiswa Nurul Hikmah"></a>
                                <p>Pondok Pesantren Mahasiswa Nurul Hikmah, Jl. Pendidikan No. 123, Kota Malang, Jawa Timur.</p>
                                <span>Email : info@nurulhikmah.com</span>
                                <div class="foo_get_qoute">
                                    <a href="#">HUBUNGI KAMI</a>
                                </div>
                            </div>
                        </div>




                    </div>
                </div>
            </div>
            <!--Footer Col Wrap End-->

            <!--Footer Copyright Wrap Start-->
            <div class="ct_copyright_bg">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="copyright_text">
                                &copy; 2025 Pondok Pesantren Mahasiswa Nurul Hikmah. All rights reserved.
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="copyright_social_icon">
                                <ul>
                                    <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--Footer Copyright Wrap End-->
            <div class="back_to_top">
                <a href="#"><i class="fa fa-angle-up"></i></a>
            </div>
        </footer>
        <!--Footer Wrap End-->

    </div>
    <!--Wrapper End-->



    <!--Bootstrap core JavaScript-->
    <script src="<?php echo base_url(); ?>/landingpage/js/jquery.js"></script>
    <script src="<?php echo base_url(); ?>/landingpage/js/bootstrap.min.js"></script>
    <!--Bx-Slider JavaScript-->
    <script src="<?php echo base_url(); ?>/landingpage/js/jquery.bxslider.min.js"></script>
    <!--Dl Menu Script-->
    <script src="<?php echo base_url(); ?>/landingpage/js/dl-menu/modernizr.custom.js"></script>
    <script src="<?php echo base_url(); ?>/landingpage/js/dl-menu/jquery.dlmenu.js"></script>
    <!--Owl Carousel JavaScript-->
    <script src="<?php echo base_url(); ?>/landingpage/js/owl.carousel.js"></script>
    <!--Time Counter Javascript-->
    <script src="<?php echo base_url(); ?>/landingpage/js/jquery.downCount.js"></script>
    <!--Pretty Photo Javascript-->
    <script src="<?php echo base_url(); ?>/landingpage/js/jquery.prettyPhoto.js"></script>
    <!--Way Points Javascript-->
    <script src="<?php echo base_url(); ?>/landingpage/js/waypoints-min.js"></script>
    <!--Custom JavaScript-->
    <script src="<?php echo base_url(); ?>/landingpage/js/custom.js"></script>

</body>

</html>
