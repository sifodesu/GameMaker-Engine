if (trigger == true && activated == false) {
	var event = instance_create_layer(0, 0, "Instances", o_event);
	event.event_info = info;
	event.parent = self;
	trigger = false;
	activated = true;
}
