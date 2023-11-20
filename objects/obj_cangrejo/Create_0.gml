x = room_width; // Inicia el cangrejo fuera de la pantalla a la derecha
direction = -1; // Dirección en la que se mueve el cangrejo
speed = 2; // Velocidad de movimiento del cangrejo
alarm[0] = room_speed * random_range(1, 5); // Inicia un alarma para mover el cangrejo
visible = false; // Hace que el cangrejo no sea visible al principio