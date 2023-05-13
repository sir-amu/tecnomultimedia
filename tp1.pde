PImage tren, boton;
int numBoton = 1;
int numTren = 1;

PFont mustica;

int segundos = 0;

int vel1 = -1, vel2 = 1;
int pos1, pos2;
int pos3;
int pos4; 
int pos5;
int pos6;
float tamTexto;


void setup(){
  size(640,480);
   tren = loadImage("tren" + numTren + ".jpg");
   boton = loadImage("boton" + numBoton + ".png");
   mustica = loadFont("MusticaPro-SemiBold-48.vlw");
    textFont(mustica, 16);
    

  pos1 = 650;
  pos2 = 500;
  pos3 = 0;
  pos4 = 0;
  pos5 = 650;

  tamTexto = 2;
}




void draw(){
 
  if (numTren == 2 && segundos >= 12) {
    numTren++;
    tren = loadImage("tren" + numTren + ".jpg");
  }else if (numTren == 3 && segundos >= 21){
     numTren++;
    tren = loadImage("tren" + numTren + ".jpg");
      }else if (numTren == 4 && segundos >= 27){
     numTren++;
    tren = loadImage("tren" + numTren + ".jpg");
      }else if (numTren == 5 && segundos >= 37){
     numTren++;
    tren = loadImage("tren" + numTren + ".jpg");
          }else if (numTren == 6 && segundos >= 48){
     numTren++;
    tren = loadImage("tren" + numTren + ".jpg");
    numBoton++;
boton = loadImage("boton" + numBoton + ".png");

                  }else if (numTren == 7 && segundos >= 48){
  }
  
    if (frameCount % 60 == 0 && numTren >= 2) {
    segundos++;
    }
  println(numTren, segundos, numBoton);
  image (tren, 0,0);

if (numTren == 7 && tamTexto <= 14) {
  tamTexto = tamTexto + 00.1;
 // image (boton, 240,350);
}

if (tamTexto >= 14 && segundos >= 52) {
  image (boton, 240,350);
}
 



//Secuencia pantallas
    if(numTren == 1){
     image (boton, 280,350);
  } else if (numTren == 2){
    text("¿Qué significa Maglev? \n Es la abreviatura de “levitación magnética”. \n Por lo que un tren Maglev es un tren que viaja sin tocar las 'vías'. \n Ya que flota sobre su superficie con la levitación magnética, \n reduciendo la fricción y permitiendo alcanzar velocidades muy altas.", pos1,50);
    pos1 = pos1 + vel1;
      } else if (numTren == 3 && segundos >= 12){
text("El primer y único tren de levitación magnética comercial \n de alta velocidad en funcionamiento en este momento es el \n tren Shanghái Maglev en China. \n Conecta el aeropuerto de Pudong con el centro de Shanghái \n y recorre una distancia de 30 km en tan solo 8 minutos.", 10, pos2);
pos2 = pos2 + vel1;
} else if (numTren == 4 && segundos >= 21){
        fill(0, 408, 612, pos3);
text("Principio básico de los trenes de levitación magnética: \n Los trenes Maglev tienen que realizar las siguientes funciones  \n para operar en altas velocidades: Levitación, Propulsión y Guiado lateral.", 25, 40);
pos3 = pos3 + 1;
} else if (numTren == 5 && segundos >= 27){
        fill(0, 408, 612, pos4);
text("La levitación se logra gracias a un sistema de imanes en la vía y  \n en el tren,  que se repelen mutuamente y crean una fuerza de levitación. \n La propulsión se logra a través de un sistema de imanes en el tren \n que interactúan con los imanes en la vía, creando un campo magnético \nque impulsa al tren hacia adelante. \n El guiado lateral se logra gracias a un sistema de imanes en los lados \n del tren que interactúan con los imanes en la vía, manteniendo el \n tren centrado y evitando que se desvíe.", 25, 20);
pos4 = pos4 + 1;
      } else if (numTren == 6 && segundos >= 37){
        fill(255);
text("Gracias a este sistema, los trenes Maglev \n pueden alcanzar más de 400km/h de velocidad. \n Y una sorprendente velocidad máxima de 600km por hora.", pos5, 50);
pos5 = pos5 + vel1;
      } else if (numTren == 7 && segundos >= 48){
                          fill(255);
                textSize(tamTexto);
text(" A pesar de tener el potencial de revolucionar la forma en la que viajamos, \n presenta muchas complicaciones, tales como su costo de construcción, \n mantenimiento e infraestructura, por lo que no es una tecnología realmente \n viable en este momento. \n Todavía quedan muchos desafíos por superar. Pero quién sabe, quizás \n en un futuro cercano podrá convertirse en una opción de transporte viable a gran escala. \n  Por el momento, tendremos que conformarnos con los trenes normales.", 30, 200);
}  
    

    
    

    

}







void mousePressed(){
  if((mouseButton == LEFT) && mouseX > 280 && mouseX < 350 && mouseY > 350 && mouseY < 420 && numTren <= 1){
    numBoton++;
   boton = loadImage("boton" + numBoton + ".png");
} else if ((mouseButton == LEFT) && mouseX > 240 && mouseX < 400 && mouseY > 256 && mouseY < 416 && numTren <= 7){
numBoton++;
boton = loadImage("boton" + numBoton + ".png");
     image (boton, 240,350);;
}
}

void mouseReleased(){
  if(mouseX > 280 && mouseX < 350 && mouseY > 350 && mouseY < 420 && numTren <= 1){
     numTren++;
   tren = loadImage("tren" + numTren + ".jpg");
} else if (mouseX > 280 && mouseX < 350 && mouseY > 350 && mouseY < 420 && numTren <= 7){
numTren = numTren - 5;
tren = loadImage("tren" + numTren + ".jpg");
segundos = 0;
  pos1 = 650;
  pos2 = 500;
  pos3 = 0;
  pos4 = 0;
  pos5 = 650;
numBoton = 2;
numTren = 2;
  tamTexto = 2;
}

}

 
