<?php
	$MaNV = $_GET['id'];
	require_once ('Connect.php');
	$db = new Database();
	$sql = 'delete from nhanvien where MaNV = '.$MaNV;
	$db->execute($sql);
	echo '<script type="text/javascript">alert("Xoá Thành Công")</script>';
	header( "refresh:0.05;url= QuanLyNhanVien.php" );
	die();
?>