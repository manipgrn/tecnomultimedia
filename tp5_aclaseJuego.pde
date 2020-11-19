class Juego {
  Textos narracion;
  Personaje Finn;
  Boton botonSiguiente;
  Boton botonReinicio;
  Fondos fondo;
  String estado;
  PImage ganar, sig;
  PFont texto;
  int cantE = 4;
  int cantP = 12;
  int cantB = 3;
  int contador, vidas;
  Enemigos [] enemigos = new Enemigos[cantE];
  Pelo [] pelo = new Pelo[cantP];
  Pelo [] bonus = new Pelo[cantB];

  Juego() {
    estado="instrucciones";
    vidas = 3;
    fondo = new Fondos();
    Finn = new Personaje();
    narracion = new Textos();
    botonSiguiente = new Boton(width-width/8, height-height/12, height/6);
    botonReinicio = new Boton(width/2, height-height/6, 250);
    for (int i=0; i<enemigos.length; i++) {
      enemigos[i] = new Enemigos();
    }
    for (int i=0; i<pelo.length; i++) {
      pelo[i] = new Pelo();
    }
    for (int i=0; i<bonus.length; i++) {
      bonus[i] = new Pelo();
    }
    ganar=loadImage("ganar.png");
    sig=loadImage("sig.png");
  }

  void estados() {
    if (estado.equals("instrucciones")) {
      instrucciones();
    }
    if (estado.equals("juego")) {
      dibujarJuego();
    }
    if (estado.equals("ganar")) {
      ganar();
    }
    if (estado.equals("perder")) {
      perder();
    }
    if (contador==20 || contador>20 && estado.equals("juego")) {
      estado="ganar";
    }
    if (vidas==0 || vidas<0 && estado.equals("juego")) {
      estado="perder";
    }
    println (estado);
  }

  void instrucciones() {
    fondo.Ins();
    textAlign(CENTER, TOP);
    narracion.texto("INSTRUCCIONES", width/2, height/4, 0, 45);
    narracion.texto("Movete con las flechas para", width/2, height/3+height/12, 0, 30);
    narracion.texto("recoger 20 piezas de cabello,", width/2, height/2, 0, 30);
    narracion.texto("¡pero cuidado con los insectos!", width/2, height/2+height/12, 0, 40);
  }

  void dibujarJuego() {
    if (player2.isPlaying()) {
      player2.pause();
    }
    player.play();
    fondo.dibujarFondo();
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
      bonus[i].dibujarBonus();
      bonus[i].mover();
    }

    perderVidas();
    recogerPelo();
    recogerBonus();

    textSize(40);
    fill(0);
    text("Pelo: " + contador, width-180, height/12);
    text("Quedan " + vidas + " vidas", width/4, height/12);
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
        contador += 3;
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
    if (player.isPlaying()) {
      player.pause();
    } else {
      player2.loop();
    }
    image(ganar, 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
    textAlign(LEFT);
    narracion.texto("¡Lograste juntar todo el cabello!", 20, height/12, 255, 30);
    narracion.texto("Entonces Finn se lo lleva a la bruja", 20, height/6, 255, 30);
  }

  void perder() {
    if (player.isPlaying()) {
      player.pause();
    }
    background(0);
    textAlign(CENTER);
    narracion.texto("No lograste juntar todo el cabello", width/2, height/2, 255, 40);
    narracion.texto("necesario para salvar a Jake", width/2, height/2+height/12, 255, 40);
    rectMode(CENTER);
    botonReinicio.dibujar();
    narracion.texto("Comenzar de nuevo", width/2, 510, 0, 25);
  }

  void reset() {
    for (int i=0; i<enemigos.length; i++) {
      enemigos [i]= new Enemigos();
    }
    for (int i=0; i<pelo.length; i++) {
      pelo [i]= new Pelo();
    }
    for (int i=0; i<bonus.length; i++) {
      bonus[i] = new Pelo();
    }
  }

  void cambiarEstadoJuego() { 
    if (botonSiguiente.botOver(width-width/8, height-height/12, height/6) && estado.equals("instrucciones")) {
      estado="juego";
    }
    if (botonReinicio.botOver(width/2, height-height/6, 250) && estado.equals("perder")) {
      contador=0;
      vidas=3;
      reset();
      estado="juego";
      if (player.isPlaying()) {
        player.pause();
      }
    }
  }
}
