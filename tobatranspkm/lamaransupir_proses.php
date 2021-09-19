<?php
$database = new mysqli("localhost", "root", "" ,"tobatrans");
include('function.php');
if(isset($_POST['daftar'])){

  $nama_supir = $_POST['nama_supirs'];
  $punya_kendaraan = $_POST['punya_kendaraans'];
  $pengalaman =  $_POST['pengalamans'];
  $alamat_email = $_POST['alamat_emails'];
  $nomor_telepon = $_POST['nomor_telepons'];
  $deskripsi = $_POST['deskripsis'];
  $status_supir = 3;
  $test=$database->query("INSERT INTO lamaran_supir (nama_supir, punya_kendaraan, pengalaman, alamat_email, nomor_telepon, deskripsi, status_supir) VALUES('$nama_supir', '$punya_kendaraan', '$pengalaman', '$alamat_email', '$nomor_telepon', '$deskripsi', ".$status_supir.")");

 if($test){
    echo "<script> alert('Lamaran berhasil dimasukkan')</script>";
 
  }else{
    echo "<script>alert('gagal')<script>";
  }
}

?>