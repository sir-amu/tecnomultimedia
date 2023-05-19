PImage image;
int tam1 = 65;
int colorr;

//distancia entre cada línea = 35
//rectángulo 65x65
//distancia rectángulos vacíos 30
void setup() {

  size(400, 400);
image = loadImage ("tunel.jpg");
colorr = 1;
}

void draw() {
 //image (image,0,0);

    if( colorr == 1){
    background(0, 255, 0);
 }else if (colorr == 2){
    background(255, 255, 0);
 }else if (colorr == 3){
    background(0, 255, 255);
     }else if (colorr == 4){
    background(255, 255, 255);
}
   
   
  float d = dist(200, 200, mouseX, mouseY);
  println (d);
  
  
  //rectángulos vacíos
for(int A = 30; A < width+7; A = A + 30){
  rectMode(CENTER);
  noFill();
  rect(200, 200, tam1+d/1.5 + A, tam1+d/1.5 + A);
}



  //  líneas arriba
   for (int B = 0, C = 168; B < width; B = B + 30, C = C + 5) {
    line(B, 0, C, 168);
  }
 
 
   //  líneas abajo
   for (int D = 0, E = 168; D < width; D = D + 30, E = E + 5) {
    line(D, 400, E, 233);
  }
 
 
   //  líneas izquierda
   for (int F = 35; F < width; F = F + 30) {
    line(0, F, 200, 200);
  }
  
  
     //  líneas derecha
   for (int G = 35; G < width; G = G + 30) {
    line(400, G, 200, 200);
  }
 
 
  //Cuadro azul medio
  rectMode(CENTER);
 if( colorr == 1){
    fill(255, 0, 0);
 }else if (colorr == 2){
    fill(0, 0, 255);
 }else if (colorr == 3){
    fill(255, 0, 255);
     }else if (colorr == 4){
    fill(255, 255, 255);
}
  rect(200, 200, tam1+d/1.6, tam1+d/1.6);
  
}


void mousePressed(){
 if (mouseButton == LEFT) {
   colorr++;
  if(colorr == 4){
    colorr = 1;
  }
 }
 
  if (mouseButton == RIGHT) {
    colorr = 1;
    mouseX = 200;
    mouseY = 200;
  }
 }
 
