timerB = current_time;

add_moves();

handle_moves();

if (!global.lockPlayer) {
	do_moves();
	set_sprite();
}


if(keyboard_check_pressed(global.kInteract)) 
	trigger_obj_around();


timerA = timerB;
