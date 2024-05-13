// Clase abstracta GameObject
abstract class GameObject {
  protected PVector position; // Posición del objeto
  protected PImage image; // Imagen del objeto
  
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

// Clase Nave
class Nave extends GameObject {
  ArrayList<Bala> balas;
  
  Nave(float x, float y, PImage img) {
    super(x, y, img);
    balas = new ArrayList<Bala>();
  }
  
  void display() {
    image(image, position.x, position.y);
    for (Bala bala : balas) {
      bala.display();
    }
  }
  
  void move(float x, float y) {
    position.x += x;
    position.y += y;
  }
  
  void readCommand() {
    if (keyPressed && key == ' ') {
      // Calcula la posición de la bala para que aparezca en el centro de la nave
      float x = position.x + (image.width / 2);
      float y = position.y - (image.height / 2);
      balas.add(new Bala(x, y)); // Crea una nueva bala en la posición calculada
    }
  }
}

// Clase Asteroide
class Asteroide extends GameObject {
  float speed;
  
  Asteroide(float x, float y, PImage img, float spd) {
    super(x, y, img);
    speed = spd;
  }
  
  void display() {
    image(image, position.x, position.y);
  }
  
  void move(float x, float y) {
    position.x += x;
    position.y += speed;
    if (position.y > height) {
      position.y = -100;
      position.x = random(width);
    }
  }
}

// Clase Bala
class Bala extends GameObject {
  float speed = 10; // Velocidad de la bala
  float diameter = 20; // Diámetro de la bala

  Bala(float x, float y) {
    super(x, y, null); // No se usa la imagen para la bala
  }
  
  void display() {
    fill(255);
    ellipseMode(CENTER);
    ellipse(position.x, position.y, diameter, diameter); // Dibujar bala como círculo
  }
  
  void move(float x, float y) {
    position.y -= speed;
    if (position.y < 0) {
      // Destruir la bala si sale de la pantalla
    }
  }
  
  // Método para verificar colisión con un asteroide
  boolean colision(Asteroide asteroide) {
    // Calcular si la bala intersecta con el asteroide
    float distancia = dist(position.x, position.y, asteroide.position.x, asteroide.position.y);
    return distancia < diameter / 2 + max(asteroide.image.width, asteroide.image.height) / 2;
  }
}


Nave nave;
ArrayList<Asteroide> asteroides;
PImage naveImage, asteroideImage;

void setup() {
  size(800, 800);
  naveImage = loadImage("nave.png");
  asteroideImage = loadImage("asteroide.png");
  
  // Cambiar el tamaño de la nave
  naveImage.resize(180, 150);
  
  nave = new Nave(width / 2, height - 140, naveImage);
  asteroides = new ArrayList<Asteroide>();
  for (int i = 0; i < 18; i++) {
    asteroides.add(new Asteroide(random(width), random(-height, 0), asteroideImage, random(1, 3)));
  }
  
  // Cambiar el tamaño de los asteroides
  asteroideImage.resize(90, 90);
}

void draw() {
  background(0);
  nave.move((keyPressed && (key == 'd' || key == 'D')) ? 5 : (keyPressed && (key == 'a' || key == 'A')) ? -5 : 0, 0);
  nave.display();
  
  // Iterar sobre las balas
  for (int i = nave.balas.size() - 1; i >= 0; i--) {
    Bala bala = nave.balas.get(i);
    bala.move(0, -5); // Mover la bala hacia arriba
    
    // Verificar colisión con los asteroides
    for (int j = asteroides.size() - 1; j >= 0; j--) {
      Asteroide asteroide = asteroides.get(j);
      if (bala.colision(asteroide)) {
        nave.balas.remove(i); // Eliminar la bala
        asteroides.remove(j); // Eliminar el asteroide
        break; // Salir del bucle interno
      }
    }
    
    // Dibujar la bala
    bala.display();
  }
  
  // Mover y mostrar los asteroides
  for (Asteroide ast : asteroides) {
    ast.move(0, 1);
    ast.display();
  }
}

void keyPressed() {
  if (key == ' ') {
    nave.readCommand(); // presiona la barra espaciadora
  }
}
