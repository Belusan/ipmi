//Santos Belén
PImage fondo; 
void setup() {
   size(800, 400);
   
   fondo = loadImage("pajaro.png");
  
}
  void draw() {
  background(40,170, 40);
  
fill (180, 80, 10);

   image(fondo,  0,  0,  400,  400);
 rect(500, 120, 12, 300); //rama vertical
 
 noStroke();
fill (230);
ellipse(610, 220, 150, 210); //cuerpo
 
  
fill (240);
 triangle (600, 45, 540, 45, 580,90); //pico arriba
 triangle (600, 50, 540, 50, 580, 90); //pico abajo
 
 fill(255,0,0);
  ellipse(610,130,80,60); //cuello rojo
 fill(0);
 ellipse(610, 80, 85, 110); //cabeza
 fill(255,0,0) ;
 
 triangle (600, 200, 580, 150, 640, 150); //cuello
 
fill (180, 80, 10);
 rect(500,270,250,12); //rama horizontal

fill(230);
translate(20, 20); 
ellipse(580, 330, 40, 80); //cola izq

fill(230);
translate(20, 20); 
ellipse(590, 300, 40, 80); //cola der

 fill (60);
   ellipse (560,15,22,18);// ojo izquierdo
   fill (0);
   ellipse (560,15,18,15);// ojo izquierdoo
 
 
 //profe no entiendo cual es el error por el cual no me aparecen las líneas al ejectar, quise armar las patitas con lineas pero modifico las coordenadas y siguen sin aparecerme
 fill (0);
 line (400, 200,600,400);
 
 fill (0);
 line (580, 250,610,350);
 
 
}
