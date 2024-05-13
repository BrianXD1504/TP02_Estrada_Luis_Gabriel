class SpawnerTroncos extends Spawner {
    private ArrayList<Tronco> troncos;

    public SpawnerTroncos(PVector posicion) {
        super(posicion);
        troncos = new ArrayList<Tronco>();
        generarTroncos();
    }

    private void generarTroncos() {
        for (int i = 0; i < 4; i++) {
            PVector pos = new PVector(100 * i, 120);
            PVector vel = new PVector(1.7, 0);
            PImage img = loadImage("tronco.png");
            Tronco tronco = new Tronco(pos, vel, img);
            troncos.add(tronco);
        }

        for (int i = 0; i < 3; i++) {
            PVector pos = new PVector(150 * i, 175);
            PVector vel = new PVector(4, 0);
            PImage img = loadImage("tronco.png");
            Tronco tronco = new Tronco(pos, vel, img);
            troncos.add(tronco);
        }
        
        for (int i = 0; i < 2; i++) {
            PVector pos = new PVector(200 * i, 240);
            PVector vel = new PVector(2.5, 0);
            PImage img = loadImage("tronco.png");
            Tronco tronco = new Tronco(pos, vel, img);
            troncos.add(tronco);
        }
    }

    public void visualizarTroncos() {
        for (Tronco tronco : troncos) {
            tronco.display();
        }
    }

    public void mover(int width) {
        for (Tronco tronco : troncos) {
            tronco.mover();
            
            if (tronco.getPosicion().x > width) {
                tronco.setPosicion(new PVector(0, tronco.getPosicion().y));
            }
        }
    }
}
