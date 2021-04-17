KnapToggle knap10kr = new KnapToggle(50, 50, 200, 100, "10 kr");
KnapToggle knap100kr = new KnapToggle(300, 50, 200, 100, "100 kr");
KnapToggle knap1000kr = new KnapToggle(550, 50, 200, 100, "1000 kr");

Knap knapAddMoney = new Knap(50, 200, 200, 100, "Overfør");
Knap knapAddMoney5 = new Knap(300, 200, 200, 100, "Overfør x5");
Knap knapNulstil = new Knap(550, 200, 200, 100, "Nulstil");

KontoFelt kontoFelt = new KontoFelt(50, 350, 700, 100, 0);

void setup(){
  size(800, 500);
}

void draw(){
  background(55);
  
  knap10kr.display();
  knap100kr.display();
  knap1000kr.display();
  
  knapAddMoney.display();
  knapAddMoney5.display();
  knapNulstil.display();
  
  kontoFelt.display();
}

void mousePressed(){
  knap10kr.registrerTryk();
  knap100kr.registrerTryk();
  knap1000kr.registrerTryk();
  knapAddMoney.registrerTryk();
  knapAddMoney5.registrerTryk();
  knapNulstil.registrerTryk();
  
  if(knapAddMoney.trykket){
    addMoney(1);
  }
  
  if(knapAddMoney5.trykket){
    addMoney(5);
  }
  
  if(knapNulstil.trykket){
    kontoFelt.nulstil();
  }
}

void mouseReleased(){
  knap10kr.registrerRelease();
  knap100kr.registrerRelease();
  knap1000kr.registrerRelease();
  knapAddMoney.registrerRelease();
  knapAddMoney5.registrerRelease();
  knapNulstil.registrerRelease();
}

void addMoney(int times){
  if(knap10kr.trykket){
    kontoFelt.add(times*10f);
  }
  if(knap100kr.trykket){
    kontoFelt.add(times*100f);
  }
  if(knap1000kr.trykket){
    kontoFelt.add(times*1000f);
  }
}
