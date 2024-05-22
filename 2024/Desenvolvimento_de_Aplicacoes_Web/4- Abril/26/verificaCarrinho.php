<!--localhost/COTIL/2024/Desenvolvimento_de_Aplicacoes_Web/4- Abril/26/verificaCarrinho.php-->
<?php
    $listagemProdutos = "";
    $total = 0;


    //verifica se já tem produto em cookie
    if(!isset($_COOKIE["qtd"])){
        $qtd = 0;
    } else{

        //lê a qtd de produtos
        $qtd = $_COOKIE["qtd"];

        //lê o carrinho atual armazenado em cookie, se houver
        $carrinhoAtual = isset($_COOKIE["carrinho"]) ? $_COOKIE["carrinho"] : "";

        //Para ser gravado, o array do carrinho deve ser serializado. Portanto, para adicionar mais itens, deve-se desserializar
        $carrinho = unserialize($carrinhoAtual);

        //percorre o carrinho lido, monta string de exibição e calcula total dos produtos
        foreach($carrinho as $produto){
            $listagemProdutos .= $produto["codigo"] . " - ";
            $listagemProdutos .= $produto["descricao"] . " - ";
            $listagemProdutos .= $produto["valor"] . "<br>";

            $total += $produto["valor"];
        }
        $total = number_format($total, 2, ",", ".");
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carrinho</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0"/>

</head>
<body>
    <h1 align="Center">Lojinha do Cotil</h1>

    <hr>

    <div align="right">
        <a href="compra.php"><span class="material-symbols-outlined">home</span></a>
    </div>

    <hr>
    <strong>Lista de Produtos</strong>
    <br><br>
    <span>
        <?=$listagemProdutos?>
        <br>
        Total: <?=$total?>
    </span>
</body>
</html>