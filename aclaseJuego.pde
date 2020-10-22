class Juego {
  PImage fondo, ganar;
  PFont texto;
  int cantE = 5;
  int cantP = 12;
  int cantB = 3;
  int contador, vidas;
  Enemigos [] enemigos = new Enemigos[cantE];
  Pelo [] pelo = new Pelo[cantP];
  Bonus [] bonus = new Bonus[cantB];
  Personaje Finn;

  Juego() {
    vidas = 3;
    Finn = new Personaje();
    for (int i=0; i<enemigos.length; i++) {
      enemigos[i] = new Enemigos();
    }
    for (int i=0; i<pelo.length; i++) {
      pelo[i] = new Pelo();
    }
    for (int i=0; i<bonus.length; i++) {
      bonus[i] = new Bonus();
    }
  }

  void dibujarJuego() {
    fondo=loadImage("fondo.png");
    image(fondo, 0, 0, width, height);
    Finn.dibujar();
    for (int i=0; i<cantE; i++) {
      enemigos[i].dibujarAbeja();
      enemigos[i].dibujarVaquita();
      enemigos[i].mover();
    }
    for (int i=0; i<cantP; i++) {
      pelo[i].dibujar();
      pelo[i].mover();
    }
    for (int i=0; i<cantB; i++) {
      bonus[i].dibujar();
      bonus[i].mover();
    }

    perderVidas();
    recogerPelo();
    recogerBonus();

    texto=createFont("Thunderman.ttf", 50);
    textFont(texto, 30);
    fill(0);
    text("Pelo: " + contador, width-180, 50);
    text("Quedan " + vidas + " vidas", 50, 50);
  }

  void perderVidas() {
    for (int i=0; i<cantE; i++) {
      boolean contacto = enemigos[i].px>Finn.fpx && enemigos[i].px<Finn.fpx+Finn.ftam 
        && enemigos[i].py>Finn.fpy && enemigos[i].py<Finn.fpy+Finn.ftam*2;
      if (contacto) {
        vidas --;
        enemigos[i].reventar();
        background(255, 255, 0);
      }
    }
    for (int i=0; i<cantE; i++) {
      boolean contacto = enemigos[i].vpx>Finn.fpx && enemigos[i].vpx<Finn.fpx+Finn.ftam 
        && enemigos[i].py>Finn.fpy && enemigos[i].py<Finn.fpy+Finn.ftam*2;
      if (contacto) {
        vidas --;
        enemigos[i].reventar();
        background(255, 255, 0);
      }
    }
  }

  void recogerPelo() {
    for (int i=0; i<cantP; i++) {
      boolean contacto = pelo[i].px>Finn.fpx && pelo[i].px<Finn.fpx+Finn.ftam 
        && pelo[i].py>Finn.fpy && pelo[i].py<Finn.fpy+Finn.ftam*2;
      if (contacto) {
        contador ++;
        pelo[i].reventar();
      }
    }
  }

  void recogerBonus() {
    for (int i=0; i<cantB; i++) {
      boolean contacto = bonus[i].px>Finn.fpx && bonus[i].px<Finn.fpx+Finn.ftam 
        && bonus[i].py>Finn.fpy && bonus[i].py<Finn.fpy+Finn.ftam*2;
      if (contacto) {
        contador ++;
        contador ++;
        contador ++;
        bonus[i].reventar();
      }
    }
  }

  void moverPersonaje(int tecla) {
    if (tecla==RIGHT) {
      Finn.moverDerecha();
    }
    if (tecla==LEFT) {
      Finn.moverIzquierda();
    }
  }

  void ganar() {
    if (contador==20) {
      ganar=loadImage("ganar.png");
      image(ganar, 0, 0, width, height);
      fill(255);
      textAlign(CENTER);
      text("Lograste juntar todo el cabello", width/2, height/2);
    }
  }

  void perder() {
    if (vidas==0 || vidas<0) {
      background(0);
      fill(255);
      textAlign(CENTER);
      text("No lograste juntar todo el cabello", width/2, height/2);
      text("necesario para salvar a Jake", width/2, height/2+50);
      text("Comenzar de nuevo", width/2, height-100);
    }
  }
}
