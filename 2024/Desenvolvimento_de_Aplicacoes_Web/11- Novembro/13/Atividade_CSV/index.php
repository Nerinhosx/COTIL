<?php
    include("connection.php");

    try{
        $stmt = $pdo->prepare("select * from BioSearch_Animal");
        $stmt->execute();

        $fileCSV = fopen("baseAnimal.csv", "w");

        $titulos = array("Nome Científico", "Nome Popular", "Habitat", "População Atual", "Risco de Extinção", "Hábito", "Alimentação", "Ambiente", "Tamanho", "Filo", "Classe", "Ordem", "Família", "Gênero", "Espécie", "CRBio");

        $animalData = [];

        fputcsv($fileCSV, $titulos);

        while($readRow = $stmt->fetch()){
            $nameC = $readRow["NomeCientifico"];
            $nameP = $readRow["NomePopular"];
            $habitat = $readRow["Habitat"];
            $populacao = $readRow["PopulacaoAtual"];
            $risco = $readRow["RiscoExtincao"];
            $habito = $readRow["Habito"];
            $alimentacao = $readRow["Alimentacao"];
            $ambiente = $readRow["Ambiente"];
            $tamanho = $readRow["Tamanho"];
            $filo = $readRow["Filo"];
            $classe = $readRow["Classe"];
            $ordem = $readRow["Ordem"];
            $familia = $readRow["Familia"];
            $genero = $readRow["Genero"];
            $especie = $readRow["Especie"];
            $codBio = $readRow["CodBio"];

            $row = array($nameC, $nameP, $habitat, $populacao, $risco, $habito, $alimentacao, $ambiente, $tamanho, $filo, $classe, $ordem, $familia, $genero, $especie, $codBio);

            $rowCSV = array($row);

            $animalData[] = $row;

            foreach($rowCSV as $rowCSVRead){
                fputcsv($fileCSV, $rowCSVRead);
            }
        }

        fclose($fileCSV);
    } catch (PDOException $e){
        echo $e->getMessage();
    }

    $pdo = null;
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Controle de Animais</title>

    <style>
        body{
            background-color: #815a44;
        }

        table{
            border: 2px solid #97ce00;

            display: flex;
            justify-content: start;
            align-items: center;

            border-radius: 5px;
        }

        th{
            background-color: #00b627;
            color: #cbf48d;

            border-radius: 3px;
        }

        td{
            background-color: #c2eb53;
            color: #183518;

            border: 2px solid #97ce00;

            border-radius: 3px;

            padding: 5px;
        }

        h1{
            color: #c2eb53;
            text-align: center;

            background-color: #311a04;

            padding: 10px
        }        
    </style>

</head>
<body>
    <main>
        <h1>Tabela de Controle de Animais</h1>
        <br><br>
    
        <table>
                <tr>
                    <?php
                        foreach($titulos as $titulo){
                            echo "<th>";
                            echo $titulo;
                            echo "</th>";
                        }
                    ?>
                </tr>
                <?php
                    foreach($animalData as $dataRow){
                        echo "<tr>";
                        foreach($dataRow as $data){
                            echo "<td>" . $data . "</td>";
                        }
                        echo "</tr>";
                    }
                ?>
        </table>
    </main>
</body>
</html>