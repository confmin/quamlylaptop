<?php
	$MaDMTT = $_GET['id'];
	require_once ('Connect.php');
	$db = new Database();
	$sql = 'delete from danhmuctintuc where MaDMTT = '.$MaDMTT;
	$db->execute($sql);
	echo '<script type="text/javascript">alert("Xoá Thành Công")</script>';
	header( "refresh:0.05;url= DanhMucTinTuc.php" );
	die();
?>