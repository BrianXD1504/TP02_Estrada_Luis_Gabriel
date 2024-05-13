int valorDado; 
String[] numerosLetras = {"uno", "dos", "tres", "cuatro", "cinco", "seis"};

void setup() {
  size(850, 400); // Aumenté la altura del lienzo para acomodar el HUD
  reset(); // Función para configurar el estado inicial
}

void draw() {
  background(0); // Limpiar el lienzo en cada frame
  tableroazul(); // Dibujar el tablero azul
  dado(valorDado); // Dibujar el dado
  mostrarHUD(); // Mostrar el HUD
  
  
}

void tableroazul() {
  fill(#3E84E3); // Color azul
  rect(50, 40, 750, 320); // Tablero azul
}

void dado(int valor) {
  fill(#FFA500);
  rect(340, 100, 130, 130);
  fill(0); // Color negro para los puntos
  
  // Determinar el tamaño de los puntos según el tamaño del dado
  float puntoSize = 20; // Tamaño base de los puntos
  if (valor == 6) {
    puntoSize = 25; // Aumentar el tamaño de los puntos para el valor 6
  }
  
  // Dibujar puntos según el valor del dado
  switch (valor) {
    case 1:
      ellipse(400, 160, puntoSize, puntoSize); // Punto central
      break;
    case 2:
      ellipse(370, 130, puntoSize, puntoSize); // Punto superior izquierdo
      ellipse(430, 190, puntoSize, puntoSize); // Punto inferior derecho
      break;
    case 3:
      ellipse(370, 130, puntoSize, puntoSize); // Punto superior izquierdo
      ellipse(400, 160, puntoSize, puntoSize); // Punto central
      ellipse(430, 190, puntoSize, puntoSize); // Punto inferior derecho
      break;
    case 4:
      ellipse(370, 130, puntoSize, puntoSize); // Punto superior izquierdo
      ellipse(430, 130, puntoSize, puntoSize); // Punto superior derecho
      ellipse(370, 190, puntoSize, puntoSize); // Punto inferior izquierdo
      ellipse(430, 190, puntoSize, puntoSize); // Punto inferior derecho
      break;
    case 5:
      ellipse(370, 130, puntoSize, puntoSize); // Punto superior izquierdo
      ellipse(430, 130, puntoSize, puntoSize); // Punto superior derecho
      ellipse(400, 160, puntoSize, puntoSize); // Punto central
      ellipse(370, 190, puntoSize, puntoSize); // Punto inferior izquierdo
      ellipse(430, 190, puntoSize, puntoSize); // Punto inferior derecho
      break;
    case 6:
      ellipse(370, 130, puntoSize, puntoSize); // Punto superior izquierdo
      ellipse(430, 130, puntoSize, puntoSize); // Punto superior derecho
      ellipse(370, 165, puntoSize, puntoSize); // Punto medio izquierdo
      ellipse(430, 165, puntoSize, puntoSize); // Punto medio derecho
      ellipse(370, 200, puntoSize, puntoSize); // Punto inferior izquierdo
      ellipse(430, 200, puntoSize, puntoSize); // Punto inferior derecho
      break;
    default:
     
      break;
  }
}

void reset() {
  background(0); // Limpiar el lienzo
  lanzarDado(); // Llamada a la función para lanzar el dado
}

void keyPressed() {
  if (key == 'r' || key == 'R') { // Si se presiona la tecla 'r' o 'R'
    reset(); // Reiniciar el programa
  }
}

void lanzarDado() {
  valorDado = int(random(1, 7)); // Genera un número aleatorio entre 1 y 6
}

void mostrarHUD() {
  fill(255); // Color blanco para el texto
  textSize(30); // Tamaño del texto
  textAlign(RIGHT, TOP); // Alineación del texto
  
  text( numerosLetras[valorDado - 1], 750, 60); // Mostrar el número del dado en letras en el HUD
}
