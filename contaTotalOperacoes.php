<?php
//Conexão
include_once 'php_action/db_connect.php';
//Inclui o header que está dentro da pasta includes
include_once 'includes/header.php';

$query = "SELECT idTransacao FROM transacoes ORDER BY idTransacao";
$result = mysqli_query($connect, $query);

$row = mysqli_num_rows($result);

echo '<p style="text-align: cneter;"> Foram feitas um total de : '.$row.' operações</p>';