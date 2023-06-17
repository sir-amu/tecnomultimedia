//Explicación del código: https://youtu.be/pQdMLNC-0ws
//Alumno: Mena Ungaro, Alejo (92582/2)

PImage Referencia;
int VariableColor;
int ColorFondo = 255;
int ColorRect = 0;
int tamaño = 65;
float RotarPantalla = 0;
boolean HizoClick = true;

/* INSTRUCCIONES DE USO
Mover el mouse para interactuar con la obra.
Cambiar colores: Apretar UP/W o DOWN/S para seleccionar los colores. Arrastrar el primer click o usar las teclas 'A' y 'D' para modificar los mismos.
Quitar líneas: Haciendo click con la rueda del mouse, o apretando 'SHIFT'.
Rotar la obra: Arrastrando el segundo click, o con las teclas LEFT/A y RIGHT/D.
*/

void setup() {
  size(800, 400);
  Referencia = loadImage ("ArteReferencial.jpg");
  VariableColor = 1;
  mouseX= 600;
  mouseY= 200;
}



void draw() {

  pushMatrix();
  translate(600, 200);

  rotate(RotarPantalla);
  mouseDragged();


  if ( VariableColor == 1) {   //El fondo cambia de color acorde a la variable
    background(0, ColorFondo, 0);
  } else if (VariableColor == 2) {
    background(ColorFondo, ColorFondo, 0);
  } else if (VariableColor == 3) {
    background(0, ColorFondo, ColorFondo);
  } else if (VariableColor == 4) {
    background(ColorFondo, ColorFondo, ColorFondo);
  }


  //FOR anidados líneas
  if (HizoClick) {
    for (int A = -350; A <= 350; A = A + 50) {  //líneas arriba
      strokeWeight(1);
      stroke(0);
      line(A, -350, 0, 0);
      if (A==350) {
        for (int B = -350; B <= 350; B = B + 50) { //líneas abajo
          line(B, 350, 0, 0);
          if (B==350) {
            for (int C = -295; C <= 255; C = C + 50) { //líneas izquierda
              line(-295, C, 0, 0);
              if (C==255) {
                for (int D = -295; D <= 295; D = D + 50) { //líneas derecha
                  line(295, D, 0, 0);
                }
              }
            }
          }
        }
      }
    }
  }


  CuadradosExteriores();

  CuadradoEnElMedio();
  popMatrix();

  image (Referencia, 0, 0);
}



void mouseDragged() {
  float distancia = CalcularDistancia();
  if (distancia < 200 && distancia >=0 && mouseButton == LEFT) { //Alteración de los colores acorde a la distancia
    ColorFondo = 255 - round(distancia/2);
    ColorRect = 0 + round(distancia/4);
  } else if (distancia < 800 && distancia >=0 && mouseButton == RIGHT) { //Alteración del rotate acorde a la distancia
    rotate(distancia/132);
  }
}


void keyPressed() {
  if (key == 'R' || key == 'r') { //Apretar la "R" resetea los valores
    VariableColor = 1;
    ColorFondo = 255;
    ColorRect = 0;
    mouseX = 600;
    mouseY = 200;
    HizoClick = true;
    RotarPantalla = 0;
  }


  if (keyCode == UP || key == 'W' || key == 'w') { //Incremento y decremento de los colores predefinidos
    VariableColor++;
  } else if (keyCode == DOWN|| key == 'S' || key == 's') {
    VariableColor--;
  }
  if (VariableColor == 5) {
    VariableColor = 1;
  } else if (VariableColor == 0) {
    VariableColor = 4;
  }



  if (keyCode == SHIFT) { //Alternativa al click central para AlternarLineasClick
    HizoClick = !HizoClick;
  }

  if (keyCode == LEFT || key == 'A' || key == 'a') { //Alternativa al mouseDragged derecho para el rotate
    RotarPantalla += 0.1;
  } else if (keyCode == RIGHT|| key == 'D' || key == 'd') {
    RotarPantalla -= 0.1;
  }


  if (key == 'Q' &&  ColorFondo >=130 && ColorRect <=145 || key == 'q' &&  ColorFondo >=150 && ColorRect <=150) { //Alternativa al mouseDragged izquierdo para el color
    ColorFondo -= 10;
    ColorRect += 20;
  } else if (key == 'E' && ColorFondo <=255 && ColorRect >= 0 || key == 'e' && ColorFondo <=255 && ColorRect >= 0) {
    ColorFondo += 10;
    ColorRect -= 20;
  }
  
}
