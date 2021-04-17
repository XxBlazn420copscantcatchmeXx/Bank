class KnapToggle extends Knap{
  public KnapToggle(float x, float y, float w, float h, String tekst){
    super(x, y, w, h, tekst);
  }
  
  void registrerTryk(){
    if(hovered()){
      trykket = !trykket;
    }
  }
  
  void registrerRelease(){
  }
}
