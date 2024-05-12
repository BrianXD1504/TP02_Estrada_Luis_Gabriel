Shooter shooter; 
PImage shooterNave, asteroide; 

class Shooter extends GameObject {
  protected int mostrarVidaNave; // Vidas del Shooter
  
  // Constructor de Shooter
  Shooter(float x, float y, PImage img, int vidasIniciales) {
    super(x, y, img); // Llamada al constructor de la clase base
    mostrarVidaNave = vidasIniciales; // Inicialización de vidas
  }
  
  // Método para mostrar al Shooter en la pantalla
  public void display() {
    image(image, position.x, position.y); // Mostrar la imagen del Shooter
  }
  
  // Método para mover al Shooter
  public void move(float x, float y) {
    position.x += x; // Mover en el eje x
    position.y += y; // Mover en el eje y
  }
}
