class Tablero extends GameObject{
  //atributos

  //constructor por defecto
  public Tablero() {
  }
  
  //constructor parametrizado
  public void Tablero(PVector posicion){
    this.posicion=posicion;
  }
  

  //metodos
  public void display(){
   rect(this.posicion.x, this.posicion.y, ((width *5)/6), ((height * 4)/6));
   fill(0);
  }
  
  //metodos get
  
  //metodos set
  
}
