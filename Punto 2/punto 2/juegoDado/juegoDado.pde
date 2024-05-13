private Tablero tablero;
private Dado dado;
private Hud hud;
PImage[] imagenes;
int imagen = 0;
int numeroDado;



public void setup(){
  size(650, 430);
  tablero = new Tablero();
  tablero.Tablero(new PVector(40,60));
  dado = new Dado();
  imagenes = new PImage[6];
  hud = new Hud(dado);


  
  
  int img = 0;
  do {
    imagenes[img] = loadImage("cara" + img + ".png");
    img++;
   } while (img < imagenes.length);
   
}

public void draw(){
  background(0);
  tablero.display();
  hud.display();
  image(imagenes[dado.getIndiceImagen()], width/2, height/2,200,200);
  imageMode(CENTER);

}

void keyReleased() {
    if (key == 'r' || key == 'R') {
        dado.display();
        hud.display();
        int indiceImg = dado.getIndiceImagen();
        numeroDado = indiceImg + 1;
        println("El Numero del dado es: " + numeroDado);        
    }
}
