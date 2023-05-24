//Explicación del código: (Insertar link)
//Alumno: Mena Ungaro, Alejo (92582/2)

PImage tunel;
int tam1 = 65;
int colorr;

void setup() {

  size(800, 400);
  tunel = loadImage ("tunel.jpg");
  colorr = 1;
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


  float d = dist(600, 200, mouseX, mouseY);



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



  //Rectángulos vácios
  for (int A = 30; A < width+8; A = A + 30) {
    rectMode(CENTER);
    noFill();
    rect(600, 200, tam1+d/1.5 + A, tam1+d/1.5 + A); //Tamaño acorde al cuadrado del medio
  }



  //Cuadrado del medio
  rectMode(CENTER);
  if ( colorr == 1) { //Dependiendo de la variante, cambia de color
    fill(255, 0, 0);
  } else if (colorr == 2) {
    fill(0, 0, 255);
  } else if (colorr == 3) {
    fill(255, 0, 255);
  } else if (colorr == 4) {
    fill(255, 255, 255);
  }
  rect(600, 200, tam1+d/1.6, tam1+d/1.6); //Su tamaño cambia acorde a la distancia del mouse



  //Imagen referencial
  image (tunel, 0, 0);
}



void mousePressed() {
  //El click izquierdo cambia los colores
  if (mouseButton == LEFT) {
    colorr++;
    if (colorr == 4) {
      colorr = 1;
    }
  }
  //El click derecho resetea los valores
  if (mouseButton == RIGHT) {
    colorr = 1;
    mouseX = 600;
    mouseY = 200;
  }
}
