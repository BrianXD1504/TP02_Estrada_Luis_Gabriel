
void setup() {
  size(800, 800); 
  
  shooterNave = loadImage("shooter.png"); 
  shooterNave.resize(150, 120); // Cambiar tamaño del Shooter
  
  asteroide = loadImage("asteroide.png"); 
  asteroide.resize(130, 130); // Cambiar tamaño del Asteroide
  
  shooter = new Shooter(width/2, height/2, shooterNave, 3); //   3 vidas de Shooter 
  asteroides = new ArrayList<Asteroide>(); // Inicializar ArrayList de asteroides
  for (int i = 0; i < 5; i++) { // Generar 5 asteroides
    asteroides.add(new Asteroide(random(width), random(height), asteroide, random(1, 3)));
  }
}

void draw() {
  background(0); // Limpiar pantalla
  
  shooter.move(joyX, joyY); // movimiento del Shooter con el JoyPad
  shooter.display(); // Mostrar al jugador
  
  for (Asteroide ast : asteroides) { // Mostrar y mover los asteroides                          
    ast.move(0, 0); // Mover los asteroides sin control del JoyPad
    ast.display();
  }
  HUD(); // Mostrar HUD
  
}
