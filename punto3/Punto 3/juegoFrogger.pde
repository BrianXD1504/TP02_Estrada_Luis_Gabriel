private Escenario escenario;
private Rana rana;
private SpawnerVehiculos spawnerVehiculos;
private SpawnerTortugas spawnerTortugas;
private SpawnerTroncos spawnerTroncos;



void setup() {
  size(600, 700);
  //Escenario
  PVector pos1 = new PVector(0, height - 100);
  PVector pos2 = new PVector(0, height - 400);
  PVector posCesped = new PVector(0, 0);
  escenario = new Escenario(pos1, pos2, posCesped, width);
  escenario.setPosicion1(new PVector(0,height-400 ));
  escenario.setPosicion2(new PVector(0,height-110));
  escenario.setPosicionCesped(new PVector(0, 0));
  
  //Rana
  rana = new Rana();
  rana.setPosicion(new PVector(width/2, height - 50));
  rana.setVelocidad(new PVector(0, 0));  
  
  //SpawnVehiculos
  spawnerVehiculos = new SpawnerVehiculos(new PVector(0,0));
  
  //SpawnTortugas
  spawnerTortugas = new SpawnerTortugas(new PVector(0,0));
  
  //SpawnTroncos
    spawnerTroncos = new SpawnerTroncos(new PVector(0,0));

}
  
void draw() {
  background(0);  
  escenario.display();
  rana.display();
  rana.mover();
  spawnerVehiculos.visualizarVehiculos();
  spawnerVehiculos.mover(width);
  spawnerTortugas.visualizarTortugas();
  spawnerTortugas.mover(width);
  spawnerTroncos.visualizarTroncos();
  spawnerTroncos.mover(width);
}
