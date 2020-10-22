class Bonus {
  PImage bonus;
  float px, py, dir; 
  float tam, ftam;
  boolean desactivar;

  Bonus() {
    tam = 50;
    ftam = 90;
    px = random(tam/2, width-tam/2);
    py = random(-150, -tam/2);
    dir = random(6, 9);
    desactivar = false;
  }  

  void dibujar() {
    if (!desactivar) {
      bonus=loadImage("bonus.png");
      image(bonus, px, py, tam, tam*1.5);
    } else {
      py = height; 
      dir = 0;
    }
  }

  void mover() {
    if (py>height-ftam*2) {
      py = random(-200, -tam/2);
    }
    py+= dir;
  }

  void reventar() {
    desactivar = true;
  }
}
