PImage tren, boton;
int numBoton = 1;
int numTren = 1;

PFont mustica;

int segundos = 0;

int vel1 = -1, vel2 = 1;
int posX;
int pos1, pos2;
int pos3;
int posYT;



void setup(){
  size(640,480);
   tren = loadImage("tren" + numTren + ".jpg");
   boton = loadImage("boton" + numBoton + ".png");
   mustica = loadFont("MusticaPro-SemiBold-48.vlw");
    textFont(mustica, 16);
    
  posX = 680;
  pos1 = 650;
  pos2 = 500;
  pos3 = 0;
}




void draw(){
 
  if (numTren == 2 && segundos >= 11) {
    numTren++;
    tren = loadImage("tren" + numTren + ".jpg");
  }else if (numTren == 3 && segundos >= 20){
     numTren++;
    tren = loadImage("tren" + numTren + ".jpg");
  }
  
    if (frameCount % 60 == 0 && numTren >= 2) {
    segundos++;
    }
  println(numTren, segundos);
  image (tren, 0,0);

 

//Secuencia pantallas
    if(numTren == 1){
     image (boton, 280,350);
  } else if (numTren == 2){
    text("¿Qué significa Maglev? \n Es la abreviatura de “levitación magnética”. \n Por lo que un tren Maglev es un tren que viaja sin tocar las “vías”. \n Ya que flota sobre su superficie con la levitación magnética.", pos1,50);
    pos1 = pos1 + vel1;
      } else if (numTren == 3 && segundos >= 12){
text("El primer y único tren de levitación magnética comercial  \n de alta velocidad en funcionamiento en este momento es el  \n tren Shanghai Maglev en China.", 10, pos2);
pos2 = pos2 + vel1;
} else if (numTren == 4 && segundos >= 20){
        fill(0, 408, 612, pos3);
text("Principio básico de los trenes de levitación magnética: \n Los trenes Maglev tienen que realizar las siguientes funciones  \n para operar en altas velocidades: Levitación, Propulsión y Guiado lateral.  \nEs un sistema genial, pero cuesta tanto construirlo y ejecutarlo  \nque no es una tecnología realmente viable en este momento.", 25, 20);
pos3 = pos3 + 2;

}  
    

    
    

    

}







void mousePressed(){
  if((mouseButton == LEFT) && mouseX > 280 && mouseX < 350 && mouseY > 350 && mouseY < 420){
    numBoton++;
   boton = loadImage("boton" + numBoton + ".png");
}
}





void mouseReleased(){
  if(mouseX > 280 && mouseX < 350 && mouseY > 350 && mouseY < 420){
     numTren++;
   tren = loadImage("tren" + numTren + ".jpg");

}

}

  
