/*
    En este juego de recolección de objetos el objetivo es que Finn recoja 20 "pelos" para poder llevarle
    a la bruja y poder rescatar a su amigo Jake. El juego reemplazaría dos pantallaa en la que Finn le pide 
    cabello a la Dulce Princesa.
*/

Juego game;

void setup() {
  size(800, 600);
  game = new Juego();
}

void draw() {
  game.dibujarJuego();
  if (keyPressed) {
    game.moverPersonaje(keyCode);
  }
  game.ganar();
  game.perder();
}
