<?php
	$MaDH = $_GET['id'];
	require_once ('Connect.php');
	$db = new Database();
	$sql = 'delete from chitietdonhang where MaDH = '.$MaDH;
	$db->execute($sql);
	echo '<script type="text/javascript">alert("Xoá Thành Công")</script>';
	header( "refresh:0.05;url= QuanLyHoaDon.php" );
	die();
?>