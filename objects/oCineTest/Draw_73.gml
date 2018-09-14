/// @description

timerB = current_time;

if(timerB - timerA < 4*1000) {
	global.lockPlayer = 1;
	intro_test();
	if (!soundPlayed) {
		audio_play_sound(soundTest, 1, false);
		soundPlayed++;
	}
}

else {
	oChara.x = global.camera_width/2;	
	oChara.y = global.camera_height/2;	
	intro_test();
	audio_stop_all();
	global.lockPlayer = 0;
	
	instance_destroy(self);
}
