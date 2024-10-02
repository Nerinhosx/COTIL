<!DOCTYPE html>
<html lang="pt-br">
<head>

    <link rel="stylesheet" type="text/css" href="Style_fundo_e_texto.css">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Atualização de Alunos</title>
</head>
<body>
    <nav>
        <a href="index.html">HOME</a> |
        <a href="consultaPorLink.php">Consulta</a>
    </nav>
    <hr>

    <h1>Edição de Alunos</h1>
    <?php
        define('TAMANHO_MAXIMO', (2 *1024 *1024)); //Define uma constante para tamanho máximo aceito

        if($_SERVER["REQUEST_METHOD"] === "POST"){
            $ra = $_POST["ra"];
            $nome = $_POST["nome"];
            $curso = $_POST["curso"];
            
            //Local no qual a foto será salva
            $uploaddir = 'upload/fotos/';

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

                    if(($nomeFoto != "") and move_uploaded_file($_FILES['foto']['tmp_name'], $uploaddir . $novoNomeFoto)){
                        $uploadfile = $uploaddir . $novoNomeFoto;
                    }else{
                        $uploadfile = null;
                    }
                    $stmt = $pdo->prepare("update alunos set nome = :nome, curso = :curso, arquivoFoto = :foto where ra = :ra");
                    $stmt->bindParam(":nome", $nome);
                    $stmt->bindParam(":curso", $curso);
                    $stmt->bindParam(':foto', $uploadfile);
                    $stmt->bindParam(":ra", $ra);
                    $stmt->execute();

                    echo "Os dados do aluno de RA $ra foram alterados!";
                }catch(PDOException $e){
                    echo "Error: " . $e->getMessage();
                }
            }
            $pdo = null;
        }
    ?>
</body>
</html>