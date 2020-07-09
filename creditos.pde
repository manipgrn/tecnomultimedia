PImage creditos;
PFont creditoss, letrac;

void creditos() {
  background(150);

  creditos=loadImage("creditos.png");
  atras=loadImage("atras.png");

  image(creditos, 0, 0);
  creditoss=createFont("Thunderman.ttf", 50);
  textFont(creditoss, 40);
  textAlign(CENTER, TOP);
  fill(0);
  text("Tecnología Multimedia I", width/2, height-480 );
  letrac=createFont("Thunderman.ttf", 50);
  textFont(letrac, 30);
  text("Trabajo Práctico número 3", width/2, height-400 );
  text("Martina Pellegrino", width/2, height-350 );
  text("Cursada 2020", width/2, height-300 );
  text("UNLP - Facultad de Artes", width/2, height-250 );
  text("Docente: José L. Bugiolachi", width/2, height-200 );

  image(atras, 0, 550);
}
