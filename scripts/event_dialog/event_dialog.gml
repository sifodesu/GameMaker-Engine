if (dialog_start == true) {
	if (dialog == noone) {
		dialog = instance_create_layer(5, 185, "Instances", o_dialog);
		dialog.parent = self;
	} else {
		dialog.counter = 0;
	}
	dialog.text = argument0[0];
	dialog.draw_speed = argument0[1];
	dialog_start = false;
}

if (dialog_done) {
	var current = event_info[event_index];
	var next = [];
	// If there is a next event
	if (event_index + 1 < array_length_1d(event_info)) {
		next = event_info[event_index + 1];
	} else {
		next[0] = -1; // -1 cant be a script ID
	}
	
	// If next event is not a dialog, destroy dialog object
	if (current[0] != next[0]) {
		with (dialog) instance_destroy();
		dialog = noone;
	}
	dialog_start = true;
	dialog_done = false;
	event_next();
}