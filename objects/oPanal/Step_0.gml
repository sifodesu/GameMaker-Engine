/// @description Triggered Event

if (ev0){
	if (myPrinter == noone) {
		myPrinter = instance_create_layer(x-20, y-20, "Instances", oTextPrinter);
		with (myPrinter) {
			str = other.strToPrint;
		}
		//Need here to block the player
	}
ev0=0;
}

if (myPrinter != noone) {
	if (myPrinter.lock && keyboard_check_pressed(global.kInteract)) { 
		instance_destroy(myPrinter);
		myPrinter = noone;
		
	}
}