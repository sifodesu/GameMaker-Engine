var seconds = argument0[0]

timer++;

if (timer > seconds * room_speed) {
	timer = 0;
	event_next();
}