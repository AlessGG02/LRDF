puede_mover = false;

var en_contenedor = false;

// Iterar sobre el array de contenedores
for (var i = 0; i < array_length_1d(contenedores); i++) {
   var contenedor = instance_position(x, y, contenedores[i]);
   if (contenedor != noone) {
       en_contenedor = true;
       break;
   }
}

// Si la regleta no está en ningún contenedor, moverla de vuelta a su posición original
if (!en_contenedor) {
   x = posicion_original[0];
   y = posicion_original[1];
}

// Crear una nueva regleta si la cantidad de regletas es menor que la cantidad máxima
if (cantidad_regletas < cantidad_regletas_maxima) {
  instance_create_layer(posicion_original[0], posicion_original[1], "Instances", obj_regleta9);
  cantidad_regletas++;
}