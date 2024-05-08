<!--localhost/COTIL/2024/Desenvolvimento_de_Aplicacoes_Web/5- Maio/08/exemploString.php-->

<?php
    $texto = "  cotil - unicamp  ";

    //trim - Retira espaço no inicio e final de uma string
    echo "-" . trim($texto) . "-" . "<br>";

    //Retira espaço em branco (ou outros caracteres) do início da string
    echo "-" . ltrim($texto) . "-" . "<br>";

    //rtrim - Retira espaço em branco (ou outros caracteres) do final da string
    echo "-" . rtrim($texto) . "-" . "<br>";

    //tudo maiúsculo
    echo strtoupper($texto) . "<br>";

    //tudo minúsculo
    echo strtolower($texto) . "<br>";

    //1as letras maiúsculas 
    echo ucwords($texto);

    //retorna o tamanho da string
    echo strlen($texto) . "<br>";

    //quebra a string a cada 3 caracteres
    $str = str_split($texto,3);
    print_r($str);

    echo "<br>";

    //encontra a posição da primeira ocorreência de uma string
    echo strpos($texto, "unicamp") . "<br>";

    $email = "nerson@com.gmail.br";

    //retorna a string após o caracter informado "@"
    echo strchr($email, "@") . "<br>";

    //retorna a string antes do caracter informado "@"
    echo strchr($email, "@", true) . "<br>";

    //retorna uma parte de uma string
    echo substr("abcdef", 1) . "<br>";  //bcdef
    echo substr("abcdef", 1,3) . "<br>";  //bcd

    echo str_replace("i", "X", $texto) . "<br>";

    //casting
    $valor = "0"; // $valor é string (ASCII 48)
    $valor += 2; // $valor é agora um int (2)
    $valor = $valor + 1.3; //$valor agora é um float (3.3)
    echo $valor;
    echo "<br>";

    $senha = "minhasenha";

    /*
    md5 - gera uma cópia criptografada - mão única
    ** algoritmo de hash de 128 bits - 32 caracteres
    ** -> problema: para a mesma string, sempre o mesmo resultado. Fácil achar na internet listas com resultados.
    ** -> solução: concatenar um salt
    */

    echo "<br> *** md5 *** <br>";

    $x = md5($senha);
    echo($x);
    echo "<br>";

    if(md5($senha)==$x){
        echo "Senha ok!<br><br>";
    }

    //com salt - Uma string de salt para base da encriptação
    $salt = "c0t1lUn1camp";
    $senha = $senha . $salt;
    echo "Senha: " . $senha;
    echo "<br>";

    $x = md5($senha);
    echo $x;
    echo "<br>";

    if(md5($senha)==$x){
        echo "Senha ok!<br><br>";
    }

    /*
        ** sha1 - gera uma cópia criptografada - mão única
        ** 160 bits - 40 caracteres
        ** considerar a mesma regra de segurança com o uso de salt, abordada no md5
    */
    echo "<br> *** sha1 *** <br>";
    $x = sha1($senha);
    echo $x;
    echo "<br>";

    if(sha1($senha)==$x){
        echo "Senha ok!<br><br>";
    }

    /*
        crypt - gera uma cópia criptografada
        ** retornará uma string criptografada usando o algoritmo de encriptação
        Unix Standard DES-based ou algoritmos alternativos disponíveis no sistema
    */
    echo "<br> *** crypt *** <br>";
    
    /*  O 2º parâmetro é o salt, que se não fornecido, será gerado randomicamente
        pelo PHP cada vez que chamar essa função
    */
    //$x = crypt($senha, "");
    $x = crypt($senha, $salt);
    echo "Criptografada: " . $x . "<br>";

    if(crypt($senha) == $x){
        echo "Senha ok!<br><br>";
    }

    /* BASE64
    É um método para codificação dos dados para transferência na
    Internet. Ela é uma codificação de mão dupla, e usando uma
    segunda função você pode descobrir a string original de uma string codificada.
    */

    $string = "O rato roeu a roupa do rei de Roma";
    $codificada = base64_encode($string);
    echo "Resultado da codificação usando base64: " . $codificada;

    echo "<br>";

    $original = base64_decode($codificada);
    echo "Resultado da decodificação usando base64: " . $original;
    // Note que $original vai ser idêntica a $string
?>