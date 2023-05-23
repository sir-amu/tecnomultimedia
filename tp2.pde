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

//Cambio de color acorde al int colorr
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
  
  
  //Rectángulos vácios
for(int A = 30; A < width+8; A = A + 30){
  rectMode(CENTER);
  noFill();
  rect(200, 200, tam1+d/1.5 + A, tam1+d/1.5 + A);
}




    for (int A = 0; A <= width; A = A + 25) {  //líneas arriba
              line(A, 0, 200, 200);  //líneas arriba  
    if(A==width){
      for (int B = 0; B <= width; B = B + 25) { //líneas abajo
          line(200, 200, B, 400);//líneas abajo
                }
     }
    }
                
             

 //               for (int B = 0; B <= width; B = B + 25) { //líneas abajo
 //   line(200, 200, B, 400);//líneas abajo
  //              }       
                

 
//  //Cuadrado del medio
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
  //El click izquierdo cambia los colores
 if (mouseButton == LEFT) {
   colorr++;
  if(colorr == 4){
    colorr = 1;
  }
 }
 //El click derecho resetea los valores
  if (mouseButton == RIGHT) {
    colorr = 1;
    mouseX = 200;
    mouseY = 200;
  }
 }
 
