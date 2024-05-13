class Hud {
  Dado dado;

  public Hud(Dado dado) {
    this.dado = dado;
  }

  public void display() {
    int imagenDado = dado.getIndiceImagen();
    textSize(60);
    text((imagenDado+1), 550, 100);

    // Centrar texto horizontalmente
    textAlign(CENTER, CENTER);
    textSize(30);
    text(" Lanzar dado con R ", width/4, height - 350);
    fill(#3E84E3);
  }
}
