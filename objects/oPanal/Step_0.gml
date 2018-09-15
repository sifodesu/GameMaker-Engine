/// @description Triggered Event

restrict-=1;
if (restrict < 0) restrict = 0;

if (myPrinter != noone) {
	if (myPrinter.lock && keyboard_check_pressed(global.kInteract)) {
		instance_destroy(myPrinter);
		myPrinter = noone;
		global.lockPlayer = 0;
		
		restrict = 4;
	}
}

if (restrict > 0) ev0 = 0;

if (ev0) {
	if (myPrinter == noone) {
		myPrinter = instance_create_layer(x-sprite_width/2, y+sprite_height/2, "Instances", oTextPrinter);
		with (myPrinter) {
			str = other.strToPrint;
		}
		
		global.lockPlayer = 1;
	}
	ev0 = 0;
}

