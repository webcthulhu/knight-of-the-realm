/// @desc Draw menu

draw_set_font(fMenu);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for (var i = 0; i < MenuItems; i++) {
	var txt = Menu[i];
	if (MenuCursor == i) {
		txt = string_insert(">", txt, 0);
		var col = c_white;
	} else {
		var col = c_gray;
	}
	var xx = MenuX;
	var yy = MenuY - MenuItemHeight * i * 1.15;
	draw_set_color(col);
	draw_text(xx, yy, txt)
}