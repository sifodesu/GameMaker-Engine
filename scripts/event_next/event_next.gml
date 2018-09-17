event_index++;

if (event_index == array_length_1d(event_info)) {
	parent.activated = false;
	instance_destroy();
}