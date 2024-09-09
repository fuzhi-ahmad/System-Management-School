<?php

$id = $_GET['id'];
$detail = mysqli_query($con, "SELECT * FROM tb_siswa WHERE id_siswa=$id ");
foreach ($detail as $d)
?>



<div class="page-inner">
    <div class="page-header">
        <h4 class="page-title">Siswa</h4>
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
                <a href="#">Data Siswa</a>
            </li>
            <li class="separator">
                <i class="flaticon-right-arrow"></i>
            </li>
            <li class="nav-item">
                <a href="#">Detail Siswa</a>
            </li>
        </ul>
    </div>

    <div class="container mt-5">
        <div class="card">
            <div class="card-header bg-primary text-White">
                <h4 class="card-title font-weight-bold" style="text-align: center;color: white;">Detail Siswa</h4>
            </div>
            <div class="card-body">
                <form action="?page=siswa&act=proses" method="post" enctype="multipart/form-data">
                    <input name="id" type="hidden" value="<?= $d['id_siswa'] ?>">
                    <input name="act" type="hidden" value="detail">

                    <div class="row mb-3">
                        <div class="col-md-4">
                            <img src="../assets/img/user/<?= $d['foto'] ?>" alt="Profil Siswa" style="width: 100%; max-width: 380px;">
                        </div>
                        <div class="col-md-8">
                            <table class="table table-borderless">
                                <tr>
                                    <th>Nama Peserta Didik</th>
                                    <td>:</td>
                                    <td><?= $d['nama_siswa'] ?></td>
                                </tr>
                                <tr>
                                    <th>NIS/NISN</th>
                                    <td>:</td>
                                    <td><?= $d['nis'] ?></td>
                                </tr>
                                <tr>
                                    <th>Tempat, Tanggal Lahir</th>
                                    <td>:</td>
                                    <td><?= $d['tempat_lahir'] ?>, <?= $d['tgl_lahir'] ?></td>
                                </tr>
                                <tr>
                                    <th>Jenis Kelamin</th>
                                    <td>:</td>
                                    <td><?= $d['jk'] ?></td>
                                </tr>
                                <tr>
                                    <th>Alamat Peserta Didik</th>
                                    <td>:</td>
                                    <td><?= $d['alamat'] ?></td>
                                </tr>
                                <tr>
                                    <th>Tahun Masuk</th>
                                    <td>:</td>
                                    <td><?= $d['th_angkatan'] ?></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="text-right">
                        <a href="javascript:history.back()" class="btn btn-primary"><i class="fa fa-chevron-left"></i> Kembali</a>
                    </div>
                </form>
            </div>
        </div>
    </div>

</div>