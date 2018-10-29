//VARIABLES GLOBALES
import ddf.minim.*;
import processing.video.*;
PImage P1, P2, P3, P4, P5, B;
PFont titulo, titulo2, menu, select, creditos, movimientos;
int jugador1;
int jugador2;
int ronda = 1;
int turno = 0;
int barra1 = 100;
int barra2 = 100;
float dt;

//audio
Minim musicas;
AudioPlayer musica_fondo1;
AudioPlayer musica_fondo2;
AudioPlayer musica_fondo3;

//video
Movie movie;

//PERSONAJES MENU
Alfred     Zar1;
V          Hug1;
Verdugo    Mat1;
Hechicera  Cla1;
Arquitecto Arm1;

//PERSONAJES PARA FIGHT IZQ
Alfred     Zar2;
V          Hug2;
Verdugo    Mat2;
Hechicera  Cla2;
Arquitecto Arm2;

//PERSONAJES PARA FIGHT DER
Alfred     Zar3;
V          Hug3;
Verdugo    Mat3;
Hechicera  Cla3;
Arquitecto Arm3;



Pantalla pant;
void setup() {
  pant = new Pantalla();
  size (900, 600);
  //sele personaje
  titulo2 = loadFont ("OCRAExtended-48.vlw");
  menu = loadFont ("OCRAExtended-48.vlw");
  select = loadFont ("Bauhaus93-48.vlw");
  creditos = loadFont ("Arial-BoldMT-48.vlw");
  movimientos = loadFont ("TwCenMT-Bold-20.vlw");

  //PERSONAJES
  P1 = loadImage("zarate.png");
  P2 = loadImage("victor.png");
  P3 = loadImage("mata.png");
  P4 = loadImage("claudia.png");
  P5 = loadImage("armando.png");
  B = loadImage("backgruond.png");

  //Audio Menu
  musicas = new Minim(this);
  musica_fondo1 = musicas.loadFile("juego_pantalla menu.mp3");
  musica_fondo1.setGain(-10);
  musica_fondo1.pause();
  //Audio Fight
  musicas = new Minim(this);
  musica_fondo2 = musicas.loadFile("juego_pantalla fight.mp3");
  musica_fondo2.setGain(-20);
  musica_fondo2.pause();
  //Audio Resolucion
  musicas = new Minim(this);
  musica_fondo3 = musicas.loadFile("juego_pantalla resolucion.mp3");
  musica_fondo3.setGain(-10);
  musica_fondo3.pause();
  
  //VIDEO
  movie = new Movie(this,"intro dis is fight.mp4");
  movie.loop();
  

  //PERSONAJES SELECCION DE PERSONAJE
  Zar1 = new Alfred(90, 55);
  Hug1 = new V(350, 40);
  Mat1 = new Verdugo(595, 50);
  Cla1 = new Hechicera(180, 220);
  Arm1 = new Arquitecto(480, 220);

  //PELEA FIGHT MADAFAKA1 IZQ
  Zar2 = new Alfred(150, 300);
  Hug2 = new V(150, 300);
  Mat2 = new Verdugo(150, 300);
  Cla2 = new Hechicera(150, 300);
  Arm2 = new Arquitecto(150, 270);

  //2  DER
  Zar3 = new Alfred(750, 300);
  Hug3 = new V(750, 290);
  Mat3 = new Verdugo(750, 300);
  Cla3 = new Hechicera(750, 300);
  Arm3 = new Arquitecto(750, 270);
}
void draw() {
  background (30, 30, 30);
  pant.display();
}

void movieEvent(Movie m){
  m.read();
}
