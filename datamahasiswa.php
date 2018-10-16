<form action="" method="POST">
	<input type="text" name="search"><a href="datamahasiswa.php">Search</a>
</form>
<?php
if (isset(($_POST['search']))) {
	$nim 		= $_POST['nim'];
	
	$data		= mysqli_query($connect, "SELECT * FROM inputmhs WHERE nim = '$nim'");
	$baris 		= mysqli_num_rows($data);

	if (isset($baris)) {
		$_SESSION['nim'] = $nim; 
	
	}
}
?>
<?php
include 'connect.php';
session_start();
?>
<form action="" method="POST">
	<center>
		<h2>DATA MAHASISWA</h2>
		<table border="2" cellpadding="2" bgcolor="skyblue">
			<?php
				$nim 			= $_SESSION['nim'];
				$post	 		= mysqli_query($connect, "SELECT * FROM inputmhs WHERE nim = '$nim'");
				while ($fetch = mysqli_fetch_array($post)) {
			?>
		<tr>
			<th>NAMA MAHASISWA</th>
			<th>NIM MAHASISWA</th>
			<th>AKSI</th>
		</tr>
		<tr>
			<td><?php echo $fetch[0]; ?></td>
			<td><?php echo $fetch[1]; ?></td>
			<td><a href = 'delete.php'>DELETE</a></td>
		</tr>
		</table>
	<?php } ?>
	</center>
</form>