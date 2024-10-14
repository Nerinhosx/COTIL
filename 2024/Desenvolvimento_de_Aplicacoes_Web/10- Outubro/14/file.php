
<?php

/** file - cada linha do arquivo se torna um índice do array **/

$arquivo = file("log.txt");
for($i=0; $i<count($arquivo); $i++) {
	echo "Linha ".($i+1).": ".$arquivo[$i] . "<br>";
}
