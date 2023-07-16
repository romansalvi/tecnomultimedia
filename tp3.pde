int estado;
int c = 13;


PImage[] images = new PImage[c];
String[] textos = new String[c];

void setup() {
  size (600, 600);
  textSize(18);
  estado = 0;

  textos = loadStrings("textos.txt");

  for ( int i = 0; i < c; i++ ) {
    images[i] = loadImage( "images/p" + i + ".jpg" );
  }
}
void draw() {

  switch(estado) {
  case 0:

    image( images[0], 0, 0 );
    text("Comenzar", 420, 560);
    break;
  case 1:
    imgtxt(1, 38, 454, 530, 200);
    btnsig(480, 580);

    break;
  case 2:
    imgtxt(2, 30, 340, 340, 200);
    

    break;
  case 3:
    imgtxt(3, 30, 400, 540, 200);
    btnsig(480, 580);

    break;
  case 4:
    imgtxt(4, 10, 480, 430, 200);

    break;
  case 5:
    imgtxt(5, 84, 380, 450, 200);
    btnsig(480, 580);
    break;
  case 6:
    imgtxt(6, 94, 36, 510, 160);
    btnsig(480, 580);
    break;
  case 7:
    imgtxt(7, 10, 350, 560, 240);
    btnmenu(480, 580);

    break;
  case 8:
    imgtxt(8, 4, 300, 500, 200);
    btnmenu(480, 580);
    break;
  case 9:
    imgtxt(9, 50, 80, 500, 200);
    btnsig(480, 580);

    break;
  case 10:
    imgtxt(10, 40, 420, 240, 200);
    

    break;
  case 11:
    imgtxt(11, 50, 50, 500, 200);
    btnmenu(480, 580);

    break;
  case 12:
    imgtxt(12, 20, 20, 500, 200);
    btnmenu(480, 580);
    break;
  }
}

void keyPressed() {

  if (key == ' ');
  estado++;
}
