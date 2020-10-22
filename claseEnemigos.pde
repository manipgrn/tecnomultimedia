class Enemigos {
  PImage abeja, vaquita;
  float px, py, dir, vpx; 
  float tam, ftam;
  boolean desactivar;

  Enemigos() {
    tam = 90;
    ftam = 90;
    vpx = random(tam/2, width-tam/2);
    px = random(tam/2, width-tam/2);
    py = random(-150, -tam/2);
    dir = random(5, 20);
    desactivar = false;
  }  

  void dibujarAbeja() {
    if (!desactivar) {
      abeja=loadImage("abeja.png");
      image(abeja, px, py, tam, tam);
    } else {
      py = height; 
      dir = 0;
    }
  }
  
  void dibujarVaquita() {
    if (!desactivar) {
      vaquita=loadImage("vaquita.png");
      image(vaquita, vpx, py, tam, tam);
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
