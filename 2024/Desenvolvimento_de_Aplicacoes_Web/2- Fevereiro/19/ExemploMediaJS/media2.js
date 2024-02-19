var calc = document.querySelector("#Calcular");
calc.addEventListener("click", calcularMedia);

function calcularMedia() {

    var n1 = document.getElementById("nota1").value;

    var n2 = document.querySelector("#nota2").value;

    if ((n1.trim() == "") || (n2.trim() == "")) {

        document.querySelector("#media").innerHTML = "";
        document.querySelector("#situacao").innerHTML = "";
        document.querySelector("#erro").innerHTML = "<br>As duas notas são obrigatórias! <br><br>";
        document.querySelector("#erro").style.color = "red";

    } else {

        document.querySelector("#erro").innerHTML = "";

        var media = (parseFloat(n1) + parseFloat(n2)) / 2;

        document.querySelector("#media").innerHTML = "<b>Média:" + media.toFixed(1) + "</b>";

        document.querySelector("#situacao").style.color = "white";
        if (media >= 6.0) {
            document.querySelector("#situacao").textContent = "Situação:  APROVADO";
            document.querySelector("#situacao").style.backgroundColor = "green";
        } else {
            document.querySelector("#situacao").textContent = "Situação: REPROVADO";
            document.querySelector("#situacao").style.backgroundColor = "red";
        }

    } //else

} //function