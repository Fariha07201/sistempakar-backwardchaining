<?php
include_once "header.php";
include_once "koneksi.php";

?>

<!-- Body Start -->

		<!-- Jumbotron Start -->
		<div id="index-banner" class="parallax-container">
			<div class="section no-pad-bot">
				<div class="container center">
                    <h5 class="header jarak-button col s12 light" style="margin-bottom: 0px; font-size: 26px">Sistem Pakar </h5>
					<div class="center">
						<h1 class="header jarak center white-text" style="font-size: 40px">Saintifikasi Jamu Untuk Berbagai Penyakit</h1>
					</div>
					<div class="center">
						<a href="rekomendasi.php" id="download-button" class="waves-effect waves-light btn-large" style="margin-top: 40px">Konsultasi</a>
					</div>
				</div>
			</div>
			<div class="parallax"><img src="assets/image/th.jpg" ></div>
		</div>
		<!-- Jumbotron End -->

	<!-- Info Start -->
	<div id="content-wrapper" style="background-color: #efefef"">
		<div class="container" >

			<!-- Page Heading -->
			<div class="d-sm-flex align-items-center justify-content-between mb-4">
                <h1 class="h3 mb-0 text-gray-800">Proses Penggunaan Aplikasi Sistem Pakar Tanaman Herbal</h1>
            </div>

            <div class="row">
                <div class="col-sm-6 mb-3 mb-sm-0">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Pilih Penyakit Sesuai Diagnosis Awal</h5>
                            <p class="card-text">Memilih penyakit yang dialami dari hasil diagnosa awal.</p>
                        
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Pilih Gejala Penyakit</h5>
                            <p class="card-text">Memilih gejala penyakit sesuai yang dirasakan pasien.</p>
                            
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Hasil Diagnosis dan Saran Penggunaan Obat Herbal</h5>
                            <p class="card-text">Hasil akhir diagnosis akan muncul disertai penggunaan obat herbal sesuai anjuran.</p>
                            
                        </div>
                    </div>
                </div>
			</div>
        </div>
	</div>
	<!-- Info End -->

	
    <!-- Body End -->

    <!-- Footer Start -->
	<div class="footer-copyright" style="padding: 0px 0px">
      <div class="container">
        <p align="center" style="color: #999">&copy; Sistem Pakar Backward Chaining 2023</p>
      </div>
    </div>
    <!-- Footer End -->
    <script type="text/javascript">
	 			$(document).ready(function(){
	      $('.parallax').parallax();
				$('.modal').modal();
	    });
	</script>
</body>
</html>