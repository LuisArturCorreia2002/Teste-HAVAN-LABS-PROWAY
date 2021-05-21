<?php
//Conexão
include_once 'php_action/db_connect.php';
//Inclui o header que está dentro da pasta includes
include_once 'includes/header.php';
//Mensagem de Cadastro
include_once 'includes/mensagem.php';
?>

<script>
$(function() {
    $('#ordenar').tablesorter();
}); 
</script>
<div class="row">
    <div class="col s12 m6 push-m3">
        <h3 class="light">Transações Cadastradas</h3>
        <table class="striped" id="ordenar">
            <thead style="text-align:center">
                <tr>
                   <th data-field="idTransacao">Código</th>
                   <th  data-field="nomeClie">Nome do Cliente</th>
                   <th  data-field="moedaOriginal">Moeda Origem</th>
                   <th  data-field="moedaDestino">Moeda Destino</th>
                   <th  data-field="dataOperacao">Data da Operação</th>
                   <th  data-field="valorOriginal">Valor Original</th>
                   <th  data-field="valorConvertido">Valor Convertido</th>
                   <th  data-field="taxCobrada">TaxaCobrada</th>
                 </tr>
            </thead>
            <tbody>
            <?php 
            $sql = "SELECT * FROM transacoes";
            $resultado = mysqli_query($connect, $sql);
            while ($dados = mysqli_fetch_array($resultado)):
            ?>
                <tr>
                <td><?php echo $dados['idTransacao']; ?></td>
                    <td><?php echo $dados['nomeClie']; ?></td>
                    <td><?php echo $dados['moedaOriginal']; ?></td>
                    <td><?php echo $dados['moedaDestino']; ?></td>
                    <td><?php echo $dados['dataOperacao']; ?></td>
                    <td><?php echo $dados['valorOriginal']; ?></td>
                    <td><?php echo $dados['valorConvertido']; ?></td>
                    <td><?php echo $dados['taxaCobrada']; ?></td>
                </tr>
            <?php endwhile; ?>
            </tbody>
        </table>
        <br>
        <a href="adicionar.php" class="btn">Adicionar Transação</a>
    </div>
</div>

<?php
//Inclui o header que está dentro da pasta includes
include_once 'includes/footer.php';
?>