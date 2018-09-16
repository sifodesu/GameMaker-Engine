timerB = current_time;

//add_moves();

//handle_moves();

set_moves();

if (!global.lockPlayer) {
	do_moves();
	set_sprite();
}

else {
	image_speed = 0;
	image_index = 0;		
}


if(keyboard_check_pressed(global.kInteract)) 
	trigger_obj_around();


timerA = timerB;
