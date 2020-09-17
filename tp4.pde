PImage atras, sig, creditos, inicio, presentacion;
PImage [] escena = new PImage[45];

PFont texto, textos, narracion, creditoss;

String estado;
String [] narracionn = new String[30];

int bancho, balto;
int bancho2, balto2;

void setup() {
  size(800, 600);
  surface.setResizable(true);
  texto=createFont("Thunderman.ttf", 50);
  textFont(texto, 50);

  estado="inicio";

  bancho = width/4;
  balto = bancho/2;
  bancho2 = width/4;
  balto2 = bancho/2;

  for (int i=0; i<escena.length; i++) {
    escena[i] = loadImage("escena"+i+".png");
  }

  narracionn[0] = "Finn y Jake se encuentran en el bosque...";
  narracionn[1] = "... y de repente escuchan un ruido que les llama la atención";
  narracionn[2] = "Aparece una bruja que les pregunta si ellos son héroes";
  narracionn[3] = "A lo que ellos responden...";
  narracionn[4] = "Entonces la bruja les pide que le consigan cabello de princesa porque se estaba quedando calva";
  narracionn[5] = "Pero Finn y Jake desconfían y se niegan";
  narracionn[6] = "Y la bruja con sus poderes atrapa a Jake";
  narracionn[7] = "Pero ella no les cree";
  narracionn[8] = "Amenaza: si Finn no le trae cabello de princesa ella matará a Jake";
  narracionn[9] = "Finn piensa a qué princesa puede pedirle primero...";
  narracionn[10] = "Finn le pregunta a la princesa si puede darle un poco de su cabello";
  narracionn[11] = "Pero ella cree que Finn gusta de ella";
  narracionn[12] = "Y Finn huye, y decide ir a ver a";
  narracionn[13] = "Finn ve que la princesa tiene cabello";
  narracionn[14] = "e intenta cortarlo";
  narracionn[15] = "pero Grumosa despierta, y cree que Finn gusta de ella";
  narracionn[16] = "Y la princesa amablemente se lo da";
  narracionn[17] = "Y Finn se lo lleva a la bruja";
  narracionn[18] = "Pero la bruja no está convencida porque el cabello es de chicle";
  narracionn[19] = "Y vuelve a amenazar con matar a Jake, pero Finn...";
  narracionn[20] = "Y ataca a la bruja";
  narracionn[21] = "Y logra derrotarla";
  narracionn[22] = "Entonces consigue salvar a Jake";
  narracionn[23] = "Y ambos vuelven a su casa";
  narracionn[24] = "La bruja acepta";
  narracionn[25] = "Y libera a Jake";
  narracionn[26] = "Entonces Finn y Jake se despiden y van en busca de aventuras";
}

void draw() {
  println(estado);

  if (estado == "inicio") {
    inicio();
  }
  if (estado == "presentacion" ) {
    presentacion();
  }
  if (estado == "comenzar" ) {
    comenzar();
  }
  if (estado == "creditos" ) {
    creditos();
  }
  if (estado == "finnyjake" ) {
    image(escena[1], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
    fill(255);
    textAlign(LEFT);
    text(narracionn[0], 20, 50);
  }
  if (estado == "ruido" ) {
    image(escena[2], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
    fill(0);
    textAlign(LEFT);
    text(narracionn[1], 20, 20, 700, 300);
  }
  if (estado == "bruja" ) {
    image(escena[3], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
    fill(0);
    textAlign(LEFT);
    text(narracionn[2], 20, 20, 700, 300);
  }
  if (estado == "pregunta" ) {
    image(escena[4], 0, 0, width, height);
    fill(0);
    textAlign(LEFT);
    text(narracionn[3], 20, 50);
    fill(255);
    rect(height/12, height/8, height/12, height/12);
    fill(255);
    rect(height/6+height/12, height/8, height/12, height/12);
    fill(0);
    text("Si", 60, 110);
    text("No", 160, 110);
  }
  if (estado=="si") {
    rect(0, 0, 100, 50);
    atras=loadImage("atras.png");
    image(escena[5], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
    image(atras, 0, 550);
    fill(0);
    textAlign(LEFT);
    text(narracionn[4], 20, 20, 700, 300);
  }
  if (estado=="desconfio") {
    image(escena[6], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
    fill(0);
    textAlign(LEFT);
    text(narracionn[5], 20, 50);
  }
  if (estado=="jaula") {
    image(escena[7], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
    fill(0);
    text(narracionn[6], 20, 50);
  }
  if (estado=="no") {
    atras=loadImage("atras.png");
    image(escena[8], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
    image(atras, 0, 550);
    fill(0);
    textAlign(LEFT);
    text(narracionn[7], 20, 50);
  }
  if (estado=="amenaza") {
    image(escena[9], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
    fill(0);
    text(narracionn[8], 20, 20, 700, 300);
  }
  if (estado=="duda") {
    image(escena[10], 0, 0, width, height);
    fill(255);
    textAlign(LEFT);
    text(narracionn[9], 20, 50);
    fill(255);
    rect(50, 70, 200, 50);
    rect(300, 70, 200, 50);
    rect(550, 70, 200, 50);
    fill(0);
    textAlign(CENTER, CENTER);
    text("P. Músculos", 150, 90);
    text("P. Grumosa", 400, 90);
    text("Dulce P.", 650, 90);
  }
  if (estado=="pmusculos") {
    image(escena[11], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
    image(atras, 0, 550);
  }
  if (estado=="pmusculospreg") {
    image(escena[12], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
    fill(255);
    textAlign(LEFT);
    text(narracionn[10], 20, 20, 600, 300);
  }
  if (estado=="pmusculosgustar") {
    image(escena[13], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
    fill(0);
    textAlign(LEFT);
    text(narracionn[11], 20, 50);
  }
  if (estado=="pmusculoshuir") {
    image(escena[14], 0, 0, width, height);
    fill(255);
    textAlign(LEFT);
    text(narracionn[12], 20, 50);
    rect(100, 120, 200, 50);
    rect(400, 120, 200, 50);
    fill(0);
    text("P. Grumosa", 110, 155);
    text("Dulce P.", 440, 155);
  }
  if (estado=="pgrumosa") {
    atras=loadImage("atras.png");
    image(escena[15], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
    image(atras, 0, 550);
  }
  if (estado=="pgrumosa2") {
    image(escena[16], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
  }
  if (estado=="pgrumosa3") {
    image(escena[17], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
    fill(0);
    textAlign(LEFT);
    text(narracionn[13], 35, 50);
  }
  if (estado=="pgrumosa4") {
    image(escena[18], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
    fill(255);
    textAlign(LEFT);
    text(narracionn[14], 20, 50);
  }
  if (estado=="pgrumosa5") {
    image(escena[19], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
    fill(255);
    textAlign(LEFT);
    text(narracionn[15], 20, 20, 600, 300);
  }
  if (estado=="pgrumosahuir") {
    image(escena[14], 0, 0, width, height);
    fill(255);
    textAlign(LEFT);
    text(narracionn[12], 20, 20, 600, 300);
    rect(100, 120, 200, 50);
    rect(400, 120, 200, 50);
    fill(0);
    text("P. Músculos", 110, 155);
    text("Dulce P.", 440, 155);
  }
  if (estado=="dulcep") {
    atras=loadImage("atras.png");
    image(escena[20], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
    image(atras, 0, 550);
  }
  if (estado=="dulcep2") {
    image(escena[21], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
  }
  if (estado=="dulcep3") {
    image(escena[22], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
    fill(255);
    textAlign(LEFT);
    text(narracionn[10], 20, 20, 600, 300);
  }
  if (estado=="dulcep4") {
    image(escena[23], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
    fill(255);
    textAlign(LEFT);
    text(narracionn[16], 20, 20, 600, 300);
  }
  if (estado=="dulcep5") {
    image(escena[24], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
  }
  if (estado=="finn") {
    image(escena[25], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
    fill(255);
    textAlign(LEFT);
    text(narracionn[17], 20, 20, 600, 300);
  }
  if (estado=="finn2") {
    image(escena[26], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
  }
  if (estado=="finn3") {
    image(escena[27], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
  }
  if (estado=="finn4") {
    image(escena[28], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
    fill(255);
    textAlign(LEFT);
    text(narracionn[18], 20, 20, 600, 300);
  }
  if (estado=="finn5") {
    image(escena[29], 0, 0, width, height);
    fill(255);
    textAlign(LEFT);
    text(narracionn[19], 20, 50);
    fill(255);
    rect(height/6, height/5, height/6+height/6, width/16);
    rect(width/2, height/5, height/2+height/20, width/16);
    fill(0);
    text("Se enoja", 130, 155);
    text("Le ofrece su cabello", 415, 155);
  }
  if (estado=="enojo") {
    atras=loadImage("atras.png");
    image(escena[30], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
    image(atras, 0, 550);
  }
  if (estado=="lucha2") {
    image(escena[32], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
    fill(0);
    textAlign(LEFT);
    text(narracionn[20], 20, 50);
  }
  if (estado=="lucha3") {
    image(escena[33], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
    fill(0);
    textAlign(LEFT);
    text(narracionn[21], 20, 50);
  }
  if (estado=="final") {
    image(escena[34], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
    fill(255);
    textAlign(LEFT);
    text(narracionn[22], 20, 50);
  }
  if (estado=="final2") {
    image(escena[35], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
    fill(0);
    textAlign(LEFT);
    text(narracionn[23], 20, 50);
  }
  if (estado=="fin") {
    image(escena[36], 0, 0, width, height);
    text("Fin", 150, height/2);
    fill(255);
    rect(width/16, height-height/6, (height-height/6)/2, width/10);
    rect(width/2, height-height/6, (height-height/6)/2, width/10);
    fill(0);
    textAlign(LEFT);
    textFont(texto, 50);
    text("Inicio", 110, 555);
    text("Créditos", 420, 555);
  }
  if (estado=="pelo") {
    atras=loadImage("atras.png");
    image(escena[37], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
    image(atras, 0, 550);
  }
  if (estado=="pelo2") {
    image(escena[38], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
  }
  if (estado=="pelo3") {
    image(escena[39], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
  }
  if (estado=="pelo4") {
    image(escena[40], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
  }
  if (estado=="pelo5") {
    image(escena[41], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
  }
  if (estado=="pelo6") {
    image(escena[42], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
    textAlign(LEFT);
    text(narracionn[24], 20, 50);
  }
  if (estado=="pelo7") {
    image(escena[43], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
    fill(255);
    textAlign(LEFT);
    text(narracionn[25], 20, 50);
  }
  if (estado=="despedida") {
    image(escena[44], 0, 0, width, height);
    image(sig, width-width/16, height-width/16);
    fill(255);
    textAlign(LEFT);
    text(narracionn[26], 20, 20, 600, 300);
  }
}

boolean botOver(int px, int py, int ancho, int alto) {
  if (mouseX>px && mouseX< px+ancho && mouseY>py && mouseY<py+alto) {
    return true;
  }
  return false;
}

void keyPressed() {
  if (keyCode == ENTER || keyCode == RETURN ) {
    estado = "presentacion";
  }
}

void mousePressed() {
  if (botOver(width/16, height-balto-50, width/4, width/8) && estado=="presentacion") {
    estado = "comenzar";
  }
  if (botOver(width-width/16-bancho2, height-balto-50, width/4, width/8) && estado=="presentacion") {
    estado = "creditos";
  }
  if (botOver(0, height-50, width/16, width/16) && estado=="creditos") {
    estado = "presentacion";
    presentacion();
  }
  if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="comenzar") {
    estado="finnyjake";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="finnyjake") {
    estado="ruido";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="ruido") {
    estado="bruja";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="bruja") {
    estado="pregunta";
  } else if (botOver(height/12, height/8, height/12, height/12) && estado=="pregunta") {
    estado="si";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="si") {
    estado="desconfio";
  } else if (botOver(0, height-50, width/16, width/16) && estado=="si") {
    estado = "pregunta";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="desconfio") {
    estado="jaula";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="jaula") {
    estado="amenaza";
  } else if (botOver(height/6+height/12, height/8, height/12, height/12) && mouseY<120 && estado=="pregunta") {
    estado="no";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="no") {
    estado="jaula";
  } else if (botOver(0, height-50, width/16, width/16) && estado=="no") {
    estado = "pregunta";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="jaula") {
    estado="amenaza";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="amenaza") {
    estado="duda";
  } else if (mouseX>50 && mouseX<200 && mouseY>70 && mouseY<120 && estado=="duda") {
    estado="pmusculos";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="pmusculos") {
    estado="pmusculospreg";
  } else if (botOver(0, height-50, width/16, width/16) && estado=="pmusculos") {
    estado = "duda";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="pmusculospreg") {
    estado="pmusculosgustar";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="pmusculosgustar") {
    estado="pmusculoshuir";
  } else if (mouseX>100 && mouseX<300 && mouseY>120 && mouseY<170 && estado=="pmusculoshuir") {
    estado="pgrumosa";
  } else if (mouseX>400 && mouseX<600 && mouseY>120 && mouseY<170 && estado=="pmusculoshuir") {
    estado="dulcep";
  } else if (mouseX>300 && mouseX<500 && mouseY>70 && mouseY<120 && estado=="duda") {
    estado="pgrumosa";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="pgrumosa") {
    estado="pgrumosa2";
  } else if (botOver(0, height-50, width/16, width/16) && estado=="pgrumosa") {
    estado = "duda";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="pgrumosa2") {
    estado="pgrumosa3";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="pgrumosa3") {
    estado="pgrumosa4";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="pgrumosa4") {
    estado="pgrumosa5";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="pgrumosa5") {
    estado="pgrumosahuir";
  } else if (mouseX>100 && mouseX<300 && mouseY>120 && mouseY<170 && estado=="pgrumosahuir") {
    estado="pmusculos";
  } else if (mouseX>400 && mouseX<600 && mouseY>120 && mouseY<170 && estado=="pgrumosahuir") {
    estado="dulcep";
  } else if (mouseX>550 && mouseX<750 && mouseY>70 && mouseY<120 && estado=="duda") {
    estado="dulcep";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="dulcep") {
    estado="dulcep2";
  } else if (botOver(0, height-50, width/16, width/16) && estado=="dulcep") {
    estado = "duda";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="dulcep2") {
    estado="dulcep3";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="dulcep3") {
    estado="dulcep4";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="dulcep4") {
    estado="dulcep5";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="dulcep5") {
    estado="finn";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="finn") {
    estado="finn2";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="finn2") {
    estado="finn3";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="finn3") {
    estado="finn4";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="finn4") {
    estado="finn5";
  } else if (botOver(height/6, height/5, height/6+height/6, width/16) && estado=="finn5") {
    estado="enojo";
  } else if (botOver(0, height-50, width/16, width/16) && estado=="enojo") {
    estado = "finn5";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="enojo") {
    estado="lucha2";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="lucha2") {
    estado="lucha3";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="lucha3") {
    estado="final";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="final") {
    estado="final2";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="final2") {
    estado="fin";
  } else if (botOver(width/16, height-height/6, (height-height/6)/2, width/10) && estado=="fin") {
    estado="inicio";
  } else if (botOver(width/2, height-height/6, (height-height/6)/2, width/10) && estado=="fin") {
    estado="creditos";
  } else if (botOver(width/2, height/5, height/2+height/20, width/16) && estado=="finn5") {
    estado="pelo";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="pelo") {
    estado="pelo2";
  } else if (botOver(0, height-50, width/16, width/16) && estado=="pelo") {
    estado = "finn5";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="pelo2") {
    estado="pelo3";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="pelo3") {
    estado="pelo4";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="pelo4") {
    estado="pelo5";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="pelo5") {
    estado="pelo6";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="pelo6") {
    estado="pelo7";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="pelo7") {
    estado="despedida";
  } else if (botOver(width-width/16, height-width/16, width/16, width/16) && estado=="despedida") {
    estado="fin";
  }
}
