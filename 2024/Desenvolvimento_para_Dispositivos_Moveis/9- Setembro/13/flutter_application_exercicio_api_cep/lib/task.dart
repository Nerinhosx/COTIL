class Task{
  String cep = "";
  String logradouro = "";
  String complemento = "";
  String unidade = "";
  String bairro = "";
  String localidade = "";
  String uf = "";
  String estado = "";
  String regiao = "";
  String ibge = "";
  String gia = "";
  String ddd = "";
  String siafi = "";

  Task();

  Task.fromJson(Map<String, dynamic> json):
    cep = json['cep'],
    logradouro = json['logradouro'],
    complemento = json['complemento'],
    unidade = json['unidade'],
    bairro = json['bairro'],
    localidade = json['localidade'],
    uf = json['uf'],
    estado = json['estado'],
    regiao = json['regiao'],
    ibge = json['ibge'],
    gia = json['gia'],
    ddd = json['ddd'],
    siafi = json['siafi']
  ;
}