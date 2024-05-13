class SpawnerVehiculos extends Spawner {
  private ArrayList<Vehiculo> vehiculos;

  public SpawnerVehiculos(PVector posicion) {
    super(posicion);
    vehiculos = new ArrayList<Vehiculo>();
    generarVehiculos();
  }

  private void generarVehiculos() {
    for (int i = 0; i < 100; i++) {
      PVector pos = new PVector(100 * i, 350);
      PVector vel = new PVector(2, 0);
      PImage img = loadImage("auto" + 1 + ".png");
      Vehiculo vehiculo = new Vehiculo(pos, vel, img);
      vehiculos.add(vehiculo);
    }
    for (int i = 0; i < 100; i++) {
      PVector pos = new PVector(100 * i, 550);
      PVector vel = new PVector(2.5, 0);
      PImage img = loadImage("auto" + 3 + ".png");
      Vehiculo vehiculo = new Vehiculo(pos, vel, img);
      vehiculos.add(vehiculo);
    }
    for (int i = 0; i < 100; i++) {
      PVector pos = new PVector(100 * i, 420);
      PVector vel = new PVector(2.5, 0);
      PImage img = loadImage("auto" + 2 + ".png");
      Vehiculo vehiculo = new Vehiculo(pos, vel, img);
      vehiculos.add(vehiculo);
    }
    
    for (int i = 0; i < 100; i++) {
      PVector pos = new PVector(100 * i, 480);
      PVector vel = new PVector(1.4, 0);
      PImage img = loadImage("auto" + 0 + ".png");
      Vehiculo vehiculo = new Vehiculo(pos, vel, img);
      vehiculos.add(vehiculo);
    }
  }

  public void visualizarVehiculos() {
    for (Vehiculo vehiculo : vehiculos) {
      vehiculo.display();
    }
  }

 public void mover(int width) {
    for (Vehiculo vehiculo : vehiculos) {
        vehiculo.mover();
        
        if (vehiculo.getPosicion().x > width) {
            vehiculo.setPosicion(new PVector(0, vehiculo.getPosicion().y));
        }
    }
}

}
