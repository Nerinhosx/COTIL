<!DOCTYPE html>
<html lang="pt-br">
<head>

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
    </style>
</head>
<body>
    <a href="index.html">HOME</a>
    <hr>

    <h2>Cadastro de Alunos</h2>
    <!-- Form com enctype para indicar que serão enviados dados binários além de textuais -->
    <form method="POST" enctype="multipart/form-data">
        RA:<br>
        <input type="text" size="30" name="ra"><br><br>

        Nome:<br>
        <input type="text" size="30" name="nome"><br><br>
        
        Curso:<br>
        <select name="curso">
            <option></option>
            <option value="Edificações">Edificações</option>
            <option value="Enfermagem">Enfermagem</option>
            <option value="GeoCart">Geodésia e Cartografia</option>
            <option value="Informática">Informática</option>
            <option value="Mecânica">Mecânica</option>
            <option value="Qualidade">Qualidade</option>
        </select><br><br>

        Foto:<br>
        <input type="file" name="foto" accept="image/*"><br><br>

        <input type="submit" value="Cadastrar">
        <hr>
    </form>
</body>
</html>
<?php
    define('TAMANHO_MAXIMO', (2 *1024 *1024)); //Define uma constante para tamanho máximo aceito

    if($_SERVER["REQUEST_METHOD"] === "POST"){
        //Armazenando os dados obtidos em variáveis para manipulá-las
        $ra = $_POST["ra"];
        trim($ra);
        $nome = $_POST["nome"];
        trim($nome);
        $curso = $_POST["curso"];
        trim($curso);

        $uploaddir = 'upload/fotos/'; //Local no qual a foto será salva

        //Código de manipulação da Foto
        $foto = $_FILES['foto'];
        $nomeFoto = $foto['name'];
        $tipoFoto = $foto['type'];
        $tamanhoFoto = $foto['size'];

        //Gerando novo nome para a foto
        $info = new SplFileInfo($nomeFoto);
        $extensaoArquivo = $info->getExtension();
        $novoNomeFoto = $ra . "." . $extensaoArquivo;
        
        if((trim($ra)=="") || (trim($nome)=="")){
            echo "<span id='warning'>RA e nome são obrigatórios!</span>";
        } else if(($nomeFoto != '') && (!preg_match('/^image\/(jpeg|png|gif)$/', $tipoFoto))){
            echo"<span id='error'>Imagem inválida!</span>";
        }else if (($nomeFoto != "") && ($tamanhoFoto > TAMANHO_MAXIMO)){
            echo "<span id='error'>A imagem deve possuir no máximo 2MB</span>";
        } else{
            try{   
                include("conexaoBD.php");

                $stmt = $pdo->prepare("select * from alunos where ra = :ra");
                $stmt->bindParam(":ra", $ra);
                $stmt->execute();

                $rows = $stmt->rowCount();
                if($rows<=0){

                    if(($nomeFoto != "") and move_uploaded_file($_FILES['foto']['tmp_name'], $uploaddir . $novoNomeFoto)){
                        $uploadfile = $uploaddir . $novoNomeFoto;
                    }else{
                        $uploadfile = null;
                        echo "Sem upload de imagem.";
                    }

                    $stmt = $pdo->prepare("insert into alunos (ra, nome, curso, arquivoFoto) values (:ra, :nome, :curso, :foto)");
                    $stmt->bindParam(":ra", $ra);
                    $stmt->bindParam(":nome", $nome);
                    $stmt->bindParam(":curso", $curso);
                    $stmt->bindParam(':foto', $uploadfile);
                    $stmt->execute();
                    echo "<span id='sucess'>Aluno cadastrado com sucesso!</span>";
                }
                else{
                    echo "<span id='error'>Cadastro de aluno falho: RA já cadastrado.</span>";
                }
            }
            catch(PDOException $e){
                echo "Erro:" . $e->getMessage();
            }
            $pdo = null;
        }
    }
?>