with(self) {
	speedY = (keyboard_check(global.kDown) - keyboard_check(global.kUp))*xCSPEED;
	speedX = (keyboard_check(global.kRight) - keyboard_check(global.kLeft))*xCSPEED;


	if (speedX == 0 && speedY == 0) {
		if (keyboard_check(global.kDown))
			mainDirection = 1;
		if (keyboard_check(global.kUp))
			mainDirection = -1;
		if (keyboard_check(global.kLeft))
			mainDirection = -2;
		if (keyboard_check(global.kRight))
			mainDirection = 2;
		
	}
}