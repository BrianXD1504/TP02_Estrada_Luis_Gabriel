class Vehiculo {
  private PVector posicion;
  private PVector velocidad;
  private PImage imagen;

  public Vehiculo(PVector posicion, PVector velocidad, PImage imagen) {
    this.posicion = posicion;
    this.velocidad = velocidad;
    this.imagen = imagen;
  }

  public void display() {
    image(imagen, posicion.x, posicion.y);
  }

  public void mover() {
    posicion.add(velocidad);
  }

  // Métodos getter y setter para la posición
  public PVector getPosicion() {
    return posicion;
  }

  public void setPosicion(PVector posicion) {
    this.posicion = posicion;
  }

  // Métodos getter y setter para la velocidad
  public PVector getVelocidad() {
    return velocidad;
  }

  public void setVelocidad(PVector velocidad) {
    this.velocidad = velocidad;
  }
  
}
