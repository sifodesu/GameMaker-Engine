/// @description 

//prevents infinite loop
if (initialContact && !place_meeting(x, y, oChara)) {
	initialContact = 0;	
	
}

if (!initialContact && place_meeting(x, y, oChara)) {
	if (room_exists(destination)) {
		room_goto(destination);
		oChara.needTele = type;
	}
}