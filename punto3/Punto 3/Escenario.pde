class Escenario {
  private PVector posicion1;
  private PVector posicion2;
  private PVector posicionCesped; 
  private PImage imagenSuelo;
  private PImage imagenCesped;
  
  // Constructor parametrizado
  public Escenario(PVector pos1, PVector pos2, PVector posCesped, int ancho) {
    this.posicion1 = pos1;
    this.posicion2 = pos2;
    this.posicionCesped = posCesped;
    cargarImagenes();
  }
  
  // Método para cargar las imágenes del suelo y el césped
  void cargarImagenes() {
    imagenSuelo = loadImage("suelo.png");
    imagenSuelo.resize(50, 0);
    imagenCesped = loadImage("cesped.png");
    imagenCesped.resize(150, 0); 
  }
  
  // Método para dibujar el escenario con las imágenes
  void display() {
    float x1 = posicion1.x;
    while (x1 < width) {
      image(imagenSuelo, x1, posicion1.y);
      x1 += imagenSuelo.width;
    }
    
    float x2 = posicion2.x;
    while (x2 < width) {
      image(imagenSuelo, x2, posicion2.y);
      x2 += imagenSuelo.width;
    }
    
    float xCesped = posicionCesped.x;
    while (xCesped < width) {
      image(imagenCesped, xCesped, posicionCesped.y);
      xCesped += imagenCesped.width;
    }
  }
  
  // Métodos get y set para posicion1
  public PVector getPosicion1() {
    return this.posicion1;
  }
  
  public void setPosicion1(PVector posicion1) {
    this.posicion1 = posicion1;
  }
  
  // Métodos get y set para posicion2
  public PVector getPosicion2() {
    return this.posicion2;
  }
  
  public void setPosicion2(PVector posicion2) {
    this.posicion2 = posicion2;
  }
  
  // Métodos get y set para posicionCesped
  public PVector getPosicionCesped() {
    return this.posicionCesped;
  }
  
  public void setPosicionCesped(PVector posicionCesped) {
    this.posicionCesped = posicionCesped;
  }
}
