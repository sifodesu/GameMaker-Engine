with(self) {
	speedY = (keyboard_check(global.kDown) - keyboard_check(global.kUp))*xCSPEED;
	speedX = (keyboard_check(global.kRight) - keyboard_check(global.kLeft))*xCSPEED;

	if (speedY != 0) 
		mainDirection = sign(speedY);
		
	else if (speedX != 0) 
		mainDirection = sign(speedX);
	
}