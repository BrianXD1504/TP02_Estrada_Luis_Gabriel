class Rana {
  private PVector posicion;
  private PVector velocidad;
  private PImage imagen;
  
  // Constructor por defecto
  public Rana() {
    cargarImagen();
    posicion = new PVector(0, 0);
    velocidad = new PVector(0, 0);
  }
  
  // Método para cargar la imagen de la rana
  private void cargarImagen() {
    imagen = loadImage("rana.png");
    imagen.resize(30, 0);
  }
 
  // Método para mostrar la rana en su posición actual
  public void display() {
    image(imagen, posicion.x, posicion.y);
  }
  
  // Método para mover la rana y controlarla
  public void mover() {
    if (keyPressed) {
      if (key == 'w') {
        velocidad.y = -2; 
      } else if (key == 's') {
        velocidad.y = 2;
      } else if (key == 'a') {
        velocidad.x = -2;
      } else if (key == 'd') {
        velocidad.x = 2;
      }
    } else {
      velocidad.x = 0;
      velocidad.y = 0;
    }
    posicion.add(velocidad);
  }
  
   // Métodos get
  public PVector getPosicion() {
    return this.posicion;
  }
  
  public PVector getVelocidad() {
    return this.velocidad;
  }
  
  // Métodos set
  public void setPosicion(PVector posicion){
    this.posicion=posicion;
  }
  
  public void setVelocidad(PVector velocidad){
    this.velocidad=velocidad;
  }
  
}
