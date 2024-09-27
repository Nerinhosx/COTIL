class AlunoFlutter{
  int _ra = 0;
  String _nome="";

  AlunoFlutter();

  AlunoFlutter.fromJson(Map <String, dynamic> json):
    _ra = json["ra"],
    _nome = json["name"]
  ;

  int get ra => this._ra;

  set ra(int value) => this._ra = value;

  String get nome => this._nome;

  set nome(String value) => this._nome = value;
}