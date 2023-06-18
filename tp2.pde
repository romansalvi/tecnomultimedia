//Román Salvi
//Comisión 2
//tp2

PImage ilu;
float bg;
float mov;

void setup(){
  size( 800 , 400 );
  background(234);
  ilu = loadImage ("ilusionop.jpg");
  
}

void draw(){
  
  
  float bg = map( mouseX, 400, 800, 10, 255 );  //cambio de background con el mouse y map
  float bg2 = map( mouseX, 400, 800, 255, 10 );
  background(bg2, bg, bg);

  Colores(); //Función que retorna valor
  
  Ilusion(); //Función dibujo
 
  
  image ( ilu, 0, 0 );   

}

void keyPressed(){
  if (key == ' '){
    mov = 0;}
    mov = mov + 0.2;
}

//funciones--------------------------------------------
void Colores(){

  if (mouseX >= 600){
    println("Celeste");
  }else{
    println("Rojo");}
}

void Ilusion(){
  mov = mov + 0.2;
  
  stroke(0);
  strokeWeight(4);
  for ( int i = 366; i < 800; i +=15){
    for ( int j = -6; j < 400; j +=100){
  line( i+mov, j, i+ 50, j+ 48); 
   
    }
  }

  for ( int x = 366; x < 800; x +=15){
    for ( int y = 44; y < 400; y +=100){
  line( x + 50, y, x + mov, y+ 48);
  
    }
  }
}
