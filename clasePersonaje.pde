class Personaje {
  PImage finn;
  int fpx, fpy, ftam; // Propiedades (variables)
  
  Personaje() { // Constructor
    ftam = 90;
    fpx = width/2;
    fpy = height-ftam*2; //
  }

  void dibujar() { // Método
    finn=loadImage("finn.png");
    image(finn, fpx, fpy, ftam, ftam*2);
    if (fpx>width) {
      fpx= 0;
    } else if (fpx<0) {
      fpx= width;
    }
  }
  
  void moverDerecha() {
    fpx += 25;
  }
  void moverIzquierda() {
    fpx -= 25;
  }
}
