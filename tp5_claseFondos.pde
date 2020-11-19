class Fondos {
  PImage fondo, escena24, sig;

  Fondos () {
    fondo=loadImage("fondo.png");
    escena24=loadImage("escena24.png");
    sig=loadImage("sig.png");
  }

  void dibujarFondo() {
    image(fondo, 0, 0, width, height);
  }

  void Ins() {
    image(escena24, 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
  }
}
