<?php

//Inclui o header que está dentro da pasta includes
include_once 'includes/header.php';

?>

<div class="row">
    <div class="col s12 m6 push-m3">
        <h3 class="light">Nova Transação</h3>
       <form action="php_action/create.php" method="POST">
        <div class="input-field col s12">
             <input type="text" name="nome" id="nome"/>
             <label for="nome">Nome do Cliente:</label>
        </div>
        <div class="input-field col s12">
             <input type="text" name="moedaOrigem" id="moedaOrigem"/>
             <label for="moedaOrigem">Moeda de Origem:</label>
        </div>
        <div class="input-field col s12">
             <input type="text" name="moedaDestino" id="moedaDestino"/>
             <label for="moedaDestino">Moeda de Destino:</label>
        </div>
        <div class="input-field col s12">
             <input type="date" name="dataOperacao" id="dataOperacao"/>
             <label for="dataOperacao">Data da Operação:</label>
        </div>
        <div class="input-field col s12">
             <input type="text" name="valorOriginal" id="valorOriginal"/>
             <label for="valorOriginal">Valor Original:</label>
        </div>
        <div class="input-field col s12">
             <input type="text" name="valorConvertido" id="valorConvertido"/>
             <label for="valorConvertido">Valor Convertido:</label>
        </div>
        <div class="input-field col s12">
             <input type="text" name="taxaCobrada" id="taxaCobrada"/>
             <label for="taxaCobrada">Taxa Cobrada:</label>
        </div>
        <button type="submit" name="btn-cadastrar" class="btn green">Cadastrar</button>
        <a href="index.php" class="btn">Lista de Transações</a>
    </div>
</div>

<?php
//Inclui o header que está dentro da pasta includes
include_once 'includes/footer.php';
?>