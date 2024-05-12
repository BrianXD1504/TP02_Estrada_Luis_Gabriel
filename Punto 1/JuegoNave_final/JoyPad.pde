float joyX, joyY; // controlar el JoyPad

public void keyPressed() { // Control del JoyPad
  if (key == 'w') {
    joyY = -2;
  } else if (key == 's') {
    joyY = 2;
  } else if (key == 'a') {
    joyX = -2;
  } else if (key == 'd') {
    joyX = 2;
  }
}

 public void keyReleased() {
  if (key == 'w' || key == 's') { // Detener el movimiento cuando la tecla se suelta
    joyY = 0;
  } else if (key == 'a' || key == 'd') {
    joyX = 0;
  }
}
