timerB = current_time;

addMoves();

handleMoves();

doMoves();

setSprite();

if(keyboard_check_pressed(kInteract)) 
	triggerObjAround();


timerA = timerB;
