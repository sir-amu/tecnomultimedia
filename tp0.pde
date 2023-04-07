PImage camion;

void setup(){
  size(800,400);
  camion = loadImage("camionmonstruo.jpg");

}

void draw(){

println (mouseX +"," + mouseY);
  image (camion, 0,0);

//fondo
fill(177,157,132);
square(400, 0,400);


//piso
fill(77,57,30);
beginShape(); vertex(400,321); vertex(493,318); vertex(605,324); vertex(694,317); vertex(800,325); vertex(800,400); vertex(400,400);   
endShape(CLOSE);
  
  
  //Tracción
  fill(0);
beginShape(); vertex(466,189); vertex(466,213); vertex(445,234); vertex(467,251); vertex(466,239); vertex(457,235); vertex(468,225); vertex(471,238); vertex(511,240); vertex(521,225); vertex(505,211); vertex(506,195); vertex(515,175); vertex(466,189);
endShape(CLOSE);
beginShape(); vertex(670,192); vertex(676,214); vertex(669,236); vertex(716,239); vertex(732,222); vertex(747,218); vertex(751,210); vertex(724,200); vertex(715,192); vertex(689,177); vertex(636,177); vertex(670,192);
endShape(CLOSE);
strokeWeight(5);
line(530,266,573,251);
line(532,287,595,260);
line(655,256,606,253);
line(652,272,597,258);
strokeWeight(1);
fill(100);
beginShape(); vertex(514,246); vertex(558,243); vertex(599,273); vertex(638,235); vertex(672,234); vertex(675,217); vertex(532,220); vertex(515,246);
endShape(CLOSE);


//detalle azul
fill(25,56,108);
beginShape(); vertex(416,173); vertex(540,168); vertex(541,143); vertex(550,135); vertex(624,139); vertex(637,141); vertex(663,157); vertex(676,162); vertex(740,164);  vertex(755,174); vertex(760,189); vertex(763,208); vertex(757,213); vertex(752,209); vertex(745,192); vertex(725,180); vertex(707,178); vertex(686,184); vertex(667,201); vertex(686,221); vertex(535,223); vertex(523,200); vertex(505,190); vertex(488,186); vertex(457,198); vertex(440,216); vertex(420,216); vertex(416,173);
endShape(CLOSE);
 
 
 //detalle naranja
fill(229,115,7);
beginShape(); vertex(448,177); vertex(498,172); vertex(540,171); vertex(603,173); vertex(650,182); vertex(676,186); vertex(662,200); vertex(655,221); vertex(612,218); vertex(575,213); vertex(557,200); vertex(534,204); vertex(557,214); vertex(586,220); vertex(558,200); vertex(529,210); vertex(521,197); vertex(518,192); vertex(506,180); vertex(517,183); vertex(535,180); vertex(547,181); vertex(555,179); vertex(527,176); vertex(481,176); vertex(448,177);
endShape(CLOSE);


 //Ventanas
fill(76,79,90);
beginShape(); vertex(660,167); vertex(643,152); vertex(631,143); vertex(593,143); vertex(593,167); vertex(660,167);
endShape(CLOSE);
square(560,144,23);

 
//ruedas grandes
    fill(38,41,40);
  circle(491, 280, 90);
  circle(694, 274, 90);
//ruedas pequeñas
 fill(99,100,101);
    circle(491, 280, 30);
  circle(694, 274, 30);

textSize(19);
fill(192,200,211);
 text("Big Foot", 560, 196);
  }
  
