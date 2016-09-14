<?php

include_once 'database_m.php';

try{
$bdd = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8",$user,$password,array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
}
catch(Exception $e) {
	die('Erreur : ' .$e->getMessage());
}

