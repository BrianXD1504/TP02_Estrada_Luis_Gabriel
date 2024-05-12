ArrayList<Asteroide> asteroides; // ArrayList de asteroides
class Asteroide extends GameObject {
  float speed; // Velocidad de los asteroides
  
  // Constructor de Asteroide
  Asteroide(float x, float y, PImage img, float spd) {
    super(x, y, img); 
    speed = spd; // Inicialización de velocidad
  }
  
  
  void display() {
    image(image, position.x, position.y); // Mostrar la imagen del Asteroide
  }
  
  void move(float x, float y) {
    position.x += x; // Mover en el eje x (no controlado por JoyPad)
    position.y += speed; // Mover hacia abajo a una velocidad constante
    if (position.y > height) { // Si el Asteroide sale de la pantalla
      position.y = -100; // Reiniciar su posición en la parte superior
      position.x = random(width); // Colocarlo en una posición aleatoria en el eje x
    }
  }
}
