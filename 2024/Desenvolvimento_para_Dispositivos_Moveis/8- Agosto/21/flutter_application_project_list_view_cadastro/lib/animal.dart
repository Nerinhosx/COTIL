class Animal{
  String nomeC = "";
  String nomeP = "";
  int pop = 0;
  String habito = "";
  
  get getNomeC => this.nomeC;

  set setNomeC( nomeC) => this.nomeC = nomeC;

  get getNomeP => this.nomeP;

  set setNomeP( nomeP) => this.nomeP = nomeP;

  get getPop => this.pop;

  set setPop( pop) => this.pop = pop;

  get getHabito => this.habito;

  set setHabito( habito) => this.habito = habito;

  Animal(this.nomeC, this.nomeP, this.pop, this.habito);
}