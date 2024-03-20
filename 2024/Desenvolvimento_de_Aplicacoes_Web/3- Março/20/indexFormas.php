<?php
    if($_SERVER["REQUEST_METHOD"] === "GET"){

    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formas🦚</title>

    <style>
        body{
            display: flex;
            justify-content: center;
            align-items: center;
            height: 98vh;
            width: 98vw;
            flex-direction: column;

            background-color: lightcyan;

            font-size: 26px;
        }

        .box{
            border: inset black 1px;
            background-color: lightsalmon;

            padding: 10px;
            border-radius: 10px;
        }
    </style>

</head>
<body>
    <div class="box">
        <form method="POST">
            <label>Altura:</label><br>
            <input type="text" name="alt" required>

            <br><br>

            <label>Largura:</label><br>
            <input type="text" name="lar" required>

            <br><br>

            <label>Profundidade:</label><br>
            <input type="text" name="pro" required>

            <br><br>

            <input type="submit" value="Calcular área">
            <input type="submit" value="Calcular volume">
        </form>

        <hr>

        <span id="ar">
            Área:
        </span>

        <span id="vol">
            Volume:
        </span>
    </div>
</body>
</html>