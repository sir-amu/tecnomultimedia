int tam1 = 65;



void CuadradosVacíos(){
    float d = dist(600, 200, mouseX, mouseY);
  for (int A = 30; A < width+8; A = A + 30) {
    rectMode(CENTER);
    noFill();
    rect(600, 200, tam1+d/1.5 + A, tam1+d/1.5 + A); //Tamaño acorde al cuadrado del medio
  }
  }
  
  
  void CuadradoEnElMedio(){
      float d = dist(600, 200, mouseX, mouseY);
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
 
  }
