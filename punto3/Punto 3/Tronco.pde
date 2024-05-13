class Tronco extends Spawner {
    private PVector velocidad;
    private PImage imagen;

    public Tronco(PVector posicion, PVector velocidad, PImage imagen) {
        super(posicion);
        this.velocidad = velocidad;
        this.imagen = imagen;
    }

    public void display() {
        image(imagen, posicion.x, posicion.y);
    }

    public void mover() {
        posicion.add(velocidad);
    }

    public PVector getPosicion() {
        return posicion;
    }

    public void setPosicion(PVector posicion) {
        this.posicion = posicion;
    }
}
