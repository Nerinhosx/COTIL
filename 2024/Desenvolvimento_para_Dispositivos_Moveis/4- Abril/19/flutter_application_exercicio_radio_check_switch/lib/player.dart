// ignore_for_file: prefer_initializing_formals, unnecessary_this

class Player{
  String name = "";
  int id = 0;
  String func = "";
  List<String> listModes = [];
  String aqc = "";

  Player(String name, int id, String func, List<String> listModes, String aqc){
    this.name = name;
    this.id = id;
    this.func = func;
    this.listModes = listModes;
    this.aqc = aqc;
  }
  
  String get getName => this.name;

  set setName(String name) => this.name = name;

  get getId => this.id;

  set setId( id) => this.id = id;

  get getFunc => this.func;

  set setFunc( func) => this.func = func;

  get getListModes => this.listModes;

  set setListModes( listModes) => this.listModes = listModes;

  get getAqc => this.aqc;

  set setAqc( aqc) => this.aqc = aqc;

  
}