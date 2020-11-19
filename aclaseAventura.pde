class Pantalla {
  Juego game;
  Estados estados;
  String estado;
  int num=1;

  Boton botonCreditos;
  Boton botonComenzar;
  Boton botonAtras;
  Boton botonSiguiente;
  Boton botonSi;
  Boton botonNo;
  Boton botonPMusculos;
  Boton botonPGrumosa;
  Boton botonDulceP;
  Boton botonPGrumosa2;
  Boton botonDulceP2;
  Boton botonPMusculos2;
  Boton botonEnojo;
  Boton botonPelo;
  Boton botonInicio;
  Boton botonCreditos2;

  Pantalla() {
    estado="inicio";
    botonCreditos = new Boton(width/2+width/4-width/16, height-height/3+height/12, width/4);
    botonComenzar = new Boton(width/16, height-height/3+height/12, width/4);
    botonAtras = new Boton(0, height-height/12, height/6);
    botonSiguiente = new Boton(width-width/8, height-height/12, height/6);
    botonSi = new Boton(width/16, height/6, height/6);
    botonNo = new Boton(width/4, height/6, height/6);
    botonPMusculos = new Boton(width/16, height/6, height/3);
    botonPGrumosa = new Boton(width/4+width/8, height/6, height/3);
    botonDulceP = new Boton(width/2+width/4-width/16, height/6, height/3);
    botonPGrumosa2 = new Boton(width/8, height/4-height/20, height/3);
    botonDulceP2 = new Boton(width/2, height/4-height/20, height/3);
    botonPMusculos2 = new Boton(width/8, height/4-height/20, height/3);
    botonEnojo = new Boton(width/8, height/5, width/4+width/32);
    botonPelo = new Boton(width/2, height/5, width/4+width/32);
    botonInicio = new Boton(width/16, height-height/3+height/12, height/3);
    botonCreditos2 = new Boton(width/2, height-height/3+height/12, height/3);
    game = new Juego();
    estados = new Estados();
  }

  void estados() {
    if (estado.equals("creditos")) {
      estados.creditos();
    }
    if (estado.equals("inicio")) {
      estados.inicio();
    }
    if (estado.equals("presentacion")) {
      estados.presentacion();
    }
    if (estado.equals("comenzar")) {
      estados.comenzar();
    }
    if (estado.equals("finnyjake")) {
      estados.finnyjake();
    }
    if (estado.equals("ruido")) {
      estados.ruido();
    }
    if (estado.equals("bruja")) {
      estados.bruja();
    }
    if (estado.equals("pregunta")) {
      estados.pregunta();
    }
    if (estado.equals("si")) {
      estados.si();
    }
    if (estado.equals("desconfio")) {
      estados.desconfio();
    }
    if (estado.equals("jaula")) {
      estados.jaula();
    }
    if (estado.equals("no")) {
      estados.no();
    }
    if (estado.equals("amenaza")) {
      estados.amenaza();
    }
    if (estado.equals("duda")) {
      estados.duda();
    }
    if (estado.equals("pmusculos")) {
      estados.pmusculos();
    }
    if (estado.equals("pmusculospreg")) {
      estados.pmusculospreg();
    }
    if (estado.equals("pmusculosgustar")) {
      estados.pmusculosgustar();
    }
    if (estado.equals("pmusculoshuir")) {
      estados.pmusculoshuir();
    }
    if (estado.equals("pgrumosa")) {
      estados.pgrumosa();
    }
    if (estado.equals("pgrumosa2")) {
      estados.pgrumosa2();
    }
    if (estado.equals("pgrumosa3")) {
      estados.pgrumosa3();
    }
    if (estado.equals("pgrumosa4")) {
      estados.pgrumosa4();
    }
    if (estado.equals("pgrumosa5")) {
      estados.pgrumosa5();
    }
    if (estado.equals("pgrumosahuir")) {
      estados.pgrumosahuir();
    }
    if (estado.equals("dulcep")) {
      estados.dulcep();
    }
    if (estado.equals("dulcep2")) {
      estados.dulcep2();
    }
    if (estado.equals("dulcep3")) {
      estados.dulcep3();
    }
    if (estado.equals("dulcep4")) {
      estados.dulcep4();
    }
    if (estado.equals("instrucciones")) {
      game.instrucciones();
    }
    if (estado.equals("juego")) {
      juego();
    }
    if (estado.equals("finn2")) {
      estados.finn2();
    }
    if (estado.equals("finn3")) {
      estados.finn3();
    }
    if (estado.equals("finn4")) {
      estados.finn4();
    }
    if (estado.equals("finn5")) {
      estados.finn5();
    } 
    if (estado.equals("enojo")) {
      estados.enojo();
    }
    if (estado.equals("lucha2")) {
      estados.lucha2();
    }
    if (estado.equals("lucha3")) {
      estados.lucha3();
    }
    if (estado.equals("final1")) {
      estados.final1();
    }
    if (estado.equals("final2")) {
      estados.final2();
    }
    if (estado.equals("fin")) {
      estados.fin();
    }
    if (estado.equals("pelo")) {
      estados.pelo();
    }
    if (estado.equals("pelo2")) {
      estados.pelo2();
    }
    if (estado.equals("pelo3")) {
      estados.pelo3();
    }
    if (estado.equals("pelo4")) {
      estados.pelo4();
    }
    if (estado.equals("pelo5")) {
      estados.pelo5();
    }
    if (estado.equals("pelo6")) {
      estados.pelo6();
    }
    if (estado.equals("pelo7")) {
      estados.pelo7();
    }
    if (estado.equals("despedida")) {
      estados.despedida();
    }
  }

  void deInicioaPresentacion(int tecla) {
    if (tecla==CONTROL) {
      estado = "presentacion";
    }
  }

  void juego() {
    game.estados();
    game.cambiarEstadoJuego();
    if (keyPressed) {
      game.moverPersonaje(keyCode);
    }
  }

  void cambiarEstado() {
    if (botonComenzar.botOver(width/16, height-height/3+height/12, width/4) && estado.equals("presentacion")) {
      estado = "comenzar";
    }
    if (botonCreditos.botOver(width/2+width/4-width/16, height-height/3+height/12, width/4) && estado.equals("presentacion")) {
      estado = "creditos";
    }
    if (botonAtras.botOver(0, height-height/12, height/6) && estado.equals("creditos")) {
      estado = "presentacion";
      estados.presentacion();
    } else if (botonAtras.botOver(0, height-height/12, height/6)) {
      if (estado.equals("si")) {
        estado="pregunta";
      } else if (estado.equals("no")) {
        estado="pregunta";
      } else if (estado.equals("pmusculos")) {
        estado="duda";
      } else if (estado.equals("pgrumosa")) {
        estado="duda";
      } else if (estado.equals("dulcep")) {
        estado="duda";
      } else if (estado.equals("enojo")) {
        estado="finn5";
      } else if (estado.equals("pelo")) {
        estado="finn5";
      }
    }
    if (botonSiguiente.botOver(width-width/8, height-height/12, height/6) && estado.equals("comenzar")) {
      estado="finnyjake";
    } else if (botonSiguiente.botOver(width-width/8, height-height/12, height/6)) {
      if (estado.equals("finnyjake")) {
        estado="ruido";
      } else if (estado.equals("ruido")) {
        estado="bruja";
      } else if (estado.equals("bruja")) {
        estado="pregunta";
      } else if (estado.equals("si")) {
        estado="desconfio";
      } else if (estado.equals("desconfio")) {
        estado="jaula";
      } else if (estado.equals("jaula")) {
        estado="amenaza";
      } else if (estado.equals("no")) {
        estado="jaula";
      } else if (estado.equals("amenaza")) {
        estado="duda";
      } else if (estado.equals("pmusculos")) {
        estado="pmusculospreg";
      } else if (estado.equals("pmusculospreg")) {
        estado="pmusculosgustar";
      } else if (estado.equals("pmusculosgustar")) {
        estado="pmusculoshuir";
      } else if (estado.equals("pgrumosa")) {
        estado="pgrumosa2";
      } else if (estado.equals("pgrumosa2")) {
        estado="pgrumosa3";
      } else if (estado.equals("pgrumosa3")) {
        estado="pgrumosa4";
      } else if (estado.equals("pgrumosa4")) {
        estado="pgrumosa5";
      } else if (estado.equals("pgrumosa5")) {
        estado="pgrumosahuir";
      } else if (estado.equals("dulcep")) {
        estado="dulcep2";
      } else if (estado.equals("dulcep2")) {
        estado="dulcep3";
      } else if (estado.equals("dulcep3")) {
        estado="dulcep4";
      } else if (estado.equals("dulcep4")) {
        estado="instrucciones";
      } else if (estado.equals("instrucciones")) {
        estado="juego";
      } else if (estado.equals("juego")) {
        estado="finn";
      } else if (estado.equals("finn")) {
        estado="finn2";
      } else if (estado.equals("finn2")) {
        estado="finn3";
      } else if (estado.equals("finn3")) {
        estado="finn4";
      } else if (estado.equals("finn4")) {
        estado="finn5";
      } else if (estado.equals("enojo")) {
        estado="lucha2";
      } else if (estado.equals("lucha2")) {
        estado="lucha3";
      } else if (estado.equals("lucha3")) {
        estado="final1";
      } else if (estado.equals("final1")) {
        estado="final2";
      } else if (estado.equals("final2")) {
        estado="fin";
      } else if (estado.equals("pelo")) {
        estado="pelo2";
      } else if (estado.equals("pelo2")) {
        estado="pelo3";
      } else if (estado.equals("pelo3")) {
        estado="pelo4";
      } else if (estado.equals("pelo4")) {
        estado="pelo5";
      } else if (estado.equals("pelo5")) {
        estado="pelo6";
      } else if (estado.equals("pelo6")) {
        estado="pelo7";
      } else if (estado.equals("pelo7")) {
        estado="despedida";
      } else if (estado.equals("despedida")) {
        estado="fin";
      }
    } else if (botonSi.botOver(width/16, height/6, height/6) && estado.equals("pregunta")) {
      estado="si";
    } else if (botonNo.botOver(width/4, height/6, height/6) && estado.equals("pregunta")) {
      estado="no";
    } else if (botonPMusculos.botOver(width/16, height/6, height/3) && estado.equals("duda")) {
      estado="pmusculos";
    } else if (botonPGrumosa2.botOver(width/8, height/4-height/20, height/3) && estado.equals("pmusculoshuir")) {
      estado="pgrumosa";
    } else if (botonDulceP2.botOver(width/2, height/4-height/20, height/3) && estado.equals("pmusculoshuir")) {
      estado="dulcep";
    } else if (botonPGrumosa.botOver(width/4+width/8, height/6, height/3) && estado.equals("duda")) {
      estado="pgrumosa";
    } else if (botonPMusculos2.botOver(width/8, height/4-height/20, height/3) && estado.equals("pgrumosahuir")) {
      estado="pmusculos";
    } else if (botonDulceP2.botOver(width/2, height/4-height/20, height/3) && estado.equals("pgrumosahuir")) {
      estado="dulcep";
    } else if (botonDulceP.botOver(width/2+width/4-width/16, height/6, height/3) && estado.equals("duda")) {
      estado="dulcep";
    } else if (botonEnojo.botOver(width/8, height/5, width/4+width/32) && estado.equals("finn5")) {
      estado="enojo";
    } else if (botonInicio.botOver(width/16, height-height/3+height/12, height/3) && estado.equals("fin")) {
      estado="inicio";
    } else if (botonCreditos2.botOver(width/2, height-height/3+height/12, height/3) && estado.equals("fin")) {
      estado="creditos";
    } else if (botonPelo.botOver(width/2, height/5, width/4+width/32) && estado.equals("finn5")) {
      estado="pelo";
    }
  }
}
