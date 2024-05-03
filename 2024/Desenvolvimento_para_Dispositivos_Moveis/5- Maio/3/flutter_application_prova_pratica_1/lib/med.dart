// ignore_for_file: unnecessary_this, prefer_initializing_formals
class Med{
  String name = "";
  int crm = 0;
  List<String> formacao = [];
  String emCall = "";

  Med(String name, int crm, List<String> formacao, String emCall){
    this.name = name;
    this.crm = crm;
    this.formacao = formacao;
    this.emCall = emCall;
  }

  String get getName => this.name;

  set setName(String name) => this.name = name;

  get getCrm => this.crm;

  set setCrm( crm) => this.crm = crm;

  get getFormacao => this.formacao;

  set setFormacao( formacao) => this.formacao = formacao;

  get getEmCall => this.emCall;

  set setEmCall( emCall) => this.emCall = emCall;
}