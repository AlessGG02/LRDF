draw_self();
draw_set_font(fnt_bdj);
draw_set_halign(fa_center);

if global.pasarlv[level]=true{
	draw_text(x, y+25, "Completado");
}
else if global.bloqueadolv[level]=true{
	draw_text(x, y, "Bloqueado");
}
else draw_text(x, y+25, "Jugar");