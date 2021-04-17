class KontoFelt extends Komponent{
  float balance;
  
  public KontoFelt(float x, float y, float w, float h, float balance){
    super(x, y, w, h, balance + " kr");
    this.balance = balance;
  }
  
  void add(float v){
    balance += v;
    tekst = balance + " kr";
  }
  
  void nulstil(){
    balance = 0;
    tekst = balance + " kr";
  }
  
  void display(){
    fill(255);
    stroke(0);
    rect(x, y, w, h);
    super.display();
  }
}
