// ...
// Verificar si el campo de texto no está vacío
if (obj_campo.texto != "") {
  // Si el campo de texto no está vacío, abrir el archivo .ini para lectura
  ini_open("datos_usuario.ini");

  // Leer el nombre de usuario del archivo .ini
  var nombre_usuario = ini_read_string("usuario", "nombre", "");

  // Verificar si el nombre de usuario existe en el archivo .ini
  if (nombre_usuario != "") {
    // Si el nombre de usuario existe, asignarlo a la variable global y redirigir a la interfaz de menú
    global.nombre = nombre_usuario;
    room_goto(rm_menu);
  } else {
    // Si el nombre de usuario no existe, mostrar un mensaje de error
    show_message("El usuario no existe. Por favor, regístrate.");
  }

  // Cerrar el archivo .ini
  ini_close();
} else {
  // Si el campo de texto está vacío, mostrar un mensaje de error
  show_message("Por favor, ingresa un nombre de usuario.");
}
// ...
