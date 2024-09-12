class Item{
  String info1="";
  String info2="";
  String info3="";
  String info4="";
  String info5="";

  ItemFull(String i1, String i2, String i3, String i4, String i5){
    info1 = i1;
    info2 = i2;
    info3 = i3;
    info4 = i4;
    info5 = i5;
  }
  
  Item();

  String get getInfo1 => this.info1;

  setInfo1(String info1) => this.info1 = info1;

  get getInfo2 => this.info2;

  setInfo2(String info2) => this.info2 = info2;

  get getInfo3 => this.info3;

  setInfo3(String info3) => this.info3 = info3;

  get getInfo4 => this.info4;

  setInfo4(String info4) => this.info4 = info4;

  get getInfo5 => this.info5;

  setInfo5(String info5) => this.info5 = info5;
}