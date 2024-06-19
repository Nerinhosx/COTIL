<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exibição</title>

    <style>
        h1 {
            font-size: 48px;
        }

        section {
            text-align: center;
            font-size: 24px;
        }

        body {
            width: 98vw;
            height: 98vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: #163076;
            color: #3fc185;
        }

        form {
            border: 2px #0d5b86 solid;
            background-color: #03c9ca;
            box-shadow: #22bfb8 0px 0px 5px;
            color: #1c481d;
            width: 150px;
            height: 100px;
            border-radius: 10px;
            padding: 10px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        #turma {
            width: 60%;
        }

        header {
            margin-bottom: 20px;
        }

        div {
            display: flex;
            justify-content: end;
        }

        input, button{
            color: #8ee8a8;
            background-color: #152e8b;
        }
    </style>
</head>
<body>
    
    <a href="index.html"><button>Voltar</button></a>
<?php
    $turmas = array(
        "INFD3"=>array(
            "16117"=>"Amanda Oliveira Santos",
            "16557"=>"Bruno Penteado Carrara",
            "16563"=>"Cibele Souza de Almeida",
            "16119"=>"Danilo Rafhael",
            "16121"=>"Érika Cavalcanti"
        ),

        "CTI2"=>array(
            "17427"=>"Diogo Vinicius Oliveira",
            "17428"=>"Douglas José Figueiredo",
            "17429"=>"Emily Da Silva Farias"
        ),
        
        "INFN3"=>array(
            "16227"=>"Andre Ricardo Martins",
            "16573"=>"Andre Schinor Mena Peres",
            "16228"=>"Beatriz Santos de Mello",
            "16229"=>"Caio Ramos Ballarin",
            "16231"=>"Carlos Eduardo Lima"
        )
    );

    $turmaSelec =  strtoupper($_GET["turma"]);
    
    if(key_exists($turmaSelec, $turmas)){
        require_once("turma.php");
    }
    else{
        echo "<h1>Turma não identificada</h1>";
    }
?>
</body>
</html>