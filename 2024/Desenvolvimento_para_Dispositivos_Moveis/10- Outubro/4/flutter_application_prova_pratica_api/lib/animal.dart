class Animal{
  String _nomeC = "";
  String _nomeP = "";
  String _riscoExt = "";
  String _habito = "";

  Animal();

  Animal.fromJson(Map <String, dynamic> json):
    _nomeC = json["nomeCientifico"],
    _nomeP = json["nomePopular"],
    _riscoExt = json["riscoExtincao"],
    _habito = json["habito"]
  ;

  String get nomeC => this._nomeC;

  set nomeC( value) => this._nomeC = value;

  String get nomeP => this._nomeP;

  set nomeP( value) => this._nomeP = value;

  String get riscoExt => this._riscoExt;

  set riscoExt( value) => this._riscoExt = value;

  String get habito => this._habito;

  set habito( value) => this._habito = value;
}