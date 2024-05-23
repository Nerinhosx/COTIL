class Character{
  String img = "";
  String desc = "";

  String get getImg => this.img;

  set setImg(String img) => this.img = img;

  get getDescr => this.desc;

  set setDescr(String desc) => this.desc = desc;

  Character(String img, String desc){
    this.img = img;
    this.desc = desc;
  }
}