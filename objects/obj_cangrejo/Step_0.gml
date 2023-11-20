if (visible) {
  x += direction * speed; // Mueve el cangrejo en la dirección especificada
  if (x <= 0) { // Si el cangrejo llega a la izquierda de la pantalla
    visible = false; // Hace que el cangrejo no sea visible
    x = room_width; // Coloca el cangrejo fuera de la pantalla a la derecha
    alarm[0] = room_speed * random_range(1, 5); // Inicia un alarma para mover el cangrejo de nuevo
  }
}