class Aluno{
  //Atributos da classe
  int _ra = 0;
  String _nome = "";

  //Construtor da classe
  Aluno(this._ra, this._nome);

  //Getters and Setters
  int get ra => this._ra;

  set ra(int value) => this._ra = value;

  get nome => this._nome;

  set nome( value) => this._nome = value;
}