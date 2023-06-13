//Explicación del código:
//Alumno: Mena Ungaro, Alejo (92582/2)

PImage Referencia;
int VariableColor;
int ColorFondo = 255;
int ColorRect = 0;
int tamaño = 65;
boolean HizoClick = true;



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
  // rotate(d/4);



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

  println(mouseX, mouseY);
  popMatrix();



  image (Referencia, 0, 0); 
}




void mouseDragged() { //Alteración de los colores acorde a la distancia
  float distancia = CalcularDistancia();
  if (distancia < 200 && distancia >=0) {
    ColorFondo = 255 - round(distancia/2);
    ColorRect = 0 + round(distancia/4);
  }
}



void keyPressed() { //Apretar la "R" resetea los valores
  if (key == 'R' || key == 'r') {
    VariableColor = 1;
    ColorFondo = 255;
    ColorRect = 0;
    mouseX = 600;
    mouseY = 200;
    HizoClick = true;
  }
}
