class Character{
  String name = "";
  String img = "";
  String desc = "";
  List<String> liHab = [];

  String getImg() => this.img;

  setImg(String img) => this.img = img;

  String getDescr() => this.desc;

  setDescr(String desc) => this.desc = desc;

  List<String> getLiHab() => this.liHab;

  setLiHab(List<String> liHab){ this.liHab = liHab; }

  String getName() => this.name;

  setName(String name) => this.name = name;

  Character(String name, String img, String desc){
    this.name = name;
    this.img = img;
    this.desc = desc;
  }
}