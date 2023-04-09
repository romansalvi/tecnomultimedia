
//------------ TP0 Román Salvi ---------------


//1) crear el espacio en memoria donde cargar la imagen
PImage gato;

void setup() {
  size( 800, 400 );
  
  //2) cargar la imagen en mi "variable" llamada gato
  gato = loadImage("gatogris.jpg"); 
}

void draw() {
  background( 183, 174, 157 );
  
  
  //----------------------------------------------------------------------------------
  
noStroke();
  //PISO
  fill( 211, 179, 173);
  rect( 0, 340, 400, 400);
 
noStroke();
  //-------------CUERPO----------------
      //Brazo de la IZQ
      fill( 120 );
      rect( 30, 314, 200, 35);
      //Patita
      ellipse( 106, 326, 64, 48);
      ellipse( 74, 326, 70, 34);
      ellipse( 38, 331, 64, 36);

stroke(0);
      line(20, 344, 26, 330);
      line(12, 340, 16, 329);
      
noStroke();      
      //TORSO
      fill( 150 );
      ellipse( 354, 260, 240, 200);
      ellipse( 210, 270, 240, 168);
       //pata trasera
       fill(139);
      ellipse( 390, 290, 100, 190);
       //Brazo de la DER
      fill( 135 );
      ellipse( 318, 318, 80, 120);
      rect( 160, 338, 194, 54 );
      ellipse( 252, 355, 120, 54);
      ellipse( 146, 365, 94, 55);
stroke(0);
strokeWeight(2);
      line( 118, 386, 122, 368);
      line( 108, 378, 112, 364);
     
noStroke();      
  //-------------CARA-----------------
  fill( 135 );
  ellipse( 218, 166, 250, 230);

     
      //Oreja IZQ
      //        arriba   izq       der
      fill( 140);
      triangle( 96, 30, 106, 120, 180, 60);
      
      //Oreja DER
      //        arriba   derecha    izq  
      triangle( 330, 30, 330, 110, 240, 60);
stroke(0);

      //Interior oreja
      fill(40);
      
      //derecha
      //        arriba   der       izq    
      triangle( 328, 34, 326, 106, 264, 68);
      
      //izquierda
      //        arriba  izq       der     
      triangle( 100, 36, 110, 112, 152, 74);

      //OJOS
      //parpados
      fill(30);
      ellipse( 162, 160, 43, 34);
      ellipse( 262, 160, 43, 34);
      //ojo izq
      fill( 161, 130, 82);
      ellipse( 162, 160, 34, 34);  
      //ojo der
      ellipse( 262, 160, 34, 34);
      //pupila
      fill(0);
      ellipse( 162, 158, 12, 24);
      ellipse( 262, 158, 12, 24);

      //ocico
      arc( 208, 206, 14, 26, 0, PI);
      ellipse( 208, 204, 28, 10);
     
      //boca
      fill(140);
      arc( 236, 220, 54, 42, 0, PI);
      arc( 180, 220, 54, 42, 0, PI);     
      arc( 208, 240, 40, 20, 0, PI);
      
noStroke();
      fill(60);
      rect( 207, 220, 3, 8);
      //        izq      medio      der
      triangle( 202, 232, 208, 224, 214, 232);
stroke(0);     
      
      //BIGOTES
      //izq
      line( 188, 214, 112, 226);
      line( 188, 216, 110, 238);  
      line( 188, 220, 110, 250);
      
      //der
      line( 228, 214, 295, 236);
      line( 228, 216, 298, 248);
      line( 228, 220, 298, 260);
     
//3) dibujar la imagen, posicionándola donde es deseado     
  image( gato, 400, 0, 400, 400 );

}
