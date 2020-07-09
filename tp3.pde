PImage finnyjake, ruido, bruja, pregunta, rtasi, negacion, jaula, rtano, amenaza, duda, atras;
PImage pmusculos, pmusculos2, pmusculos3, pmusculos4, pgrumosa, pgrumosa2, pgrumosa3;
PImage pgrumosa4, pgrumosa5, pgrumosahuir, dulcep, dulcep2, dulcep3, dulcep4, dulcep5;
PImage finn, finn2, finn3, finn4, finn5, enojo, lucha, lucha2, lucha3, finall, finall2, fin;
PImage pelo, pelo2, pelo3, pelo4, pelo5, pelo6, pelo7, despedida; 
PFont texto, textos, narracion;
String estado;

void setup() {
  size(800, 600);
  texto=createFont("Thunderman.ttf", 50);
  textFont(texto, 50);

  estado="inicio";

  bancho = 200;
  balto = bancho/2;
  btnx = 50;
  btny = height - balto-50;

  bancho2 = 200;
  balto2 = bancho/2;
  btnx2 = 750-bancho2;
  btny2 = height - balto-50;
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
    narracion=createFont("Thunderman.ttf", 50);
    textFont(narracion, 30);
    finnyjake=loadImage("finnyjake.png");
    image(finnyjake, 0, 0);
    image(sig, 750, 550);
    fill(255);
    text("Finn y Jake se encuentran en el bosque...", width/2, height-480 );
  }
  if (estado == "ruido" ) {
    narracion=createFont("Thunderman.ttf", 10);
    textFont(narracion, 30);
    ruido=loadImage("ruido.png");
    image(ruido, 0, 0);
    image(sig, 750, 550);
    fill(255);
    textAlign(CENTER, CENTER);
    text("... y de repente escuchan un ruido", 270, 30);
    text("que les llama la atención", 200, 80);
  }
  if (estado == "bruja" ) {
    narracion=createFont("Thunderman.ttf", 10);
    textFont(narracion, 30);
    bruja=loadImage("bruja.png");
    image(bruja, 0, 0);
    image(sig, 750, 550);
    fill(0);
    textAlign(CENTER, CENTER);
    text("Aparece una bruja que les pregunta", 290, 30);
    text("si ellos son héroes", 160, 80);
  }
  if (estado == "pregunta" ) {
    narracion=createFont("Thunderman.ttf", 10);
    textFont(narracion, 30);
    pregunta=loadImage("pregunta.png");
    image(pregunta, 0, 0);
    fill(0);
    textAlign(CENTER, CENTER);
    text("A lo que ellos responden...", 200, 30);
    fill(255);
    rect(50, 70, 50, 50);
    fill(255);
    rect(150, 70, 50, 50);
    fill(0);
    text("Si", 75, 90);
    text("No", 175, 90);
  }
  if (estado=="si") {
    rect(0, 0, 100, 50);
    rtasi=loadImage("rtasi.png");
    atras=loadImage("atras.png");
    image(rtasi, 0, 0);
    image(sig, 750, 550);
    image(atras, 0, 550);
    narracion=createFont("Thunderman.ttf", 50);
    textFont(narracion, 30);
    fill(0);
    text("Entonces la bruja les pide que le consigan cabello", 360, 30);
    text("de princesa porque se estaba quedando calva", 340, 70);
  }
  if (estado=="desconfio") {
    negacion=loadImage("negacion.png");
    image(negacion, 0, 0);
    image(sig, 750, 550);
    fill(0);
    text("Pero Finn y Jake desconfían y se niegan", 360, 30);
  }
  if (estado=="jaula") {
    jaula=loadImage("jaula.png");
    image(jaula, 0, 0);
    image(sig, 750, 550);
    fill(0);
    text("Y la bruja con sus poderes atrapa a Jake", 360, 30);
  }
  if (estado=="no") {
    rtano=loadImage("rtano.png");
    atras=loadImage("atras.png");
    image(rtano, 0, 0);
    image(sig, 750, 550);
    image(atras, 0, 550);
    fill(0);
    text("Pero ella no les cree", 360, 30);
  }
  if (estado=="amenaza") {
    amenaza=loadImage("amenaza.png");
    image(amenaza, 0, 0);
    image(sig, 750, 550);
    fill(0);
    text("Amenaza: si Finn no le trae cabello de princesa", 360, 30);
    text("ella matará a Jake", 160, 70);
  }
  if (estado=="duda") {
    narracion=createFont("Thunderman.ttf", 10);
    textFont(narracion, 30);
    duda=loadImage("duda.png");
    image(duda, 0, 0);
    fill(255);
    text("Finn piensa a qué princesa puede pedirle primero...", 375, 30);
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
    pmusculos=loadImage("pmusculos.png");
    atras=loadImage("atras.png");
    image(pmusculos, 0, 0);
    image(sig, 750, 550);
    image(atras, 0, 550);
  }
  if (estado=="pmusculospreg") {
    narracion=createFont("Thunderman.ttf", 10);
    textFont(narracion, 30);
    pmusculos2=loadImage("pmusculos2.png");
    image(pmusculos2, 0, 0);
    image(sig, 750, 550);
    fill(255);
    text("Finn le pregunta a la princesa si", 250, 30);
    text("puede darle un poco de su cabello", 250, 80);
  }
  if (estado=="pmusculosgustar") {
    narracion=createFont("Thunderman.ttf", 10);
    textFont(narracion, 30);
    pmusculos3=loadImage("pmusculos3.png");
    image(pmusculos3, 0, 0);
    image(sig, 750, 550);
    fill(0);
    text("Pero ella cree que Finn gusta de ella", 375, 30);
  }
  if (estado=="pmusculoshuir") {
    narracion=createFont("Thunderman.ttf", 10);
    textFont(narracion, 30);
    pmusculos4=loadImage("pmusculos4.png");
    image(pmusculos4, 0, 0);
    fill(255);
    text("Y Finn huye, y decide ir a ver a", 360, 50);
    rect(100, 120, 200, 50);
    rect(400, 120, 200, 50);
    fill(0);
    text("P. Grumosa", 200, 140);
    text("Dulce P.", 500, 140);
  }
  if (estado=="pgrumosa") {
    pgrumosa=loadImage("pgrumosa.png");
    atras=loadImage("atras.png");
    image(pgrumosa, 0, 0);
    image(sig, 750, 550);
    image(atras, 0, 550);
  }
  if (estado=="pgrumosa2") {
    pgrumosa2=loadImage("pgrumosa2.png");
    image(pgrumosa2, 0, 0);
    image(sig, 750, 550);
  }
  if (estado=="pgrumosa3") {
    narracion=createFont("Thunderman.ttf", 10);
    textFont(narracion, 30);
    pgrumosa3=loadImage("pgrumosa3.png");
    image(pgrumosa3, 0, 0);
    image(sig, 750, 550);
    fill(0);
    text("Finn ve que la princesa tiene cabello", 360, 50);
  }
  if (estado=="pgrumosa4") {
    narracion=createFont("Thunderman.ttf", 10);
    textFont(narracion, 30);
    pgrumosa4=loadImage("pgrumosa4.png");
    image(pgrumosa4, 0, 0);
    image(sig, 750, 550);
    fill(255);
    text("e intenta cortarlo", 360, 50);
  }
  if (estado=="pgrumosa5") {
    narracion=createFont("Thunderman.ttf", 10);
    textFont(narracion, 30);
    pgrumosa5=loadImage("pgrumosa5.png");
    image(pgrumosa5, 0, 0);
    image(sig, 750, 550);
    fill(255);
    text("pero Grumosa despierta, y cree que Finn gusta de ella", 400, 50);
  }
  if (estado=="pgrumosahuir") {
    narracion=createFont("Thunderman.ttf", 10);
    textFont(narracion, 30);
    pgrumosahuir=loadImage("pmusculos4.png");
    image(pgrumosahuir, 0, 0);
    image(sig, 750, 550);
    fill(255);
    text("Y Finn huye, y decide ir a ver a", 360, 50);
    rect(100, 120, 200, 50);
    rect(400, 120, 200, 50);
    fill(0);
    text("P. Músculos", 200, 140);
    text("Dulce P.", 500, 140);
  }
  if (estado=="dulcep") {
    dulcep=loadImage("dulcep.PNG");
    atras=loadImage("atras.png");
    image(dulcep, 0, 0);
    image(sig, 750, 550);
    image(atras, 0, 550);
  }
  if (estado=="dulcep2") {
    dulcep2=loadImage("dulcep2.png");
    image(dulcep2, 0, 0);
    image(sig, 750, 550);
  }
  if (estado=="dulcep3") {
    narracion=createFont("Thunderman.ttf", 10);
    textFont(narracion, 30);
    dulcep3=loadImage("dulcep3.png");
    image(dulcep3, 0, 0);
    image(sig, 750, 550);
    fill(255);
    textAlign(CENTER, CENTER);
    text("Finn le pide un poco de su cabello", 360, 50);
  }
  if (estado=="dulcep4") {
    narracion=createFont("Thunderman.ttf", 10);
    textFont(narracion, 30);
    dulcep4=loadImage("dulcep4.png");
    image(dulcep4, 0, 0);
    image(sig, 750, 550);
    fill(255);
    textAlign(CENTER, CENTER);
    text("Y la princesa amablemente se lo da", 360, 50);
  }
  if (estado=="dulcep5") {
    dulcep5=loadImage("dulcep5.png");
    image(dulcep5, 0, 0);
    image(sig, 750, 550);
  }
  if (estado=="finn") {
    narracion=createFont("Thunderman.ttf", 10);
    textFont(narracion, 30);
    finn=loadImage("finn.png");
    image(finn, 0, 0);
    image(sig, 750, 550);
    fill(255);
    textAlign(CENTER, CENTER);
    text("Y Finn se lo lleva a la bruja", 280, 50);
  }
  if (estado=="finn2") {
    finn2=loadImage("finn2.png");
    image(finn2, 0, 0);
    image(sig, 750, 550);
  }
  if (estado=="finn3") {
    finn3=loadImage("finn3.png");
    image(finn3, 0, 0);
    image(sig, 750, 550);
  }
  if (estado=="finn4") {
    narracion=createFont("Thunderman.ttf", 10);
    textFont(narracion, 30);
    finn4=loadImage("finn4.png");
    image(finn4, 0, 0);
    image(sig, 750, 550);
    fill(255);
    textAlign(CENTER, CENTER);
    text("Pero la bruja no está convencida", 280, 50);
    text("porque el cabello es de chicle", 280, 90);
  }
  if (estado=="finn5") {
    narracion=createFont("Thunderman.ttf", 10);
    textFont(narracion, 30);
    finn5=loadImage("finn5.png");
    image(finn5, 0, 0);
    fill(255);
    textAlign(CENTER, CENTER);
    text("Y vuelve a amenazar con matar a Jake, pero Finn...", 400, 50);
    fill(255);
    rect(100, 120, 200, 50);
    rect(400, 120, 320, 50);
    fill(0);
    text("Se enoja", 200, 140);
    text("Le ofrece su cabello", 565, 140);
  }
  if (estado=="enojo") {
    enojo=loadImage("enojo.png");
    atras=loadImage("atras.png");
    image(enojo, 0, 0);
    image(sig, 750, 550);
    image(atras, 0, 550);
  }
  if (estado=="lucha") {
    lucha=loadImage("lucha.png");
    image(lucha, 0, 0);
    image(sig, 750, 550);
  }
  if (estado=="lucha2") {
    narracion=createFont("Thunderman.ttf", 10);
    textFont(narracion, 30);
    lucha2=loadImage("lucha2.png");
    image(lucha2, 0, 0);
    image(sig, 750, 550);
    fill(0);
    textAlign(CENTER, CENTER);
    text("Y ataca a la bruja", 600, 50);
  }
  if (estado=="lucha3") {
    narracion=createFont("Thunderman.ttf", 10);
    textFont(narracion, 30);
    lucha3=loadImage("lucha3.png");
    image(lucha3, 0, 0);
    image(sig, 750, 550);
    fill(0);
    textAlign(CENTER, CENTER);
    text("Y logra derrotarla", 200, 50);
  }
  if (estado=="final") {
    narracion=createFont("Thunderman.ttf", 10);
    textFont(narracion, 30);
    finall=loadImage("final.png");
    image(finall, 0, 0);
    image(sig, 750, 550);
    fill(255);
    textAlign(CENTER, CENTER);
    text("Entonces consigue salvar a Jake", 350, 50);
  }
  if (estado=="final2") {
    narracion=createFont("Thunderman.ttf", 10);
    textFont(narracion, 30);
    finall2=loadImage("casa.png");
    image(finall2, 0, 0);
    image(sig, 750, 550);
    fill(0);
    textAlign(CENTER, CENTER);
    text("Y ambos vuelven a su casa", 220, 40);
  }
  if (estado=="fin") {
    narracion=createFont("Thunderman.ttf", 10);
    textFont(narracion, 50);
    fin=loadImage("fin.png");
    image(fin, 0, 0);
    text("Fin", 150, height/2);
    fill(255);
    rect(50, 500, 250, 80);
    rect(400, 500, 250, 80);
    fill(0);
    text("Inicio", 180, 530);
    text("Créditos", 530, 530);
  }
  if (estado=="pelo") {
    pelo=loadImage("pelo.png");
    atras=loadImage("atras.png");
    image(pelo, 0, 0);
    image(sig, 750, 550);
    image(atras, 0, 550);
  }
  if (estado=="pelo2") {
    pelo2=loadImage("pelo2.png");
    image(pelo2, 0, 0);
    image(sig, 750, 550);
  }
  if (estado=="pelo3") {
    pelo3=loadImage("pelo3.png");
    image(pelo3, 0, 0);
    image(sig, 750, 550);
  }
  if (estado=="pelo4") {
    pelo4=loadImage("pelo4.png");
    image(pelo4, 0, 0);
    image(sig, 750, 550);
  }
  if (estado=="pelo5") {
    pelo5=loadImage("pelo5.png");
    image(pelo5, 0, 0);
    image(sig, 750, 550);
  }
  if (estado=="pelo6") {
    narracion=createFont("Thunderman.ttf", 10);
    textFont(narracion, 30);
    pelo6=loadImage("pelo6.png");
    image(pelo6, 0, 0);
    image(sig, 750, 550);
    text("La bruja acepta", 200, 250);
  }
  if (estado=="pelo7") {
    narracion=createFont("Thunderman.ttf", 10);
    textFont(narracion, 30);
    pelo7=loadImage("pelo7.png");
    image(pelo7, 0, 0);
    image(sig, 750, 550);
    fill(255);
    text("Y libera a Jake", 200, 60);
  }
  if (estado=="despedida") {
    narracion=createFont("Thunderman.ttf", 10);
    textFont(narracion, 30);
    despedida=loadImage("despedida.png");
    image(despedida, 0, 0);
    image(sig, 750, 550);
    textAlign(CENTER, CENTER);
    fill(255);
    text("Entonces Finn y Jake se despiden", 300, 60);
    text("y van en busca de aventuras", 300, 110);
  }
}

void keyPressed() {
  if (keyCode == ENTER || keyCode == RETURN ) {
    estado = "presentacion";
  }
}

void mousePressed() {
  if (mouseX>btnx && mouseX<btnx+bancho && mouseY>btny && mouseY<btny+balto-50 && estado=="presentacion") {
    estado = "comenzar";
  }
  if (mouseX>btnx2 && mouseX<btnx2+bancho && mouseY>btny2 && mouseY<btny2+bancho && estado=="presentacion") {
    estado = "creditos";
  }
  if (mouseX<50 && mouseY>550 && estado=="creditos") {
    estado = "presentacion";
    presentacion();
  }
  if (mouseX>750 && mouseY>550 && estado=="comenzar") {
    estado="finnyjake";
  } else if (mouseX>750 && mouseY>550 && estado=="finnyjake") {
    estado="ruido";
  } else if (mouseX>750 && mouseY>550 && estado=="ruido") {
    estado="bruja";
  } else if (mouseX>750 && mouseY>550 && estado=="bruja") {
    estado="pregunta";
  } else if (mouseX>50 && mouseX<100 && mouseY>70 && mouseY<120 && estado=="pregunta") {
    estado="si";
  } else if (mouseX>750 && mouseY>550 && estado=="si") {
    estado="desconfio";
  } else if (mouseX<50 && mouseY>550 && estado=="si") {
    estado = "pregunta";
  } else if (mouseX>750 && mouseY>550 && estado=="desconfio") {
    estado="jaula";
  } else if (mouseX>750 && mouseY>550 && estado=="jaula") {
    estado="amenaza";
  } else if (mouseX>150 && mouseX<200 && mouseY>70 && mouseY<120 && estado=="pregunta") {
    estado="no";
  } else if (mouseX>750 && mouseY>550 && estado=="no") {
    estado="jaula";
  } else if (mouseX<50 && mouseY>550 && estado=="no") {
    estado = "pregunta";
  } else if (mouseX>750 && mouseY>550 && estado=="jaula") {
    estado="amenaza";
  } else if (mouseX>750 && mouseY>550 && estado=="amenaza") {
    estado="duda";
  } else if (mouseX>50 && mouseX<200 && mouseY>70 && mouseY<120 && estado=="duda") {
    estado="pmusculos";
  } else if (mouseX>750 && mouseY>550 && estado=="pmusculos") {
    estado="pmusculospreg";
  } else if (mouseX<50 && mouseY>550 && estado=="pmusculos") {
    estado = "duda";
  } else if (mouseX>750 && mouseY>550 && estado=="pmusculospreg") {
    estado="pmusculosgustar";
  } else if (mouseX>750 && mouseY>550 && estado=="pmusculosgustar") {
    estado="pmusculoshuir";
  } else if (mouseX>100 && mouseX<300 && mouseY>120 && mouseY<170 && estado=="pmusculoshuir") {
    estado="pgrumosa";
  } else if (mouseX>400 && mouseX<600 && mouseY>120 && mouseY<170 && estado=="pmusculoshuir") {
    estado="dulcep";
  } else if (mouseX>300 && mouseX<500 && mouseY>70 && mouseY<120 && estado=="duda") {
    estado="pgrumosa";
  } else if (mouseX>750 && mouseY>550 && estado=="pgrumosa") {
    estado="pgrumosa2";
  } else if (mouseX<50 && mouseY>550 && estado=="pgrumosa") {
    estado = "duda";
  } else if (mouseX>750 && mouseY>550 && estado=="pgrumosa2") {
    estado="pgrumosa3";
  } else if (mouseX>750 && mouseY>550 && estado=="pgrumosa3") {
    estado="pgrumosa4";
  } else if (mouseX>750 && mouseY>550 && estado=="pgrumosa4") {
    estado="pgrumosa5";
  } else if (mouseX>750 && mouseY>550 && estado=="pgrumosa5") {
    estado="pgrumosahuir";
  } else if (mouseX>100 && mouseX<300 && mouseY>120 && mouseY<170 && estado=="pgrumosahuir") {
    estado="pmusculos";
  } else if (mouseX>400 && mouseX<600 && mouseY>120 && mouseY<170 && estado=="pgrumosahuir") {
    estado="dulcep";
  } else if (mouseX>550 && mouseX<750 && mouseY>70 && mouseY<120 && estado=="duda") {
    estado="dulcep";
  } else if (mouseX>750 && mouseY>550 && estado=="dulcep") {
    estado="dulcep2";
  } else if (mouseX<50 && mouseY>550 && estado=="dulcep") {
    estado = "duda";
  } else if (mouseX>750 && mouseY>550 && estado=="dulcep2") {
    estado="dulcep3";
  } else if (mouseX>750 && mouseY>550 && estado=="dulcep3") {
    estado="dulcep4";
  } else if (mouseX>750 && mouseY>550 && estado=="dulcep4") {
    estado="dulcep5";
  } else if (mouseX>750 && mouseY>550 && estado=="dulcep5") {
    estado="finn";
  } else if (mouseX>750 && mouseY>550 && estado=="finn") {
    estado="finn2";
  } else if (mouseX>750 && mouseY>550 && estado=="finn2") {
    estado="finn3";
  } else if (mouseX>750 && mouseY>550 && estado=="finn3") {
    estado="finn4";
  } else if (mouseX>750 && mouseY>550 && estado=="finn4") {
    estado="finn5";
  } else if (mouseX>100 && mouseX<300 && mouseY>120 && mouseY<170 && estado=="finn5") {
    estado="enojo";
  } else if (mouseX<50 && mouseY>550 && estado=="enojo") {
    estado = "finn5";
  } else if (mouseX>750 && mouseY>550 && estado=="enojo") {
    estado="lucha";
  } else if (mouseX>750 && mouseY>550 && estado=="lucha") {
    estado="lucha2";
  } else if (mouseX>750 && mouseY>550 && estado=="lucha2") {
    estado="lucha3";
  } else if (mouseX>750 && mouseY>550 && estado=="lucha3") {
    estado="final";
  } else if (mouseX>750 && mouseY>550 && estado=="final") {
    estado="final2";
  } else if (mouseX>750 && mouseY>550 && estado=="final2") {
    estado="fin";
  } else if (mouseX>50 && mouseX<300 && mouseY>500 && mouseY<580 && estado=="fin") {
    estado="inicio";
  } else if (mouseX>400 && mouseX<650 && mouseY>500 && mouseY<580 && estado=="fin") {
    estado="creditos";
  } else if (mouseX>400 && mouseX<720 && mouseY>120 && mouseY<170 && estado=="finn5") {
    estado="pelo";
  } else if (mouseX>750 && mouseY>550 && estado=="pelo") {
    estado="pelo2";
  } else if (mouseX<50 && mouseY>550 && estado=="pelo") {
    estado = "finn5";
  } else if (mouseX>750 && mouseY>550 && estado=="pelo2") {
    estado="pelo3";
  } else if (mouseX>750 && mouseY>550 && estado=="pelo3") {
    estado="pelo4";
  } else if (mouseX>750 && mouseY>550 && estado=="pelo4") {
    estado="pelo5";
  } else if (mouseX>750 && mouseY>550 && estado=="pelo5") {
    estado="pelo6";
  } else if (mouseX>750 && mouseY>550 && estado=="pelo6") {
    estado="pelo7";
  } else if (mouseX>750 && mouseY>550 && estado=="pelo7") {
    estado="despedida";
  } else if (mouseX>750 && mouseY>550 && estado=="despedida") {
    estado="fin";
  }
}
