PImage presentacion;
int btnx, btny, bancho, balto;
int btnx2, btny2, bancho2, balto2;

void presentacion() {
  presentacion=loadImage("presentacion.jpg");
  image(presentacion, 0, 0);
  fill(255);
  textos=createFont("Thunderman.ttf", 50);
  textFont(textos, 30);
  textAlign(CENTER, TOP);
  fill(255);
  rect(btnx, btny, bancho, balto);
  rect(btnx2, btny2, bancho2, balto2);
  fill(0);
  text("Comenzar", 150, 480);
  text("Créditos", 650, 480);
}
