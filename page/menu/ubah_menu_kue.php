<?php 

include "../../config/koneksi.php";

if (isset($_POST['update'])) {
	$nama_menu = $_POST['nama_menu'];
	$harga = $_POST['harga'];
	$gambar_menu = imageMenu();

	$query_update = mysqli_query($koneksi,"update tb_kue set nama_menu = '$nama_menu', harga = '$harga', gambar_menu = '$gambar_menu' where kode_menu = '".$_GET['id']."'");

	if($query_update){
		header('Location: menu_kue.php');
	}else{
		mysql_error();
	}

}

function imageMenu(){

    $nameFile = $_FILES["gambar_menu"]["name"];
    $tempName = $_FILES["gambar_menu"]["tmp_name"];
    $error = $_FILES["gambar_menu"]["error"];

    // check if no images are uploaded
    if( $error === 4 ){
        echo "please upload image!";
    }

    // check extension image
    $extension = ["jpg","png","jpeg","jfif"];
    $extensionImage = explode(".",$nameFile);
    $extensionImage = strtolower(end($extensionImage));
    
    if( !in_array($extensionImage,$extension) ){
        echo "this file not image";
    }
    
    // change name image from default to random string
    $newName = uniqid();
    $newName .= ".";
    $newName .= $extensionImage;

    move_uploaded_file($tempName, '../../img/' . $newName);

    return $newName;
}
 



 ?>