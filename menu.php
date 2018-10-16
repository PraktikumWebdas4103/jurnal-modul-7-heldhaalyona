<form action="" method="POST">
	<table>
		<tr>
			<td>
		<nav>
		<a href="inputdata.php">Input Data Mahasiswa</a> ||
		|| <input type="text" name="simpan"><a href="datamahasiswa.php">Seacrh</a>
		</nav>
			</td>
		</tr>
	</table>
</form>
<?php
if (isset(($_POST['simpan']))) {
	$nim 		= $_POST['nim'];
	
	$data		= mysqli_query($connect, "SELECT * FROM inputmhs WHERE nim = '$nim'");
	$baris 		= mysqli_num_rows($data);

	if (isset($baris)) {
		$_SESSION['nim'] = $nim; 
		header("location: datamahasiswa.php");

	}
}
?>