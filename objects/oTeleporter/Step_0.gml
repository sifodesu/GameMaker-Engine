//prevents infinite loop
if (initialContact && !place_meeting(x, y, oChara))
	initialContact = 0;	
	

if (!initialContact && place_meeting(x, y, oChara) && !ev0 && inst = noone) {
	if (room_exists(nextRoom)) {
		if (enableTransition) {
			 inst = instance_create_layer(0, 0,global.mainLayer, transitionName);
			 inst.dad = self;
		}

		else {
			room_goto(nextRoom);
			oChara.needTele = pointDest;
		}
	}
	
	else instance_destroy(self);
}

if (ev0) {
	room_goto(nextRoom);
	oChara.needTele = pointDest;
}