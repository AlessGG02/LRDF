// Código en el evento de dibujo del objeto
draw_self();  // Esto dibuja el sprite asociado al objeto (si tienes uno)

draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_font(fnt_nuevo);
draw_text(x-260, y, string(ejercicio_texto));