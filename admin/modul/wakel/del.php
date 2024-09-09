<?php
$del = mysqli_query($con, "DELETE FROM tb_walikelas WHERE id_walikelas='$_GET[id]' ");
if ($del) {
	echo " <script>
		alert('Data ID ($_GET[id]) telah dihapus !');
		window.location='?page=wakel';
		</script>";
}
