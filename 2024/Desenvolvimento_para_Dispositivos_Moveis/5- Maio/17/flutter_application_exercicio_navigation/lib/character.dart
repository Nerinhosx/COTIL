class Character{
  String img = "";
  String desc = "";
  List<String> liHab = [];

  String get getImg => this.img;

  set setImg(String img) => this.img = img;

  get getDescr => this.desc;

  set setDescr(String desc) => this.desc = desc;

  List<String> get getLiHab => this.liHab;

  set setLiHab(List<String> liHab) => this.liHab = liHab;

  Character(String img, String desc /*List<String> liHab*/){
    this.img = img;
    this.desc = desc;
  }
}