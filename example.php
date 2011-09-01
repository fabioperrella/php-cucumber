<?php
error_reporting(E_ALL);
require_once 'config/config.php';

$db = mysql_connect($db_host,$db_user,$db_pass) or die('nao conseguiu conectar no db');
mysql_select_db($db_name,$db) or die("nao achou database $db_name");
$sql = "select title, content from pages where id=1";
$res = mysql_query($sql,$db);
$row = mysql_fetch_array($res);
$title = $row['title'];
$content = $row['content'];
?>
<html>
<body>
<h1><?=$title?></h1>
<p>
<?=$content?>
</p>
<a href="page2.html">link page2</a>
</body>
</html>
<?
mysql_close($db);
?>