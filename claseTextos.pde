class Textos {
  PFont texto;
  
  Textos() {
    texto=createFont("Thunderman.ttf", 50);
    textFont(texto, 30);
  }
  
  void texto (String texto, float x, float y, int colorf, int size) {
    fill(colorf);
    textSize(size);
    text(texto, x, y);
  }
}
