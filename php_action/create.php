<?php
//Sessão
session_start();
//Conexão com o db
require_once 'db_connect.php';

if(isset($_POST['btn-cadastrar'])):
$nome = mysqli_escape_string($connect, $_POST['nome']);
$moedaOrigem = mysqli_escape_string($connect, $_POST['moedaOrigem']);
$moedaDestino = mysqli_escape_string($connect, $_POST['moedaDestino']);
$dataOperacao = mysqli_escape_string($connect, $_POST['dataOperacao']);
$valorOriginal = mysqli_escape_string($connect, $_POST['valorOriginal']);
$valorConvertido = mysqli_escape_string($connect, $_POST['valorConvertido']);
$taxaCobrada = mysqli_escape_string($connect, $_POST['taxaCobrada']); 

$sql = "INSERT INTO transacoes 
(nomeClie,moedaOriginal,
moedaDestino,dataOperacao,valorOriginal,valorConvertido,taxaCobrada)
VALUES ('$nome','$moedaOrigem','$moedaDestino','$dataOperacao','$valorOriginal','$valorConvertido','$taxaCobrada')";

if(mysqli_query($connect, $sql)):
    $_SESSION['mensagem'] = "Transação Cadastrada com Sucesso!";
    header('Location: ../index.php?sucesso');
else:
    $_SESSION['mensagem'] = "Erro ao Cadastrar!";
    header('Location: ../index.php?erro');
endif;
endif;