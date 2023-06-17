
void mousePressed() {
  HizoClick = AlternarLineasClick(); //Se actualiza la variable al interactuar con mouse
}



float CalcularDistancia() {
  float distancia = dist(600, 200, mouseX, mouseY);
  return distancia;
}



boolean AlternarLineasClick() {
  if (!HizoClick && mouseButton == CENTER) {
    return true;
  } else if (HizoClick && mouseButton == CENTER) {
    return false;
  }
  return HizoClick;
}



void CuadradosExteriores() {
  strokeWeight(1);
  stroke(0);
  float distancia = CalcularDistancia();
  for (int A = 30; A < width+8; A = A + 30) {
    rectMode(CENTER);
    noFill();
    rect(0, 0, tamaño+distancia/1.5 + A, tamaño+distancia/1.5 + A); //Tamaño acorde al cuadrado del medio
  }
}



void CuadradoEnElMedio() {
  float distancia = CalcularDistancia();
  rectMode(CENTER);
  if ( VariableColor == 1) { //Dependiendo de la variante, cambia de color
    fill(255, ColorRect, ColorRect);
  } else if (VariableColor == 2) {
    fill(ColorRect, ColorRect, 255);
  } else if (VariableColor == 3) {
    fill(255, ColorRect, 255);
  } else if (VariableColor == 4) {
    fill(255, 255, 255);
  }
  strokeWeight(8);
  stroke(0, 0, 0, 120);
  rect(0, 0, tamaño+distancia/1.6, tamaño+distancia/1.6); //Su tamaño cambia acorde a la distancia del mouse
}
