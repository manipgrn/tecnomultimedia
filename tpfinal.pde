Pantalla aventura;
import ddf.minim.*;
Minim musica;
AudioPlayer player, player2;

void setup() {
  size(800, 600);
  aventura = new Pantalla();
  surface.setResizable(true);
  musica = new Minim(this);
  player = musica.loadFile("juego.mp3");
  player2 = musica.loadFile("fondo.mp3");
}

void draw() {
  aventura.estados();
  if (keyPressed) {
    aventura.deInicioaPresentacion(keyCode);
  }
}

void mousePressed() {
  aventura.cambiarEstado();
}
