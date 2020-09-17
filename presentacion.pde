void presentacion() {
  presentacion=loadImage("presentacion.jpg");
  image(presentacion, 0, 0, width, height);
  fill(255);
  textos=createFont("Thunderman.ttf", 50);
  textFont(textos, 30);
  textAlign(CENTER, TOP);
  fill(255);
  rect(width/16, height-balto-50, bancho, balto);
  rect(width-width/16-bancho2, height-balto-50, bancho2, balto2);
  fill(0);
  text("Comenzar", height/4, width/2+width/10);
  text("Créditos", height+height/11, width/2+width/10);
}
