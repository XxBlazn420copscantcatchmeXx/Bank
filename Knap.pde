class Knap extends Komponent{
  boolean trykket = false;
  
  public Knap(float x, float y, float w, float h, String tekst){
    super(x, y, w, h, tekst);
  }
  
  void registrerTryk(){
    if(hovered()){
      trykket = true;
    }
  }
  
  void registrerRelease(){
    trykket = false;
  }

  void display(){
    if(hovered()){
      fill(230);
    }
    else{
      fill(255);
    }
    
    if(trykket){
      stroke(0, 255, 80);
    }
    else{
      stroke(0);
    }
    rect(x, y, w, h);
    super.display();
  }
}
