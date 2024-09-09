<?php
require 'functions.php';
#ambil id dari URL
$id = $_GET['id'];

#query mahasiswa berdasarkan ID
$m = query("SELECT * FROM mahasiswa WHERE id = $id");
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Detail Mahasiswa</title>
</head>

<body>
  <h3>Detail Mahasiswa</h3>
  <ul>
    <li><img src="img/<?= $m['img']; ?>"></li>
    <li>NIM : <?= $m['nim']; ?></li>
    <li>Nama : <?= $m['nama']; ?></li>
    <li>Jenis Kelamin : <?= $m['jenis_kelamin']; ?></li>
    <li>Jurusan : <?= $m['jurusan']; ?></li>
    <li>Email : <?= $m['email']; ?></li>
    <li>No HP : <?= $m['hp']; ?></li>
    <li>Tempat Lahir : <?= $m['tempat_lahir']; ?></li>
    <li>Tanggal Lahir : <?= $m['tanggal_lahir']; ?></li>
    <li>Alamat : <?= $m['alamat']; ?></li>
    <li><a href="ubah.php?id=<?= $m['id']; ?>">Ubah</a> | <a href="hapus.php?id=<?= $m['id']; ?>" onclick="return confirm('apakah anda yakin?');">Hapus</a></li>
    <li><a href=" index.php">Kembali ke Daftar Mahasiswa</a></li>
  </ul>

</body>

</html>