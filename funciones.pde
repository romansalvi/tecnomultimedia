void imgtxt(int index, int x, int y, int ancho, int alto) {
  image(images[index], 0, 0 );
  textSize(22);
  fill(255);
  text(textos[index], x, y, ancho, alto);
}

void btnsig(int xs, int ys) {
 
  fill(180);
  rect(xs-8, ys-26, 100, 40);
  fill(0);
  text("siguiente", xs, ys);

}

void btnmenu(int xm, int ym){
  fill(180);
  rect(xm-14, ym-26, 80, 40);
  fill(0);
  text("Menú", xm, ym);
}
