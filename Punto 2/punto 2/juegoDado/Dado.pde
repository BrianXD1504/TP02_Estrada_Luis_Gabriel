class Dado extends GameObject {
  // Atributos
  private int imagen;
  private int[] valor;

  // Constructor por defecto
  public Dado() {
    // Inicializamos los atributos
    valor = new int[6];
    posicion = new PVector(0, 0);
  }
  //
    public void Posicion(int x, int y) {
    posicion.set(x,y);
  }

  // Método para mostrar la representación visual del dado
  @Override
  public void display(){
   imagen = (int) random(imagenes.length);
   int dado = 0;
   while (dado < valor.length) {
    valor[dado] = (int) random(1, 7);
    dado++;
  }
}

  // Métodos getter y setter para el atributo imagen
  public int getIndiceImagen(){
    return imagen;

  }
  
  public void setImagen(int imagen) {
    this.imagen = imagen;
  }
  
  // Métodos getter y setter para el atributo imagen
    public int[] getValor(){
    return valor;
  }

}


  
 
