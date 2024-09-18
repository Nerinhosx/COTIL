<!DOCTYPE html>
<html lang="pt-br">
<head>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0"/>
    <link rel="stylesheet" type="text/css" href="Style_fundo_e_texto.css">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Alunos</title>

    <style>
        #sucess{
            color: rgb(139, 232, 44);
            font-weight: bold;
        }

        #error{
            color: red;
            font-weight: bold;
        }

        #warning{
            color: yellow;
            font-weight: bold;
        }

        td{
            padding: 5px;
            color: rgb(0, 193, 249);
        }

        table{
            border-color: rgb(0, 221, 171);
        }
    </style>
</head>
<body>
    <a href="index.html">HOME</a>
    <hr>

    <h2>Consulta de Alunos</h2>
    <form method="POST">
        RA:<br>
        <input type="text" size="10" name="ra"><br><br>

        <input type="submit" value="Consultar">
    </form>

    <hr>

</body>
</html>
<?php
    if($_SERVER["REQUEST_METHOD"] === "POST"){
        
        include("conexaoBD.php");

        if(isset($_POST["ra"]) && ($_POST["ra"]!="")){
            //Código para quando o RA é informado
            $ra = $_POST["ra"];

            $stmt = $pdo->prepare("select * from alunos where ra = :ra");
            $stmt->bindParam(":ra", $ra);
        }
        else{
            //Código para quando o RA não é informado
            $stmt = $pdo->prepare("select * from alunos order by curso, nome");
        }

        try{
            $stmt->execute();

            echo "<form method='post'>";
            echo "<table border='1px' cellspacing='0'>";
            echo "<tr>";
            echo "<th></th>";
            echo "<th>RA</th>";
            echo "<th>Nome</th>";
            echo "<th>Curso</th>";
            echo "</tr>";
            
            while($row=$stmt->fetch()){
                echo "<tr>";
                echo "<td><input type='radio' name='raAluno' value='". $row["ra"] ."'></td>";
                echo "<td>" . $row["ra"] . "</td>";
                echo "<td>" . $row["nome"] . "</td>";
                echo "<td>" . $row["curso"] . "</td>";
                echo "</tr>";
            }
            echo "</table><br>";
            echo "<button type='submit' formaction='exclusao.php'>Excluir Aluno</button>";
            echo "<button type='submit' formaction='edicao.php'>Editar Aluno</button>";
            echo "</form>";
        }
        catch(PDOException $e){
            echo "Erro: " . $e->getMessage();
        }

        $pdo = null;
    }
?>