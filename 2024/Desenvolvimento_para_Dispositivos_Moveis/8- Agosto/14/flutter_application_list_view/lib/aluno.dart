// ignore_for_file: prefer_initializing_formals

class Aluno{
  String name="";
  int ra=0;

  String get getName => name;

  set setName(String name) => this.name = name;

  get getRa => ra;

  set setRa( ra) => this.ra = ra;

  Aluno(String name, int ra){
    this.name = name;
    this.ra = ra;
  }
}