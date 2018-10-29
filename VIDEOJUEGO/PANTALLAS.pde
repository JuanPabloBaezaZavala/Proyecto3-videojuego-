//especificaciones clase pantalla 
class Pantalla {
  int ventana;

  void inicio() {
    image(movie, 0, 0, width, height);
    musica_fondo1.pause();
    musica_fondo2.pause();
    musica_fondo3.pause();
    textFont (titulo2);
    textSize(40);
    fill(random(255), random(255));
    text ("Presiona 'SPACIO' para continuar", 80, 580);
    if (keyCode == 32) {
      ventana = 1;
      musica_fondo1.loop();
      movie.pause();
    }
  }
  void seleccion() {
    dt+=0.01;
    background(100, 35, 50);
    noStroke();
    for (int i= 0; i<width; i+=8) {
      for (int j = 0; j<height; j+=8) {
        fill(noise(i*0.05+dt, j*0.05, dt)*0, noise(i*0.05+dt+1, dt)*255);
        rect(i, j, 8, 8);
      }
    }

    textSize(6);
    fill(random(255), random(255), random(255));
    noStroke();
    textFont(menu);
    text ("SELECCIONA TU CANDIDATO", 110, 550);

    Zar1.display();
    Hug1.display();
    Mat1.display();
    Cla1.display();
    Arm1.display();

    //LETRAS CORRESPONDIENTES A PERSONAJE
    textSize (130);
    textFont (select);
    fill(198, 233, 180);
    text ("F", 140, 310);
    text ("G", 430, 310);
    text ("H", 710, 310);
    text ("V", 250, 510);
    text ("B", 580, 510);

    //BOTONES PARA SELECCION DE PERONAJES
    keyPressed();
    switch (key) {
    case 'f':
      if ((key == 'f' || key == 'F')&&(ronda == 1)) {
        jugador1 =1;
        ronda = 2;
      } else { 
        if ((key == 'f' || key == 'F')&&(ronda == 2)&& jugador1!=1) {
          jugador2 = 1;
          ventana = 2;
          musica_fondo1.pause();
          musica_fondo2.loop();
        }
      } 

    case 'g':
      if ((key == 'g' || key == 'G')&&(ronda == 1)) {
        jugador1 = 2;
        ronda = 2;
      } else { 
        if ((key == 'g' || key == 'G')&&(ronda == 2)&& jugador1!=2) {
          jugador2 = 2;
          ventana = 2;
          musica_fondo1.pause();
          musica_fondo2.loop();
        }
      }

    case 'h':
      if ((key == 'h' || key == 'H')&&(ronda == 1)) {
        jugador1 = 3;
        ronda = 2;
      } else { 
        if ((key == 'h' || key == 'H')&&(ronda == 2)&& jugador1!=3) {
          jugador2 = 3;
          ventana = 2;
          musica_fondo1.pause();
          musica_fondo2.loop();
        }
      } 

    case 'v':
      if ((key == 'v' || key == 'V')&&(ronda == 1)) {
        jugador1 = 4;
        ronda = 2;
      } else { 
        if ((key == 'v' || key == 'V')&&(ronda == 2)&& jugador1!=4) {
          jugador2 = 4;
          ventana = 2;
          musica_fondo1.pause();
          musica_fondo2.loop();
        }
      }

    case 'b':
      if ((key == 'b' || key == 'B')&&(ronda == 1)) {
        jugador1 = 5;
        ronda = 2;
      } else { 
        if ((key == 'b' || key == 'B')&&(ronda == 2)&& jugador1!=5) {
          jugador2 = 5;
          ventana = 2;
          musica_fondo1.pause();
          musica_fondo2.loop();
        }
      }
    }
  }
  void pelea() {
    //MOVIMIENTO DE PERSONAJES

    //BACKGROUND
    image(B, 0, 0, width, height);
    //BARRAS DE VIDA

    fill(50, 250, 50);
    noStroke();
    rect(100, 80, barra1*3, 20);
    rect(500, 80, barra2*3, 20);

    //BOTONES PARA FIGHT
    pushMatrix();
    fill(100, 100, 255);
    noStroke();
    ellipse (/*posicion*/100, 150, /*tamaño*/30, 30);
    ellipse (/*posicion*/60, 185, /*tamaño*/30, 30);
    ellipse (/*posicion*/140, 185, /*tamaño*/30, 30);
    ellipse (/*posicion*/100, 220, /*tamaño*/30, 30);
    ellipse (/*posicion*/800, 150, /*tamaño*/30, 30);
    ellipse (/*posicion*/760, 185, /*tamaño*/30, 30);
    ellipse (/*posicion*/840, 185, /*tamaño*/30, 30);
    ellipse (/*posicion*/800, 220, /*tamaño*/30, 30);
    fill(100, 255, 100);
    noStroke();
    ellipse (/*posicion*/180, 185, /*tamaño*/30, 30);
    ellipse (/*posicion*/720, 185, /*tamaño*/30, 30);
    fill(255, 100, 100);
    noStroke();
    ellipse (/*posicion*/210, 220, /*tamaño*/30, 30);
    ellipse (/*posicion*/690, 220, /*tamaño*/30, 30);
    popMatrix();

    //LETRAS CORRESPONDIENTES A BOTONES
    pushMatrix();
    textFont (movimientos);
    fill(8, 3, 10);
    text ("W", 95, 155);
    text ("A", 55, 190);
    text ("D", 135, 190);
    text ("S", 95, 225);
    text ("Q", 175, 190);
    text ("E", 205, 225);
    text ("O", 795, 155);
    text ("K", 755, 190);
    text ("Ñ", 835, 190);
    text ("L", 795, 225);
    text ("I", 715, 190);
    text ("P", 685, 225);
    popMatrix();
    //MOVIMIENTO DE PERSONAJES   
    if (keyPressed) {
      switch(key) {
        //Movimiento persoanjes de Der
      case 'w':
        Zar2.desplace(0);
        Hug2.desplace(0);
        Mat2.desplace(0);
        Cla2.desplace(0);
        Arm2.desplace(0);
        break;
      case 'a':
        Zar2.desplace(2);
        Hug2.desplace(2);
        Mat2.desplace(2);
        Cla2.desplace(2);
        Arm2.desplace(2);
        break;
      case 's':
        Zar2.desplace(3);
        Hug2.desplace(3);
        Mat2.desplace(3);
        Cla2.desplace(3);
        Arm2.desplace(3);
        break;
      case 'd':
        Zar2.desplace(1);
        Hug2.desplace(1);
        Mat2.desplace(1);
        Cla2.desplace(1);
        Arm2.desplace(1);
        break;
        //Movimiento persoanjes de Izq
      case 'o':
        Zar3.desplace(0);
        Hug3.desplace(0);
        Mat3.desplace(0);
        Cla3.desplace(0);
        Arm3.desplace(0);
        break;
      case 'k':
        Zar3.desplace(2);
        Hug3.desplace(2);
        Mat3.desplace(2);
        Cla3.desplace(2);
        Arm3.desplace(2);
        break;
      case 'l':
        Zar3.desplace(3);
        Hug3.desplace(3);
        Mat3.desplace(3);
        Cla3.desplace(3);
        Arm3.desplace(3);
        break;
      case 'ñ':
        Zar3.desplace(1);
        Hug3.desplace(1);
        Mat3.desplace(1);
        Cla3.desplace(1);
        Arm3.desplace(1);
        break;
      }
    }
    
     //ATAQUES DE JUGADOR 1
    keyPressed();
    switch(key) {
      //ATAQUES DE JUGADOR 1
    case 'q':
      if ((key == 'q' || key == 'Q')&&(turno == 0)) {
        barra2 -= 5;
        turno = 1;
      }
      break;
    case 'e':
      if ((key == 'e' || key == 'E')&&(turno == 0)) {
        barra2 -= 10;
        turno = 1;
      }
      break;

      //ATAQUES DE JUGADOR 2
    case 'i':
      if ((key == 'i' || key == 'I')&&(turno == 1)) {
        barra1 -= 5;
        turno = 0;
      }
      break;
    case 'p':
      if ((key == 'p' || key == 'P')&&(turno == 1)) {
        barra1 -= 10;
        turno = 0;
      }
      break;
    }
    //DIBUJAR PERSONAJES PARA FIGHT IZQ/DER
    if (jugador1 == 1) {
      Zar2.display();
      Zar2.limites();
      fill(200, 200, 200);
      noStroke();
      textFont (titulo2);
      textSize (30);
      text ("Alfred", 200, 75);
    }
    if (jugador2 == 1) {
      Zar3.display2();
      Zar3.limites2();
      fill(200, 200, 200);
      noStroke();
      textFont (titulo2);
      textSize (30);
      text ("Alfred", 600, 75);
    }
    if (jugador1 == 2) {
      Hug2.display();
      Hug2.limites();
      fill(200, 200, 200);
      noStroke();
      textFont (titulo2);
      textSize (30);
      text ("V", 230, 75);
    }
    if (jugador2 == 2) {
      Hug3.display2();
      Hug3.limites2();
      fill(200, 200, 200);
      noStroke();
      textFont (titulo2);
      textSize (30);
      text ("V", 640, 75);
    }
    if (jugador1 == 3) {
      Mat2.display();
      Mat2.limites();
      fill(200, 200, 200);
      noStroke();
      textFont (titulo2);
      textSize (30);
      text ("Verdugo", 200, 75);
    }
    if (jugador2 == 3) {
      Mat3.display2();
      Mat3.limites2();
      fill(200, 200, 200);
      noStroke();
      textFont (titulo2);
      textSize (30);
      text ("Verdugo", 600, 75);
    }
    if (jugador1 == 4) {
      Cla2.display();
      Cla2.limites();
      fill(200, 200, 200);
      noStroke();
      textFont (titulo2);
      textSize (30);
      text ("Hechicera", 180, 75);
    }
    if (jugador2 == 4) {
      Cla3.display2();
      Cla3.limites2();
      fill(200, 200, 200);
      noStroke();
      textFont (titulo2);
      textSize (30);
      text ("Hechicera", 580, 75);
    }
    if (jugador1 == 5) {
      Arm2.display();
      Arm2.limites();
      fill(200, 200, 200);
      noStroke();
      textFont (titulo2);
      textSize (30);
      text ("Arquitecto", 170, 75);
    }
    if (jugador2 == 5) {
      Arm3.display2();
      Arm3.limites2();
      fill(200, 200, 200);
      noStroke();
      textFont (titulo2);
      textSize (30);
      text ("Arquitecto", 570, 75);
    }

    if (barra1 <= 0 || barra2 <= 0) {
      ventana = 3;
      musica_fondo3.loop();
    } 
  }


  void fin() {
    if ((barra1 <= 0)&&(jugador2 == 1)) {
    musica_fondo2.pause();
    fill(255);
    textFont(titulo2);
    textSize(30);
    text("(Alfred)",370,220);
    textFont(creditos);
    textSize(60);
    text("Jugador 2", 300, 170);
    fill(random(255), random(255), random(255));
    textFont(titulo2);
    textSize(70);
    text("ERES EL GANADOR", 150, 350);
    fill(random(255), random(255));
    textFont(creditos);
    textSize(20);
    text("Presiona 'ENTER' para siguiente pelea", 270, 550);
  } else if ((barra2 <= 0)&&(jugador1 == 1)) {
    musica_fondo2.pause();
    fill(255);
    textFont(titulo2);
    textSize(30);
    text("(Alfred)",370,220);
    textFont(creditos);
    textSize(60);
    text("Jugador 1", 300, 170);
    fill(random(255), random(255), random(255));
    textFont(titulo2);
    textSize(70);
    text("ERES EL GANADOR", 150, 350);
    fill(random(255), random(255));
    textFont(creditos);
    textSize(20);
    text("Presiona 'ENTER' para siguiente pelea", 270, 550);
  }
  
  if ((barra1 <= 0)&&(jugador2 == 2)) {
    musica_fondo2.pause();
    fill(255);
    textFont(titulo2);
    textSize(30);
    text("(V)",410,220);
    textFont(creditos);
    textSize(60);
    text("Jugador 2", 300, 170);
    fill(random(255), random(255), random(255));
    textFont(titulo2);
    textSize(70);
    text("ERES EL GANADOR", 150, 350);
    fill(random(255), random(255));
    textFont(creditos);
    textSize(20);
    text("Presiona 'ENTER' para siguiente pelea", 270, 550);
  } else if ((barra2 <= 0)&&(jugador1 == 2)) {
    musica_fondo2.pause();
    fill(255);
    textFont(titulo2);
    textSize(30);
    text("(V)",410,220);
    textFont(creditos);
    textSize(60);
    text("Jugador 1", 300, 170);
    fill(random(255), random(255), random(255));
    textFont(titulo2);
    textSize(70);
    text("ERES EL GANADOR", 150, 350);
    fill(random(255), random(255));
    textFont(creditos);
    textSize(20);
    text("Presiona 'ENTER' para siguiente pelea", 270, 550);
  }
  
  if ((barra1 <= 0)&&(jugador2 == 3)) {
    musica_fondo2.pause();
    fill(255);
    textFont(titulo2);
    textSize(30);
    text("(Verdugo)",370,220);
    textFont(creditos);
    textSize(60);
    text("Jugador 2", 300, 170);
    fill(random(255), random(255), random(255));
    textFont(titulo2);
    textSize(70);
    text("ERES EL GANADOR", 150, 350);
    fill(random(255), random(255));
    textFont(creditos);
    textSize(20);
    text("Presiona 'ENTER' para siguiente pelea", 270, 550);
  } else if ((barra2 <= 0)&&(jugador1 == 3)) {
    musica_fondo2.pause();
    fill(255);
    textFont(titulo2);
    textSize(30);
    text("(Verdugo)",370,220);
    textFont(creditos);
    textSize(60);
    text("Jugador 1", 300, 170);
    fill(random(255), random(255), random(255));
    textFont(titulo2);
    textSize(70);
    text("ERES EL GANADOR", 150, 350);
    fill(random(255), random(255));
    textFont(creditos);
    textSize(20);
    text("Presiona 'ENTER' para siguiente pelea", 270, 550);
  }
  
  if ((barra1 <= 0)&&(jugador2 == 4)) {
    musica_fondo2.pause();
    fill(255);
    textFont(titulo2);
    textSize(30);
    text("(Hechicera)",350,220);
    textFont(creditos);
    textSize(60);
    text("Jugador 2", 300, 170);
    fill(random(255), random(255), random(255));
    textFont(titulo2);
    textSize(70);
    text("ERES EL GANADOR", 150, 350);
    fill(random(255), random(255));
    textFont(creditos);
    textSize(20);
    text("Presiona 'ENTER' para siguiente pelea", 270, 550);
  } else if ((barra2 <= 0)&&(jugador1 == 4)) {
    musica_fondo2.pause();
    fill(255);
    textFont(titulo2);
    textSize(30);
    text("(Hechicera)",350,220);
    textFont(creditos);
    textSize(60);
    text("Jugador 1", 300, 170);
    fill(random(255), random(255), random(255));
    textFont(titulo2);
    textSize(70);
    text("ERES EL GANADOR", 150, 350);
    fill(random(255), random(255));
    textFont(creditos);
    textSize(20);
    text("Presiona 'ENTER' para siguiente pelea", 270, 550);
  }
  
  if ((barra1 <= 0)&&(jugador2 == 5)) {
    musica_fondo2.pause();
    fill(255);
    textFont(titulo2);
    textSize(30);
    text("(Arquitecto)",340,220);
    textFont(creditos);
    textSize(60);
    text("Jugador 2", 300, 170);
    fill(random(255), random(255), random(255));
    textFont(titulo2);
    textSize(70);
    text("ERES EL GANADOR", 150, 350);
    fill(random(255), random(255));
    textFont(creditos);
    textSize(20);
    text("Presiona 'ENTER' para siguiente pelea", 270, 550);
  } else if ((barra2 <= 0)&&(jugador1 == 5)) {
    musica_fondo2.pause();
    fill(255);
    textFont(titulo2);
    textSize(30);
    text("(Arquitecto)",340,220);
    textFont(creditos);
    textSize(60);
    text("Jugador 1", 300, 170);
    fill(random(255), random(255), random(255));
    textFont(titulo2);
    textSize(70);
    text("ERES EL GANADOR", 150, 350);
    fill(random(255), random(255));
    textFont(creditos);
    textSize(20);
    text("Presiona 'ENTER' para siguiente pelea", 270, 550);
  } 
    if (keyCode == 10) {
    ventana = 1;
    ronda = 1;
    barra1 = 100;
    barra2 = 100;
    /*Zar2 = new Alfred(150, 400);
    Zar3 = new Alfred(750, 400);
    Hug2 = new V(150, 390);
    Hug3 = new V(750, 390);
    Mat2 = new Verdugo(150, 400);
    Mat3 = new Verdugo(750, 400);
    Cla2 = new Hechicera(150, 400);
    Cla3 = new Hechicera(750, 400);
    Arm2 = new Arquitecto(150, 370);
    Arm3 = new Arquitecto(750, 370);*/
    musica_fondo3.pause();
    musica_fondo1.loop();
  }
  }

  void display() {
    switch(this.ventana) {
    case 0:
      inicio();
      break;
    case 1:
      seleccion();
      break;
    case 2:
      pelea();
      break;
    case 3:
      fin();
      break;
    }
  }
}
