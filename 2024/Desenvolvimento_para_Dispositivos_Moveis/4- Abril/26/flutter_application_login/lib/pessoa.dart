// ignore_for_file: prefer_initializing_formals, unnecessary_this

class Pessoa{
  String login = "";
  String senha = "";

  Pessoa(String login, String senha){
    this.login = login;
    this.senha = senha;
  }

  String get getLogin => this.login;

  set setLogin(String login) => this.login = login;

  get getSenha => this.senha;

  set setSenha( senha) => this.senha = senha;
}