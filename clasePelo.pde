class Pelo {
  PImage pelo;
  float px, py, dir; 
  float tam, ftam;
  boolean desactivar;

  Pelo() {
    tam = 55;
    ftam = 90;
    px = random(tam/2, width-tam/2);
    py = random(-150, -tam/2);
    dir = random(5, 15);
    desactivar = false;
  }  

  void dibujar() {
    if (!desactivar) {
      pelo=loadImage("pelo.png");
      image(pelo, px, py, tam, tam*1.5);
    } else {
      py = height; 
      dir = 0;
    }
  }

  void mover() {
    if (py>height-ftam*2) {
      py = random(-200, -ftam/2);
    }
    py+= dir;
  }

  void reventar() {
    desactivar = true;
  }
}
