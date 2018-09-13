timerB = current_time;

addMoves();

handleMoves();

if (!global.lockPlayer) {
	doMoves();
	setSprite();
}


if(keyboard_check_pressed(global.kInteract)) 
	triggerObjAround();


timerA = timerB;
