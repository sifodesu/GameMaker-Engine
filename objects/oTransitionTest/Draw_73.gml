if (dad == noone) {
	//incorrect parameters
	instance_destroy(self);
}


global.lockPlayer = 1;

if (signD == 1) {
	if (i < global.camera_height){
		i+= speed;
		draw_rectangle_color(0, 0, global.camera_width, i, c_black, c_black, c_black, c_black, false);
	}
	else {
		dad.ev0 = 1;
		signD = -1;
	}
}

if (signD == -1) {
	if (i > 0) {
		i-= speed;
		draw_rectangle_color(0, 0, global.camera_width, i, c_black, c_black, c_black, c_black, false);
	}
	
	else {
		global.lockPlayer = 0;
		instance_destroy(self);
	}
}


	