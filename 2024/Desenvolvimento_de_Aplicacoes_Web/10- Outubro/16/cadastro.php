<?php

    $ra = $_POST["ra"];
    $nome = $_POST["nome"];
    $curso = $_POST["curso"];

    $filename = fopen("alunos.txt", "a+");

    $aluno["ra"] = $ra;
    $aluno["nome"] = $nome;
    $aluno["curso"] = $curso;

    $json = json_encode($aluno);

    fwrite($filename, $json);

    fclose($filename);

    echo "Cadastro efetuado com sucesso!<br><br>";

    echo json_encode($aluno);