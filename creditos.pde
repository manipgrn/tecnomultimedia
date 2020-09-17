String [] textoo = {"Trabajo Práctico número 4", "Martina Pellegrino", "Cursada 2020", "UNLP - Facultad de Artes", "Docente: José L. Bugiolachi"} ;
int num=1;

void creditos() {
  creditos=loadImage("creditos.png");
  atras=loadImage("atras.png");

  image(creditos, 0, 0, width, height);
  creditoss=createFont("Thunderman.ttf", 50);
  textFont(creditoss, 40);
  textAlign(CENTER, TOP);
  fill(0);
  text("Tecnología Multimedial I", width/2, height-width/2-width/9);
  textFont(creditoss, 30);
  
  for (int i=0; i<textoo.length; i += num) {
    textAlign(CENTER, TOP);
    text(textoo[i], width/2, height/2-height/7+i*50);
  }

  image(atras, 0, 550);
}
