<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Alunos</title>

    <style>
        body{
            color: rgb(255, 48, 64);
            background-color: rgb(15, 25, 35);
        }
    </style>
</head>
<body>
    <a href="index.html">HOME</a>
    <hr>

    <h2>Cadastro de Alunos</h2>
    <form method="POST">
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

        <input type="submit" value="Cadastrar">
        <hr>
    </form>
</body>
</html>