with(self) {
    if ((mainDirection % 2) != 0) { //vertical
		inst = instance_place(x, y + sign(mainDirection), oInteractive);
    }

   else { //horizontal
		inst = instance_place(x + sign(mainDirection), y, oInteractive);
    }
	
	if (inst != noone) {
		if (inst.activated == false) {
			inst.trigger = true;
		}
	}
	//may need to trigger more than one custom event
}
