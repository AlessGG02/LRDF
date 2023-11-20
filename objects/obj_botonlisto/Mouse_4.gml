// ...
// Verificar si el campo de texto no está vacío
if (obj_campo.texto != "") {
  // Si el campo de texto no está vacío, abrir el archivo .ini para lectura y escritura
  ini_open("datos_usuario.ini");

  // Leer el nombre de usuario del archivo .ini
  var nombre_usuario = ini_read_string("usuario", "nombre", "");

  // Verificar si el nombre de usuario ya existe en el archivo .ini
  if (nombre_usuario == "") {
    // Si el nombre de usuario no existe en el archivo, escribirlo en el archivo
    ini_write_string("usuario", "nombre", obj_campo.texto);
    global.nombre = obj_campo.texto;
    room_goto(rm_menu);
  } else {
    // Si el nombre de usuario ya existe en el archivo, mostrar un mensaje de error
    show_message("El nombre de usuario ya está en uso.");
  }

  // Cerrar el archivo .ini
  ini_close();
} else {
  // Si el campo de texto está vacío, mostrar un mensaje de error
  show_message("Por favor, ingresa un nombre de usuario.");
}
// ...




// Guardar el nombre del usuario en un archivo ini
//ini_open("progreso.ini");
//ini_write_real("dato1","px",obj_icon.x);
//ini_write_real("dato1","py",obj_icon.y);
//ini_write_string("usuario","nombre",global.nombre);
//ini_close();



///Guardar ini
//ini_open("progreso.ini");
//ini_write_real("dato1","px",obj_icon.x);
//ini_write_real("dato1","py",obj_icon.y);
//ini_write_string("dato2","nombre",global.nombre);
//ini_close();