<?php 
session_start();
 
    // cek apakah yang mengakses halaman ini sudah login
    if($_SESSION['level']==""){
        header("location:index.php?pesan=gagal");
    }

include "../../config/koneksi.php";

$menus = mysqli_query($koneksi, "SELECT * FROM tb_makanan");

function createCart($data){
    global $koneksi;
     $nomor_meja = $data["nomor_meja"];
    $nama_menu = $data["nama_menu"];
    $harga = $data["harga"];
    $jumlah = $data["jumlah"];
    $total = $jumlah * $data["harga"];

    mysqli_query($koneksi,"INSERT INTO tb_order VALUES(
        '',
        '$nomor_meja',
        '$nama_menu',
        '$harga',
        '$jumlah',
        '$total'
    )");

    return mysqli_affected_rows($koneksi);
}

if(isset($_POST["order"])){
    if(createCart($_POST) > 0 ){
        echo "
        <script>
            alert('Pesanan sudah terkirim ke admin silahkan tunggu dimeja anda')
            document.location.href = '../../beranda.php'
        </script>
        ";
    }

}



 ?>

<html>
    <head>
    <!-- Penghubung Boostrap -->
    <link rel="stylesheet" href="../../css/bootstrap.min.css">

    <!-- Jquery Boostrap -->
    <script src="../../js/bootstrap.min.js"></script>

    </head>
    <div class="container">
    <div class="row" style="margin-top: 50px;">
        <div class="col-md-4">
            <h1>Menu </h1>
        </div>
        <div class="col-md-4"></div>
        <div class="col-md-4">
        
        </div>
    </div>
    <br>
    <a href="../../beranda.php" class="btn btn-danger float-right">Kembali ke kategori</a>
    <br><br>

  
  <div class="row">  
   <?php while ($row = mysqli_fetch_assoc($menus)) : ?>
        <div class="col-auto mb-3">
            <form action="" method="post">
            <div class="card" style="width: 18rem;">
                <img class="card-img-top" style="height: 220px;" src="../../img/<?php echo $row['gambar_menu']?>" alt="">
                <div class="card-body">
                    <h5 class="card-title" ><?php echo $row['nama_menu'] ?></h5>
                    <p class="card-text" style="color: red;">Rp. <?php echo $row['harga'] ?> </p>
                    <input type="number" name="jumlah" value="0" class="w-1/2 text-center py-1 font-semibold text-gray-800 text-lg focus:outline-none border border-amber-400 mb-2 rounded">
                    <br>
                     <input type="number" name="nomor_meja" value="" placeholder="Nomor meja anda" class="w-1/2 text-center py-1 font-semibold text-gray-800 text-lg focus:outline-none border border-amber-400 mb-2 rounded">
                </div>
                <div class="card-footer">
                    <button type="submit" name="order" class="btn btn-primary">Order</button>
                </div>
            </div>
                <input type="hidden" name="nama_menu" value="<?php echo $row['nama_menu'] ?>">
                <input type="hidden" name="harga" value="<?php echo $row['harga'] ?>">
          </form>        
        </div>
        <?php endwhile ?>
     
    </div>
</div>
</html>

