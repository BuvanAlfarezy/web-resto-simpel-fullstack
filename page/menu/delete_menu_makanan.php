<?php 

include "../../config/koneksi.php";

 // $query_delete = mysqli_query($koneksi, "delete from tb_kue where kode_menu = '".$_GET['id']."'");

 // if($query_delete){
 //    header('location : kelola_menu.php');

 // }

$query_delete = mysqli_query($koneksi,"DELETE FROM tb_makanan WHERE kode_menu = '".$_GET['id']."'");


if($query_delete)
{
    header('Location: menu_makanan.php');
}else{
    mysql_error();
}
 
 ?>