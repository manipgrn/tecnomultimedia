class Estados {
  Textos narracion;
  int num=1;
  PImage inicio, presentacion, sig, atras;
  PImage [] escena = new PImage[45];
  String [] textoo = {"Trabajo Práctico Final", "Martina Pellegrino", "Cursada 2020", "UNLP - Facultad de Artes", "Docente: José L. Bugiolachi"} ;

  Estados() {
    atras=loadImage("atras.png");
    sig=loadImage("sig.png");
    inicio=loadImage("inicio.png");
    presentacion=loadImage("presentacion.jpg");
    for (int i=0; i<escena.length; i++) {
      escena[i] = loadImage("escena"+i+".png");
    }
    narracion = new Textos();
  }

  void creditos() {
    image(escena[24], 0, 0, width, height);
    image(atras, 0, height-height/12);
    for (int i=0; i<textoo.length; i += num) {
      textSize(30);
      textAlign(CENTER, TOP);
      text(textoo[i], width/2, height/2-height/7+i*height/12);
    }
    narracion.texto("Tecnología Multimedial I", width/2, height-width/2-width/9, 0, 40);
  }

  void inicio() {
    player2.play();
    image(inicio, 0, 0, width, height);
    textAlign(CENTER, TOP);
    narracion.texto("Apretá CONTROL", width/2, height/2+height/3, 255, height/12);
  }

  void presentacion() {
    image(presentacion, 0, 0, width, height);
    fill(255);
    rect(width/16, height-height/3+height/12, width/4, (width/4)/2);
    rect(width/2+width/4-width/16, height-height/3+height/12, width/4, (width/4)/2);
    textAlign(CENTER);
    narracion.texto("Comenzar", width/8+width/16, height-height/6+height/90, 0, 30);
    narracion.texto("Créditos", width-width/4+width/16, height-height/6+height/90, 0, 30);
  }

  void comenzar() {
    image(escena[0], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
  }

  void finnyjake() {
    image(escena[1], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
    textAlign(LEFT);
    narracion.texto("Finn y Jake se encuentran en el bosque...", 20, height/12, 255, 30);
  }

  void ruido() {
    image(escena[2], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
    narracion.texto("... y de repente escuchan un ruido que les llama", 20, height/12, 0, 30);
    narracion.texto("la atención", 20, height/6, 0, 30);
  }

  void bruja() {
    image(escena[3], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
    narracion.texto("Aparece una bruja que les pregunta si ellos son", 20, height/12, 0, 30);
    narracion.texto("héroes", 20, height/6, 0, 30);
  }

  void pregunta() {
    image(escena[4], 0, 0, width, height);
    textAlign(LEFT);
    narracion.texto("A lo que ellos responden...", 20, height/12, 0, 30);
    fill(255);
    rect(width/16, height/6, height/6, (height/6)/2);
    rect(width/4, height/6, height/6, (height/6)/2);
    textAlign(CENTER);
    narracion.texto("Si", width/8, height/6+(height/60*3), 0, 30);
    narracion.texto("No", width/4+width/16, height/6+(height/60*3), 0, 30);
  }

  void si() {
    image(escena[5], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
    image(atras, 0, height-height/12);
    textAlign(LEFT);
    narracion.texto("Entonces la bruja les pide que le consigan cabello de", 20, height/12, 0, 30);
    narracion.texto("princesa porque se estaba quedando calva", 20, height/6, 0, 30);
  }

  void desconfio() {
    image(escena[6], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
    narracion.texto("Pero Finn y Jake desconfían y se niegan", 20, height/12, 0, 30);
  }

  void jaula() {
    image(escena[7], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
    narracion.texto("Y la bruja con sus poderes atrapa a Jake", 20, height/12, 0, 30);
  }

  void no() {
    image(escena[8], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
    image(atras, 0, height-height/12);
    textAlign(LEFT);
    narracion.texto("Pero ella no les cree", 20, height/12, 0, 30);
  }

  void amenaza() {
    image(escena[9], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
    fill(0);
    narracion.texto("Amenaza: si Finn no le trae cabello de princesa ella", 20, height/12, 0, 30);
    narracion.texto("matará a Jake", 20, height/6, 0, 30);
  }

  void duda() {
    image(escena[10], 0, 0, width, height);
    textAlign(LEFT);
    narracion.texto("Finn piensa a qué princesa puede pedirle primero...", 20, height/12, 255, 30);
    rect(width/16, height/6, height/3, (height/3)/2);
    rect(width/4+width/8, height/6, height/3, (height/3)/2);
    rect(width/2+width/4-width/16, height/6, height/3, (height/3)/2);
    textAlign(CENTER);
    narracion.texto("P. Músculos", width/8+width/16, height/4, 0, 30);
    narracion.texto("P. Grumosa", width/2, height/4, 0, 30);
    narracion.texto("Dulce P.", width-width/8-width/16, height/4, 0, 30);
  }

  void pmusculos() {
    image(escena[11], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
    image(atras, 0, height-height/12);
  }

  void pmusculospreg() {
    image(escena[12], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
    textAlign(LEFT);
    narracion.texto("Finn le pregunta a la princesa si puede darle un poco", 20, height/12, 255, 30);
    narracion.texto("de su cabello", 20, height/6, 255, 30);
  }
  void pmusculosgustar() {
    image(escena[13], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
    narracion.texto("Pero ella cree que Finn gusta de ella", 20, height/12, 0, 30);
  }

  void pmusculoshuir() {
    image(escena[14], 0, 0, width, height);
    narracion.texto("Y Finn huye, y decide ir a ver a", 20, height/12, 255, 30);
    rect(width/8, height/4-height/20, height/3, (height/3)/2);
    rect(width/2, height/4-height/20, height/3, (height/3)/2);
    narracion.texto("P. Grumosa", width/50, height/3-(height/60*2), 0, 30);
    narracion.texto("Dulce P.", width/2+width/16, height/3-(height/60*2), 0, 30);
  }

  void pgrumosa() {
    image(escena[15], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
    image(atras, 0, height-height/12);
  }

  void pgrumosa2() {
    image(escena[16], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
  }

  void pgrumosa3() {
    image(escena[17], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
    textAlign(LEFT);
    narracion.texto("Finn ve que la princesa tiene cabello", 20, height/12, 0, 30);
  }

  void pgrumosa4() {
    image(escena[18], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
    textAlign(LEFT);
    narracion.texto("e intenta cortarlo", 20, height/12, 255, 30);
  }

  void pgrumosa5() {
    image(escena[19], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
    textAlign(LEFT);
    narracion.texto("pero Grumosa despierta, y cree que Finn gusta de", 20, height/12, 255, 30);
    narracion.texto("ella", 20, height/6, 255, 30);
  }

  void pgrumosahuir() {
    image(escena[14], 0, 0, width, height);
    textAlign(LEFT);
    narracion.texto("Y Finn huye, y decide ir a ver a", 20, height/12, 255, 30);
    rect(width/8, height/4-height/20, height/3, (height/3)/2);
    rect(width/2, height/4-height/20, height/3, (height/3)/2);
    narracion.texto("P. Músculos", 115, 180, 0, 30);
    narracion.texto("Dulce P.", width/2+width/16, 180, 0, 30);
  }

  void dulcep() {
    image(escena[20], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
    image(atras, 0, height-height/12);
  }

  void dulcep2() {
    image(escena[21], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
  }

  void dulcep3() {
    image(escena[22], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
    textAlign(LEFT);
    narracion.texto("Finn le pregunta a la princesa si puede darle un poco", 20, height/12, 255, 30);
    narracion.texto("de su cabello", 20, height/6, 255, 30);
  }

  void dulcep4() {
    image(escena[23], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
    narracion.texto("Y la princesa le dice que tiene que recogerlo", 20, height/12, 255, 30);
    narracion.texto("del jardín", 20, height/6, 255, 30);
  }
  void finn2() {
    image(escena[26], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
  }

  void finn3() {
    image(escena[27], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
  }

  void finn4() {
    image(escena[28], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
    narracion.texto("Pero la bruja no está convencida porque el cabello", 20, height/12, 255, 30);
    narracion.texto("es de chicle", 20, height/6, 255, 30);
  }

  void finn5() {
    image(escena[29], 0, 0, width, height);
    narracion.texto("Y vuelve a amenazar con matar a Jake, pero Finn...", 20, height/12, 255, 30);
    rectMode(CORNER);
    rect(width/8, height/5, width/4+width/32, (width/4+width/32)/2);
    rect(width/2, height/5, width/4+width/32, (width/4+width/32)/2);
    narracion.texto("Se enoja", 145, 185, 0, 30);
    narracion.texto("Le ofrece su", 415, 160, 0, 30);
    narracion.texto("cabello", 455, height/3, 0, 30);
  }

  void enojo() {
    image(escena[30], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
    image(atras, 0, height-height/12);
  }

  void lucha2() {
    image(escena[32], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
    narracion.texto("Y ataca a la bruja", 20, height/12, 0, 30);
  }

  void lucha3() {
    image(escena[33], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
    narracion.texto("Y logra derrotarla", 20, height/12, 0, 30);
  }

  void final1() {
    image(escena[34], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
    narracion.texto("Entonces consigue salvar a Jake", 20, height/12, 255, 30);
  }

  void final2() {
    image(escena[35], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
    narracion.texto("Y ambos vuelven a su casa", 20, height/12, 0, 30);
  }

  void fin() {
    image(escena[36], 0, 0, width, height);
    fill(255);
    rectMode(CORNER);
    rect(width/16, height-height/3+height/12, height/3, (height/3)/2);
    rect(width/2, height-height/3+height/12, height/3, (height/3)/2);
    narracion.texto("FIN", width/8, height/2, 0, height/12);
    narracion.texto("Inicio", width/16+40, height-height/6, 0, 40);
    narracion.texto("Créditos", width/2+20, height-height/6, 0, 40);
  }

  void pelo() {
    image(escena[37], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
    image(atras, 0, height-height/12);
  }

  void pelo2() {
    image(escena[38], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
  }

  void pelo3() {
    image(escena[39], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
  }

  void pelo4() {
    image(escena[40], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
  }

  void pelo5() {
    image(escena[41], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
  }

  void pelo6() {
    image(escena[42], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
    narracion.texto("La bruja acepta", 20, height/12, 0, 30);
  }

  void pelo7() {
    image(escena[43], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
    narracion.texto("Y libera a Jake", 20, height/12, 255, 30);
  }

  void despedida() {
    image(escena[44], 0, 0, width, height);
    image(sig, width-width/8, height-height/12);
    narracion.texto("Entonces Finn y Jake se despiden y van en busca", 20, height/12, 255, 30);
    narracion.texto("de aventuras", 20, height/6, 255, 30);
  }
}
