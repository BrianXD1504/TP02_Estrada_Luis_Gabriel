abstract class GameObject {
  protected PVector position; 
  protected PImage image; 
  
  // Constructor de GameObject
  GameObject(float x, float y, PImage img) {
    position = new PVector(x, y); // Inicializar posición
    image = img; // Asignar imagen
  }
  
  // Método abstracto para mostrar el objeto en la pantalla
  abstract void display();
  
  // Método abstracto para mover el objeto
  abstract void move(float x, float y);
}
