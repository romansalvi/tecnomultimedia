PImage menu;
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage reinicio;

PFont miFuente;

int marcaEnElTiempo;
int estado;
float opacidad;
float opacidad2;

void setup(){
  size( 640, 480 );
  textAlign( CENTER, CENTER );
  textSize( 50 );
  fill(200);
  
  menu = loadImage("imgmenu.jpeg");
  img1 = loadImage("img1.jpeg");
  img2 = loadImage("img2.jpeg");
  img3 = loadImage("img3.jpeg");
  img4 = loadImage("img4.jpeg");
  reinicio = loadImage("imgreinicio.jpeg");
 
  miFuente = loadFont("PerpetuaTitlingMT-Bold-48.vlw");
 
  opacidad = 0;
  opacidad2 = 0;
  estado = 0;
}

void draw(){
  
  int diferenciaTemporal = millis() - marcaEnElTiempo;
  
  
  //-------------maquina de estados----------------------------
  if( estado == 0 ){  //-------------------MENU-------------------
  
    image( menu, 0, 0 );
    fill(0);
    textFont(miFuente);
    text( "Comenzar", 260, 400 );
    fill(220);
    if( dist( 460, height/6*5, mouseX, mouseY) < 70/2 ){
    fill(120);}
    circle( 460, height/6*5, 70 );
  
    
    //
   
    //
  }else if (estado == 1 ){ //-------------------P1-------------------
    background(0);
    image( img1, 144, 0 );
    fill(0);
    textSize( frameCount/3 );
    text( "él es", width/2, 60 );     
    text( "Bastian", width/2, 440);
    
    
    //
    if( diferenciaTemporal >= 8*1000 ){  //8 segundos
      estado = 2;
      marcaEnElTiempo = millis();      
    }   
    //
  }else if (estado == 2 ){ //-------------------P2-------------------
    
    image( img2, 0, 0 );
    fill(200);
    textSize( 45 );
    text( "Tiene 11 años", frameCount/3 , 120 );
    text( "y su raza \n es Beagle", frameCount/3, 190 );
      if(frameCount > 560)
        frameCount = 560; 
    //
    if( diferenciaTemporal >= 8*1000 ){  //8 segundos
      estado = 3;
      marcaEnElTiempo = millis();      
    }   
    //
  }else if (estado == 3 ){ //-------------------P3-------------------
  
    
    opacidad = opacidad +0.8;
    image( img3, 0, 0 );
    fill(255, opacidad);
    textSize(25);
    text( "Es mimoso,", 500, 220 );
    text( "glotón", 480, 250 );
    text("y le gusta", 504 , 280);
    text("dormir la siesta", 510 , 310);
    //
    if( diferenciaTemporal >= 8*1000 ){  //8 segundos
      estado = 4;
      marcaEnElTiempo = millis();      
    }   
    // 
  }else if (estado == 4 ){ //-------------------P4-------------------
    
    opacidad2 = opacidad2 + 0.8; 
    image( img4, 0, 0 );
    fill(200, opacidad2);
    textSize( 30 );
    text( "Es medio plaga,\n le gusta escaparse", 450, 380 );
    //
    if( diferenciaTemporal >= 8*1000 ){  //8 segundos
      estado = 5;
      marcaEnElTiempo = millis();      
    }   

}else if (estado == 5 ){ //-------------------P5-------------------
    
    image( reinicio, 0, 0 );
    fill( 0 );
    textSize (22);
    text( " ¡Gracias por ver!", 490, 220);
    textSize (32);
    text( "Reiniciar", 454 , 390 );
    fill(160,0,0);
    if( dist(570, 390, mouseX, mouseY) < 50/2 ){
     fill(100,0,0);}
    circle( 570, 390, 50 );
    
  }
}


void mousePressed(){
if( estado == 0 ){
    if( dist( 460, height/6*5, mouseX, mouseY) < 70/2 ){
      estado = 1;
      frameCount = 0;
      
    }
  }
  if( estado == 5 ){
     if( dist(570, 390, mouseX, mouseY) < 50/2 ){
     estado = 0 ;
     opacidad = 0;
     opacidad2 = 0;
     
  }
}

}
