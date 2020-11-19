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
    py = random(-height/4, -tam/2);
    dir = random(2, 5);
    desactivar = false;
    abeja=loadImage("abeja.png");
    vaquita=loadImage("vaquita.png");
  }  

  void dibujarAbeja() {
    if (!desactivar) {
      image(abeja, px, py, tam, tam);
    } else {
      py = height;
      dir = 0;
    }
  }

  void dibujarVaquita() {
    if (!desactivar) {
      image(vaquita, vpx, py, tam, tam);
    } else {
      py = height; 
      dir = 0;
    }
  }

  void mover() {
    if (py>height) {   
      py = random(-height/4, -tam/2);
    }
    py+= dir;
  }

  void reventar() {
    desactivar = true;
  }
}
