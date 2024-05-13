class SpawnerTortugas extends Spawner {
    private ArrayList<Tortuga> tortugas;

    public SpawnerTortugas(PVector posicion) {
        super(posicion);
        tortugas = new ArrayList<Tortuga>();
        generarTortugas();
    }

    private void generarTortugas() {
      for (int i = 0; i < 4; i++) {
            PVector pos = new PVector(30 * i, 200);
            PVector vel = new PVector(2.5, 0);
            PImage img = loadImage("tortuga.png");
            Tortuga tortuga = new Tortuga(pos, vel, img);
            tortugas.add(tortuga);
        }

        for (int i = 0; i < 3; i++) {
            PVector pos = new PVector(30 * i, 270);
            PVector vel = new PVector(3, 0);
            PImage img = loadImage("tortuga.png");
            Tortuga tortuga = new Tortuga(pos, vel, img);
            tortugas.add(tortuga);
        }
        
         for (int i = 0; i < 2; i++) {
            PVector pos = new PVector(30 * i, 150);
            PVector vel = new PVector(3, 0);
            PImage img = loadImage("tortuga.png");
            Tortuga tortuga = new Tortuga(pos, vel, img);
            tortugas.add(tortuga);
        }
     
       
    }

    public void visualizarTortugas() {
        for (Tortuga tortuga : tortugas) {
            tortuga.display();
        }
    }

    public void mover(int width) {
        for (Tortuga tortuga : tortugas) {
            tortuga.mover();
            
            if (tortuga.getPosicion().x > width) {
                tortuga.setPosicion(new PVector(0, tortuga.getPosicion().y));
            }
        }
    }
}
