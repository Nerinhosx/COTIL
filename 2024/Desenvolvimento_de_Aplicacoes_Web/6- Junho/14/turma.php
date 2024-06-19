<h1>Turma: <?= $turmaSelec ?></h1>
<br><br>
Alunos: <br>
<ul>
    <?php
        foreach($turmas[$turmaSelec] as $ra => $alunos){
            echo "<li>" . $ra . " - " . $alunos . "</li>";
        }
    ?>
</ul>