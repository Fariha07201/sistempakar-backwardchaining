<?php
include_once "koneksi.php";
include_once "rekomendasi.php";

if (isset($_POST['submit'])) {
    $query = 'SELECT id FROM rules where ';
  array_pop($_POST);
  $rule_input = array();
  foreach ($_POST as $where) {
    $query .= $where . "=1 and ";
    array_push($rule_input, $where);
  }
  $query .= "1=1";
  
    $data = mysqli_query($mysqli, $query);

  $id=$_GET["selected"];
  $id = $list_id['id'];

    $rule = array(
    array("G01", "G02", "G03", "G04"),
    array("G05", "G06", "G07", "G08"),
    array("G09", "G10", "G11", "G12"),
    array("G13", "G14", "G15", "G16"),
    array("G17", "G18", "G19", "G20"),
    array("G21", "G22", "G23", "G24"),
    array("G25"),
  );
  while ($lst_id = mysqli_fetch_assoc($data)) {
    $id = $lst_id["id"];
  }
  
  $cari_penyakit = "SELECT * from penyakit where kode='$id'";
    $db = $mysqli->query( $cari_penyakit);

    while ($data = mysqli_fetch_assoc($db)) {
    $penyakit = $data['nama_penyakit'];
    $info = $data['keterangan'];
    // $solusi = $data['solusi'];
    include 'result.php';
    }
  
    $cari_obat = "SELECT * from tanaman_herbal where kode='id'";
    $th = $mysqli->query($cari_obat);

    while ($data = mysqli_fetch_assoc($th)) {
      $solusi = $data['solusi'];
      include 'result.php';
    }
}

?>