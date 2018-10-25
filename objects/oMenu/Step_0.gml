/// @desc Control menu

// Ease in
MenuX += (MenuXTarget - MenuX) / MenuSpeed;

// Keyboard controls
if (MenuControl) {
	if (keyboard_check_pressed(vk_up)) {
		MenuCursor++;
		if (MenuCursor >= MenuItems) MenuCursor = 0;
	}
	if (keyboard_check_pressed(vk_down)) {
		MenuCursor--;
		if (MenuCursor < 0) MenuCursor = MenuItems - 1;
	}
	if (keyboard_check_pressed(vk_enter)) {
		MenuXTarget = GuiWidth + 200;
		MenuSelected = MenuCursor;
		MenuControl = false;
	}
}

if (MenuX > GuiWidth + 150) && (MenuSelected != -1) {
	switch (MenuSelected) {
		case 3: SlideTransition(TRANS_MODE.NEXT); break;
		case 2: {
			if (!file_exists(SAVEFILE)) {
				SlideTransition(TRANS_MODE.NEXT);
			} else {
				var file = file_text_open_read(SAVEFILE);
				var target = file_text_read_real(file);
				file_text_close(file);
				SlideTransition(TRANS_MODE.GOTO, target);
			}
			break;
		}
		case 0: game_end(); break;
		default: SlideTransition(TRANS_MODE.NEXT); break;
	}
}