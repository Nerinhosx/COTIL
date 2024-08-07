<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRUD - Controle de alunos</title>
</head>
<body>
    <h2>Sistema acadêmico - login</h2>
    
    <div>
        <form method="post">
            Login:<br>
            <input type="text" size="10" name="login">

            <br><br>
            Senha:<br>
            <input type="password" size="10" name="senha">

            <br><br>
            <input type="submit" value="👍">
            <hr>
        </form>
    </div>
</body>
</html>

<?php
    if($_SERVER["REQUEST_METHOD"] == "POST"){
        $login = $_POST["login"];
        $senha = $_POST["senha"];

        if((trim($login) != "") && (trim($senha) != "")){
            try{
                include("conexaoBD.php");

                $stmt = $pdo->prepare("select * from usuarios where login = :login and password = :senha");
                $stmt->bindParam(":login", $login);
                $stmt->bindParam(":senha", $senha);

                $stmt->execute();
                $rows = $stmt->rowCount();

                if($rows>0){
                    session_start();
                    
                    $_SESSION["logado"] = true;

                    $userData = $stmt->fetch();
                    $tipo = $userData["tipo"];

                    if($tipo == "PROFESSOR"){
                        header("location: professor.php");
                    }
                    else if($tipo == "ALUNO") {
                        header("location: aluno.php");
                    }
                    else if($tipo == "DIRETOR"){
                        header("location: diretor.php");
                    }
                } else{
                    echo "Login Inválido";
                }
            } catch(PDOException $e){
                echo 'Erro: ' . $e->getMessage();
            }

            $pdo = Null;
        } else{
            echo "Informe o login e a senha!";
        }
    } 
?>