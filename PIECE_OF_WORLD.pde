import peasy.*;

PeasyCam cam;


//PROYECTO DE UNA CIUDAD CON VARIAS BASES VOLADORAS ALEATORIAS DENTRO DE UN CUBO TRANSPARETNTE (SIMULANDO UNA BURBUJA CUADRADA),
//POSICIONES DE LAS BASES ALEATORIAS, EDIFICOS ALEATORIOS, AÑADIR PARQUES, ARBOLES, Y MAS OBJETOS RANDOMS QUE SE VAYAN OCURRIENDO
//TODO SIEMPRE TENDRA QUE ESTAR DENTRO DEL CUBO CREADO ANTERIORMENTE


Edificio edificio;
int x, y, z;
boolean base = false;
int pos = floor(random(5, 11));
int grid = 5;
int ancho = 50;
int largo = 50;
int ancho_base = 80;
int largo_base = 80;
int alto_base = 20;
int tam_zona = 500 / 3;
int x_zona, y_zona, z_zona;
int zona;
int subzona;
int cont = 0;
int[][] zonas = new int[27][3];
int[][][] subzonas = new int[27][16][3];
boolean[] bases = new boolean[27];
int color_random;
int color_paredes;
int numeroedificios;
int semilla = 456;

void setup()
{
  fullScreen(P3D);
  cam = new PeasyCam(this, 675);
}

void draw()
{
  randomSeed(semilla);

  background(0);
  lights();
  //stroke(255, 255, 0);
  noStroke();
  //rotateZ(PI/2);
  rotateX(PI/3);
  //rotateX(1.15);
  //rotateZ(0.7);

  noFill();

  fill(#F7A202);
  noStroke();
  box(2000);

  zonas();

  for (zona = 0; zona < zonas.length; zona++)
  {
    print(zona + 1+". "+zonas[zona][0], zonas[zona][1], zonas[zona][2], bases[zona]);
    println();
  }

  for (zona = 0; zona < subzonas.length; zona++)
  {
    for (subzona = 0; subzona < subzonas[zona].length; subzona++)
    {
      print(zona + 1+". "+subzonas[zona][subzona][0], subzonas[zona][subzona][1], subzonas[zona][subzona][2]);
      println();
    }
  }

  subzonas();

  estructuras();

  //decoraciones();

  nubes();
}

void mousePressed()
{
  loop();
}

void keyPressed() {
  semilla = floor(random(1000000));
}
