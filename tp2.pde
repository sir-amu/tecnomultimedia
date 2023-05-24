//Explicación del código:
//Alumno: Mena Ungaro, Alejo (92582/2)

PImage tunel;
int colorr;

void setup() {
  size(800, 400);
  tunel = loadImage ("tunel.jpg");
  colorr = 1;
  mouseX= 600;
  mouseY= 200;
}


void draw() {

  //El fondo cambia de color acorde a la variante
  if ( colorr == 1) {
    background(0, 255, 0);
  } else if (colorr == 2) {
    background(255, 255, 0);
  } else if (colorr == 3) {
    background(0, 255, 255);
  } else if (colorr == 4) {
    background(255, 255, 255);
  }




  //FOR anidados líneas
  for (int A = 400; A <= width; A = A + 25) {  //líneas arriba
    line(A, 0, 600, 200);
    if (A==width) {
      for (int B = 400; B <= width; B = B + 25) { //líneas abajo
        line(600, 200, B, 400);
        if (B==width) {
          for (int C = 25; C <= 375; C = C + 25) { //líneas izquierda
            line(400, C, 600, 200);
            if (C==375) {
              for (int D = 25; D <= 375; D = D + 25) { //líneas derecha
                line(800, D, 600, 200);
              }
            }
          }
        }
      }
    }
  }



  CuadradosVacíos();

  CuadradoEnElMedio();


  image (tunel, 0, 0); //Imagen referencial
}



void mousePressed() {
  if (mouseButton == LEFT) { //El click izquierdo cambia los colores
    colorr++;
    if (colorr == 4) {
      colorr = 1;
    }
  }
  if (mouseButton == RIGHT) { //El click derecho resetea los valores
    colorr = 1;
    mouseX = 600;
    mouseY = 200;
  }
}
