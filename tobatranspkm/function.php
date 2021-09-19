<?php 
function connect_database(){
	$database =  mysqli_connect("localhost", "root", "" ,"ruteangkot");
	if(!$database){
			echo ("Tidak terkoneksi ");
	return $database;
 	}
}


 ?>