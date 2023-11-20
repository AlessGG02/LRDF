if puede_escribir == true{
	image_index = 1; //cambia la imagen 1
	if string_width(texto) < tx-16-32 or keyboard_check(vk_backspace){
		texto = keyboard_string;//actualizar la variable texto
	}
	else{
		keyboard_string = texto;
	}
}
else {
	image_index = 0; //vuelve a la imagen 0 si no se selecciona el campo
}

//si estas haciendo clic puedes escribir
if mouse_check_button(mb_left){
	if(mouse_x >= x && mouse_x <= x+tx) && (mouse_y >= y && mouse_y <= y+ty){
		keyboard_string = texto;
		puede_escribir = true;
		keyboard_virtual_show(kbv_type_default, kbv_returnkey_default, kbv_autocapitalize_none, false); // Muestra el teclado virtual
	}
	else{
		puede_escribir = false;	
	}
}

if keyboard_check(vk_enter){
	puede_escribir = false;	
}