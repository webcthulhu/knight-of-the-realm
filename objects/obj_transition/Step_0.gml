/// @description

if (mode != TRANS_MODE.OFF) {
	if (mode == TRANS_MODE.INTRO) {
		//percent = max(0, percent - .05);
		percent = max(0, percent - max(percent / 10, .005));
	} else {
		//percent = min(1, percent + .05);
		percent = min(1.1, percent + max(1.1 - percent / 10, .005));
	}
	
	if (percent == 0 || percent == 1.1) {
		switch (mode) {
			case TRANS_MODE.INTRO:
				mode = TRANS_MODE.OFF;
				break;
			case TRANS_MODE.NEXT:
				mode = TRANS_MODE.INTRO;
				room_goto_next();
				break;
			case TRANS_MODE.GOTO:
				mode = TRANS_MODE.INTRO;
				room_goto(target);
				break;
			case TRANS_MODE.RESTART:
				game_restart();
				break;
		}
	}
}
