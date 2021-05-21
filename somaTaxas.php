<?php
//Conexão
include_once 'php_action/db_connect.php';
//Inclui o header que está dentro da pasta includes
include_once 'includes/header.php';

$query = "SELECT sum(taxaCobrada) as `soma das taxas` FROM transacoes";
$result = mysqli_query($connect, $query);
