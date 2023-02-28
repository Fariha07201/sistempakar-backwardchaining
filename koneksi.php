<?php
$mysqli = new  mysqli("localhost", "root", "", "backward_chaining");
if ($mysqli->connect_errno) {
	echo "Failed to Connect to Mysql : " . $mysqli->connect_error;
	exit();
}


