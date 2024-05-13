PImage[] puntos; // Array para almacenar las imágenes de los puntos
int ultimoNumero = 0; // Variable para almacenar el último número mostrado
int tableroX = 50, tableroY = 25; // Posición X y Y del tablero azul 
int tableroAncho = 740, tableroAlto = 300; // Ancho y Alto del tablero azul
int puntoTamaño = 150; // Tamaño de las imágenes de los puntos
HUD hud; // Declaración de la instancia de HUD

void setup() {
  size(850, 350);
  
  // Inicializar el array de imágenes de puntos
  puntos = new PImage[6];
  for (int i = 0; i < puntos.length; i++) {
    puntos[i] = loadImage("punto" + (i+1) + ".png");
    // Redimensionar las imágenes de los puntos al tamaño deseado
    puntos[i].resize(puntoTamaño, puntoTamaño);
  }

  // Inicializar HUD
  hud = new HUD();
  
  reiniciarJuego(); // Iniciar el juego
}

void draw() {
  // Mostrar el último número lanzado utilizando HUD
  hud.mostrarNumero(ultimoNumero, tableroX + tableroAncho - 10, tableroY + 10);
}

void keyPressed() {
  // Reiniciar el juego cuando se presiona la tecla "r"
  if (key == 'r' || key == 'R') {
    reiniciarJuego();
  }
}

void reiniciarJuego() {
  tableroazul(); // Dibujar el tablero azul
  lanzarDado(); // Lanzar el dado al iniciar 
}

void tableroazul() {
  background(0); // Limpiar el lienzo
  fill(#3E84E3); // Color azul
  rect(tableroX, tableroY, tableroAncho, tableroAlto); // Tablero azul
}

void lanzarDado() {
  // Generar un número aleatorio entre 1 y 6
  int nuevoNumero = int(random(1, 7));
  // Actualizar el último número lanzado
  ultimoNumero = nuevoNumero;
  // Mostrar la imagen correspondiente al número lanzado
  imageMode(CENTER);
  image(puntos[nuevoNumero - 1], tableroX + tableroAncho/2, tableroY + tableroAlto/2);
}

class HUD {
  void mostrarNumero(int valor, int x, int y) {
    String[] numerosEnPalabras = {"", "uno", "dos", "tres", "cuatro", "cinco", "seis"}; // Array para traducir números a palabras
    textSize(32);
    fill(255);
    textAlign(RIGHT, TOP);
    text(numerosEnPalabras[valor], x, y); // Mostrar el número del dado en la posición especificada
  }
}
