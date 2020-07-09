PImage inicio;

void inicio() {
  inicio=loadImage("inicio.png");
  image(inicio, 0, 0);
  fill(255);
  textAlign(CENTER, TOP);
  text("Apretá ENTER", width/2, height/2+200 );
}
