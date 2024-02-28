<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Incluindo PHP</title>
</head>
<body>
    <?php

        include("functions.php");

        $media = calcMedia(9.0, 10.0);
        echo $media;

        echo "<br><br>";

        soma(1, 2, 3);
        
    ?>
</body>
</html>