<?php

include '../../../config/koneksi.php';
// Pastikan koneksi ke database sudah benar
//$con = mysqli_connect("localhost", "root", "", "db_imas");

if (!$con) {
    die("Koneksi ke database gagal: " . mysqli_connect_error());
}

// Jalankan query
$logabsen = mysqli_query($con, "SELECT * FROM _logabsensi");

if (!$logabsen) {
    die("Query gagal: " . mysqli_error($con));
}
?>

<div class="page-header">
    <h4 class="page-title"> Log Absen</h4>
    <ul class="breadcrumbs">
        <li class="nav-home">
            <a href="#">
                <i class="flaticon-home"></i>
            </a>
        </li>
        <li class="separator">
            <i class="flaticon-right-arrow"></i>
        </li>
        <li class="nav-item">
            <a href="#"> SISWA </a>
        </li>
        <li class="separator">
            <i class="flaticon-right-arrow"></i>
        </li>
        <li class="nav-item">
            <a href="#"> Log Absen </a>
        </li>
    </ul>
</div>

<div class="row">
    <div class="col-md-12 col-xs-12">
        <div class="card">
            <div class="card-body">
                <div class="card-body">
                    <table class="table table-head-bg-danger table-xs" class="display table table-striped table-hover">
                        <thead>
                            <tr>
                                <th scope="col">ID Absen</th>
                                <th scope="col">ID Mengajar</th>
                                <th scope="col">ID SIswa</th>
                                <th scope="col">Tanggal</th>
                                <th scope="col">Keterangan</th>
                                <th scope="col">Pertemuan</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $no = 1;
                            foreach ($logabsen as $ab) : ?>
                                <tr>
                                    <td><?= $ab['id_presensi']; ?></td>
                                    <td><?= $ab['id_mengajar']; ?></td>
                                    <td><?= $ab['id_siswa']; ?></td>
                                    <td><?= $ab['tgl_absen']; ?></td>
                                    <td><?= $ab['ket']; ?></td>
                                    <td><?= $ab['pertemuan_ke']; ?></td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</div>