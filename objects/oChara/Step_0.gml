timerB = current_time;

addMoves();

handleMoves();

doMoves();

setSprite();

if(keyboard_check_pressed(global.kInteract)) 
	triggerObjAround();


timerA = timerB;