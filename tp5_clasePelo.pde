class Pelo {
  PImage pelo, bonus;
  float px, py, dir; 
  float tam, ftam;
  boolean desactivar;

  Pelo() {
    tam = 55;
    ftam = 90;
    px = random(tam/2, width-tam/2);
    py = random(-height/4, -tam/2);
    dir = random(2, 5);
    desactivar = false;
    bonus=loadImage("bonus.png");
    pelo=loadImage("pelo.png");
  }  

  void dibujar() {
    if (!desactivar) {
      image(pelo, px, py, tam, tam*1.5);
    } else {
      py = height; 
      dir = 0;
    }
  }
  
  void dibujarBonus() {
    if (!desactivar) {
      image(bonus, px, py, tam, tam*1.5);
    } else {
      py = height; 
      dir = 0;
    }
  }

  void mover() {
    if (py>height) {
      py = random(-height/3, -ftam/2);
    }
    py+= dir;
  }

  void reventar() {
    desactivar = true;
  }
}
