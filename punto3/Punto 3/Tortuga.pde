class Tortuga {
    private PVector posicion;
    private PVector velocidad;
    private PImage imagen;

    public Tortuga(PVector posicion, PVector velocidad, PImage imagen) {
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

    public PVector getPosicion() {
        return posicion;
    }

    public void setPosicion(PVector posicion) {
        this.posicion = posicion;
    }

    public PVector getVelocidad() {
        return velocidad;
    }

    public void setVelocidad(PVector velocidad) {
        this.velocidad = velocidad;
    }
}
