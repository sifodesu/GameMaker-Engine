//prevents infinite loop
if (initialContact && !place_meeting(x, y, oChara))
	initialContact = 0;	
	

if (!initialContact && place_meeting(x, y, oChara) && !ev0 && inst = noone) {
	if (room_exists(destination)) {
		if (enableTransition) {
			 inst = instance_create_layer(0, 0,global.mainLayer, transitionName);
			 inst.dad = self;
		}

		else {
			room_goto(destination);
			oChara.needTele = type;
		}
	}
	
	else instance_destroy(self);
}

if (ev0) {
	room_goto(destination);
	oChara.needTele = type;
}