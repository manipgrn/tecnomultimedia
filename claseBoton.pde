class Boton {
  int bx, by, tam;
  String estado, texto;

  Boton(int x, int y, int tam_) {
    bx=x;
    by=y;
    tam=tam_;
  }

  void dibujar() {
    fill(255);
    rectMode(CENTER);
    rect(bx, by, tam, tam/2);
  }

  boolean botOver(int bx_, int by_, int tam_) {
    bx=bx_;
    by=by_;
    tam=tam_;
    boolean presionado = mouseX>bx && mouseX< bx+tam && mouseY>by && mouseY<by+tam/2; 
    return presionado;
  }
}
