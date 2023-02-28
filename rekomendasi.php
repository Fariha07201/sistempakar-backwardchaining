<?php
    include_once "header.php";
    include_once "koneksi.php";
?>

<?php
    $list = array(
        "P01" => array('TH01', 'TH02', 'TH03', 'TH04', 'TH05', 'TH06'),
        "P02" => array('TH07', 'TH08', 'TH09', 'TH04', 'TH05', 'TH06'),
        "P03" => array('TH10', 'TH11', 'TH12', 'TH04', 'TH05', 'TH06'),
        "P04" => array('TH13', 'TH09', 'TH14', 'TH04', 'TH05', 'TH06'),
        "P05" => array('TH15', 'TH16', 'TH01', 'TH17', 'TH04', 'TH05', 'TH06'),
        "P06" => array('TH18', 'TH04', 'TH05', 'TH04', 'TH05'),
        "P07" => array('TH19', 'TH20', 'TH21', 'TH04', 'TH05')
    );
?>

<body>
    <section id="hero" class="d-flex flex-column justify-content-end align-items-center">
            <div class = "index-banner">
                <div class="container">
                    
                    <div class="foward" style="background-color: white; margin: 2   rem; padding: 1rem 2rem; border-radius: 10px">
                            <?php

                            $rowHsl = array();
                            if (isset($_GET['penyakit'])) {
                                $kode_penyakit = $_GET['penyakit'];

                                $sql = "SELECT `nama_penyakit`, `keterangan`, `penanganan`  FROM `penyakit` WHERE `kode`='{$kode_penyakit}'";
                                $result = $mysqli->query($sql);
                                $row = $result->fetch_row();
                            }

                            if (isset($_GET['solusi'])){
                                $kode_solusi = json_decode($_GET['solusi'], true);
                                $ids = join("', '", $kode_solusi);                        

                                $db = "SELECT tanaman_herbal FROM tanaman_herbal WHERE kode IN ('$ids')";

                                $hsl = $mysqli->query($db);

                            }

                            if (isset($_GET['hasil'])){
                                $hasil = $_GET['hasil'];

                                 if ($hasil == 100) {
                                    
                                    echo "<h4>Gejala {$row[0]} ditemukan dengan persentase 100% dan Keterangan :</h4>";
                                    echo "<div class='text-left'>{$row[1]}</div>";
                                    echo "<br><h4>Penanganan pada penyakit {$row[0]} :</h4>";
                                    echo "<div class='text-left'>{$row[2]}</div>";
                                    echo "<br><h4> Solusi Penggunaan Tanaman Obat Herbal :</h4>";
                                    $count = 0;
                                    $penyakit = $_GET["penyakit"];

                                    while($r = $hsl->fetch_assoc()) {
                                        $count++;                                 
                                        // if ( $penyakit == "P01" && $r["tanaman_herbal"] == "Herba Tempuyung") {
                                        //     $r["tanaman_herbal"] = "6 gram";
                                        // }       
                                        echo "<div class='text-left'>{$count}. {$r["tanaman_herbal"]}</div>";
                                        }
                                        echo "<br><h6>*tata cara membuat ramuan : mengeringkan tanaman obat kemudian rebus hingga mendidih dan minum dari air rebusan tersebut 1 hari 1 kali.</h6>";
                                        echo "<br><a href='?' class='btn btn-primary'>Konsultasi Lagi</a>";
    
                                } elseif($hasil >= 80) {
                                    
                                    echo "<h4>Gejala {$row[0]} ditemukan dengan persentase 80% dan Keterangan :</h4>";
                                    echo "<div class='text-left'>{$row[1]}</div>";
                                    echo "<br><h4>Penanganan pada penyakit {$row[0]} :</h4>";
                                    echo "<div class='text-left'>{$row[2]}</div>";
                                    echo "<br><h4> Solusi Penggunaan Tanaman Obat Herbal :</h4>";
                                    $count = 0;
                                    $penyakit = $_GET["penyakit"];

                                    while($r = $hsl->fetch_assoc()) {
                                        $count++;                                 
                                        // if ( $penyakit == "P01" && $r["tanaman_herbal"] == "Herba Tempuyung") {
                                        //     $r["tanaman_herbal"] = "6 gram";
                                        // }       
                                        echo "<div class='text-left'>{$count}. {$r["tanaman_herbal"]}</div>";
                                        }
                                        echo "<br><h6>*tata cara membuat ramuan : mengeringkan tanaman obat kemudian rebus hingga mendidih dan minum dari air rebusan tersebut 1 hari 1 kali.</h6>";
                                        echo "<br><a href='?' class='btn btn-primary'>Konsultasi Lagi</a>";
    
                                    }elseif($hasil >= 70) {
                                    
                                        echo "<h4>Gejala {$row[0]} ditemukan dengan persentase 70% dan Keterangan :</h4>";
                                        echo "<div class='text-left'>{$row[1]}</div>";
                                        echo "<br><h4>Penanganan pada penyakit {$row[0]} :</h4>";
                                        echo "<div class='text-left'>{$row[2]}</div>";
                                        echo "<br><h4> Solusi Penggunaan Tanaman Obat Herbal :</h4>";
                                        $count = 0;
                                        $penyakit = $_GET["penyakit"];
    
                                        while($r = $hsl->fetch_assoc()) {
                                            $count++;                                 
                                            // if ( $penyakit == "P01" && $r["tanaman_herbal"] == "Herba Tempuyung") {
                                            //     $r["tanaman_herbal"] = "6 gram";
                                            // }       
                                            echo "<div class='text-left'>{$count}. {$r["tanaman_herbal"]}</div>";
                                            }
                                            echo "<br><h6>*tata cara membuat ramuan : mengeringkan tanaman obat kemudian rebus hingga mendidih dan minum dari air rebusan tersebut 1 hari 1 kali.</h6>";
                                            echo "<br><a href='?' class='btn btn-primary'>Konsultasi Lagi</a>";
        
                                }elseif($hasil == "false"){
                                    echo "<h4>Penyakit {$row[0]} tidak sesuai dengan gejala-gelaja yang anda alami.</h4>";
                                    echo "<br><a href='?' class='btn btn-primary'>Konsultasi Lagi</a>";
                                } else {                                
                                    echo "<h5>Silahkan Pilih Salah Satu Penyakit Sesuai Diagnosis Awal</h5>";
                                }
                            } 
                         ?>
                    </div>
                </div>
            </div>
    </section>
    <?php
    if (!isset($_GET["hasil"])) {

    ?>
        <section id="about" class="contact">
            <div class="container">


            <div class="row">
                    <div class="col-3">
                        <h4>Nama Penyakit</h4>
                        <div class="list-group" id="list-tab" role="tablist">
                            <?php
                            $sql = "SELECT `kode`, `nama_penyakit`, `keterangan` FROM `penyakit`";
                            $result = $mysqli->query($sql);

                            if ($result->num_rows > 0) {
                                while ($row = $result->fetch_assoc()) {
                                    echo "<a class='list-group-item list-group-item-action btn-outline-primary' id='list-home-list' data-bs-toggle='list' href='?selected={$row['kode']}#{$row['kode']}' role='tab' aria-controls='home'><b>{$row['nama_penyakit']}</b></a>";
                                }
                            } else {
                                echo "Data kosong";
                            }
                            ?>

                        </div>
                    </div>
                    <div class="col-9">
                        <h4>Gejala</h4>
                        <div class="tab-content" id="nav-tabContent">
                            <div 
                                class="tab-pane fade show active" 
                                id="#<?php 
                                        if(isset($_GET['selected'])) { 
                                            echo $_GET['selected'];
                                        }
                                    ?>" 
                                role="tabpanel" aria-labelledby="list-home-list">
                                <form method="POST">
                                    <?php
                                    if(isset($_GET['selected'])){
                                        $namaGejala = array();
                                        $selected = $_GET['selected'];
                                        $solusi = $list[$selected];
                                    
                                    
                                
                                    if ($selected != '') {
                                        $query = "SELECT * FROM `rules` WHERE `kode_penyakit`='{$selected}'";
                                        $raw = $mysqli->query($query);

                                        $selectedResult = $raw->fetch_assoc();
                                        $listGejala = explode(" ", $selectedResult['daftar_gejala']);

                                        if (isset($_POST['submit'])) {
                                            $arr = $_POST['selectedgejala'];
                                            $prs = $arr / $selected *100;
                                             echo $prs;
                                                if($prs == 100 ) {
                                                    echo "<script> window.location ='?penyakit={$selected}&hasil=100&solusi=".json_encode($solusi)."'</script>";
                                                } elseif($prs >= 80){
                                                    echo "<script> window.location ='?penyakit={$selected}&hasil=80&solusi=".json_encode($solusi)."'</script>";
                                                } elseif($prs >= 70){
                                                    echo "<script> window.location ='?penyakit={$selected}&hasil=70&solusi=".json_encode($solusi)."'</script>";
                                            
                                                }else {
                                                    echo "<script> window.location ='?penyakit={$selected}&hasil=false&solusi=[]'</script>";
                                                }
                                                }
                                                
                                            //  if (count($listGejala) == count($arr)) {
                                            //     echo "<script> window.location ='?penyakit={$selected}&hasil=true&solusi=".json_encode($solusi)."'</script>";
                                            // //  }else {
                                            //      echo "<script> window.location ='?penyakit={$selected}&hasil=false&solusi=[]'</script>";
                                              //}
                                        }
                                        foreach ($listGejala as $i => $kodeGejala) {
                                            $getGejala = $mysqli->query("SELECT `nama_gejala` FROM `gejala` WHERE `kode`='{$kodeGejala}'");
                                            $gejala = $getGejala->fetch_row();
                                            if ($gejala != NULL) {
                                    ?>
                                                <div class="list-group">
                                                    <label class="list-group-item">
                                                        <input class="form-check-input" type="checkbox" value="<?php echo $listGejala[$i] ?> " name="selectedgejala[]"> Apakah Anda merasa <?php echo $gejala[0]; ?> ?
                                                    </label>
                                                </div>

                                    <?php
                                            } else {
                                                echo "";
                                            }
                                        }
                                    }
                                }

                                    ?>
                                    <input type='submit' name="submit" class='btn btn-primary' id='hasil'>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- <span style="color: white; font-size: 1.5rem; padding-bottom: 5px; font-weight: 500;">Pilih Penyakit :</span> -->



            </div>
        </section>
    <?php
    // } else {
    //     echo "";
    // }
    // ?>
      <!-- Footer Start -->
	<div class="footer-copyright" style="padding: 0px 0px">
      <div class="container">
        <p align="center" style="color: #999">&copy; Sistem Pakar Backward Chaining 2023</p>
      </div>
    </div>
    <!-- Footer End -->

