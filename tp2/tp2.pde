//Santos Belen. 
// tp2. comisión 1

/*profe, le envío lo que pude realizar hasta el sábado, por cuestiones personales pude sentarme a hacerlo recien el sábado y obviamente no me alcanzó el tiempo para poder desarrollar todo lo pedido por
el tp, además que hay muchas cosas que no me salieron y no sé bien porqué y eso me trabó un montón (por ejemplo que me aparezcan las imágenes cargadas). agradezco que al menos pueuda realizar una visada 
a mi tp aun cuando no cumple con lo requerido y está fuera de termino, muchas gracias. 
*/

PFont fuente;
String intro;
String pantallaActual = "nubes";
PImage fondo, familia, logo, padres, hijos;
String estado;
float posX, posY; 
int segundos;



  void setup() {
  size(640, 480);
 
  fondo = loadImage("nubes.jpg");
    pantallaActual = "nubes";
  logo = loadImage("logo.png"); //pantalla1
   familia = loadImage("familia.png"); //pantalla2
   padres = loadImage("padres.png"); //pantalla3
   hijos = loadImage("hijos.png");// pantalla4

fuente = loadFont("Arial.vlw");
  textFont(fuente, 25 );
  estado ="LOS SIMPSONS";
  textSize(40);
  
 
}

void draw() {
  background(0, 200, 250);
   image(fondo, 0, 0, 640, 480); 
    
  //pantalla 1
 if( pantallaActual.equals("pantalla1")){
   posX = 0; 
  posY = height / 2 - logo.height ; 
 image(logo, width - logo.width/2, height/2 - logo.height/2);
} 

if( pantallaActual.equals("pantalla2")){
   posX = 0; 
  posY = height / 2 - familia.height ; 
 image(familia, width - familia.width/2, height/2 - familia.height/2);
} 


if( pantallaActual.equals("pantalla3")){
   posX = 0; 
  posY = height / 2 - padres.height ; 
 image(padres, width - padres.width/2, height/2 - padres.height/2);
} 


if( pantallaActual.equals("pantalla4")){
   posX = 0; 
  posY = height / 2 - hijos.height ; 
 image(hijos, width - hijos.width/2, height/2 - hijos.height/2);
} 


else if(pantallaActual.equals("pantalla1")){
  image(logo,50,50,width,height);
}
else if(pantallaActual.equals("pantalla2")){
  image(familia,50,50,width,height);
}
else if(pantallaActual.equals("pantalla3")){
  image(padres,0,0,width,height);
}
else if(pantallaActual.equals("pantalla4")){
  image(hijos,0,0,width,height);
}
fill(100);
  text(segundos, 400, 50);
  
  if (estado.equals("titulo")) {
    fill(255, 255, 0);
    text("LOS SIMPSONS", 150, 450); //ubicacion del titulo
  } 
  else if (estado.equals("segunda")) {
    fill(255, 255, 0);
    text("La familia", 200, 420); // pantalla 2
  } 
  else if (estado.equals("tercera")) {
    fill(255, 255, 0);
    text("Los padres", 200, 420); // pantalla3
  }
  else if (estado.equals("cuarta")) {
    fill(255, 255, 0);
    text("Los hijos", 200, 420); //pantalla4
  }
  
  
  
 // TEXTOS
  if (frameCount%60 == 0) {
    segundos++;
  }
  if (segundos<4) {
    estado = "titulo";
  } else if (segundos>=4 && segundos<= 7) {
    estado = "segunda";
  } else if (segundos > 7 && segundos <10) {
    estado = "tercera";
  } else {
    estado = "fin";
  }

}

// AL HACER CLICK, SE REINICIA HACIA LA PRIMERA PANTALLA
void mousePressed() {
  estado = "inicio";
  segundos = 0;
}
