<?php

$id = $_GET['id'];
$detail = mysqli_query($con, "SELECT * FROM tb_guru WHERE id_guru=$id ");
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
                <a href="#">Data Guru</a>
            </li>
            <li class="separator">
                <i class="flaticon-right-arrow"></i>
            </li>
            <li class="nav-item">
                <a href="#">Detail Guru</a>
            </li>
        </ul>
    </div>

    <div class="container mt-5">
        <div class="card">
            <div class="card-header bg-primary text-White">
                <h4 class="card-title font-weight-bold" style="text-align: center;color: white;">Detail Guru</h4>
            </div>
            <div class="card-body">
                <form action="?page=siswa&act=proses" method="post" enctype="multipart/form-data">
                    <input name="id" type="hidden" value="<?= $d['id_guru'] ?>">
                    <input name="act" type="hidden" value="detail">

                    <div class="row mb-3">
                        <div class="col-md-4">
                            <img src="../assets/img/user/<?= $d['foto'] ?>" alt="Profil Guru" style="width: 100%; max-width: 380px;">
                        </div>
                        <div class="col-md-8">
                            <table class="table table-borderless">
                                <tr>
                                    <th>Nama Guru</th>
                                    <td>:</td>
                                    <td><?= $d['nama_guru'] ?></td>
                                </tr>
                                <tr>
                                    <th>NIS/NISN</th>
                                    <td>:</td>
                                    <td><?= $d['nip'] ?></td>
                                </tr>
                                <tr>
                                    <th>ID </th>
                                    <td>:</td>
                                    <td><?= $d['id_guru'] ?></td>
                                </tr>
                                <tr>
                                    <th>Email</th>
                                    <td>:</td>
                                    <td><?= $d['email'] ?></td>
                                </tr>
                                <tr>
                                    <th>Status Guru</th>
                                    <td>:</td>
                                    <td><?php if ($d['status'] == 'Y') {
                                            echo "<span class='badge badge-success'>Aktif</span>";
                                        } else {
                                            echo "<span class='badge badge-danger'>Off</span>";
                                        } ?>
                                    </td>
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