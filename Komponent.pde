class Komponent{
  float x, y, w, h;
  String tekst;
  
  public Komponent(float x, float y, float w, float h, String tekst){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.tekst = tekst;
  }
  
  void display(){
    textSize(32);
    fill(0);
    text(tekst, x + 0.5f * w - textWidth(tekst) * 0.5f, y + 16 + 0.5 * h); 
  }
  
  boolean hovered()  {
    return mouseX >= x && mouseX <= x+w && mouseY >= y && mouseY <= y+h;
  }
}
