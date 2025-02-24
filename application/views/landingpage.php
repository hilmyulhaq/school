<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistem Informasi Diniyah - Pondok Pesantren Nurul Hikmah</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .hero {
            background: url('assets/img/pondok.jpg') no-repeat center center/cover;
            height: 80vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            text-shadow: 2px 2px 10px rgba(0,0,0,0.7);
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#">Nurul Hikmah</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="#about">Tentang</a></li>
                    <li class="nav-item"><a class="nav-link" href="#features">Fitur</a></li>
                    <li class="nav-item"><a class="nav-link" href="#contact">Kontak</a></li>
                </ul>
            </div>
        </div>
    </nav>
    
    <header class="hero text-center">
        <div>
            <h1>Selamat Datang di Sistem Informasi Diniyah</h1>
            <p>Pondok Pesantren Nurul Hikmah</p>
        </div>
    </header>
    
    <section id="about" class="container my-5">
        <h2>Tentang Kami</h2>
        <p>Sistem Informasi Diniyah ini dirancang untuk memudahkan pengelolaan data santri, absensi, jadwal pelajaran, serta administrasi di Pondok Pesantren Nurul Hikmah.</p>
    </section>
    
    <section id="features" class="bg-light py-5">
        <div class="container">
            <h2 class="text-center">Fitur Utama</h2>
            <div class="row text-center mt-4">
                <div class="col-md-4">
                    <h4>Data Santri</h4>
                    <p>Kelola informasi santri dengan mudah dan akurat.</p>
                </div>
                <div class="col-md-4">
                    <h4>Absensi Online</h4>
                    <p>Monitoring kehadiran santri secara real-time.</p>
                </div>
                <div class="col-md-4">
                    <h4>Jadwal Pelajaran</h4>
                    <p>Atur jadwal belajar dengan sistem yang efisien.</p>
                </div>
            </div>
        </div>
    </section>
    
    <section id="contact" class="container my-5">
        <h2>Kontak Kami</h2>
        <p>Jika Anda memiliki pertanyaan, silakan hubungi kami di email: <strong>admin@nurulhikmah.com</strong></p>
    </section>
    
    <footer class="bg-dark text-white text-center py-3">
        <p>&copy; 2025 Pondok Pesantren Nurul Hikmah. All Rights Reserved.</p>
    </footer>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
