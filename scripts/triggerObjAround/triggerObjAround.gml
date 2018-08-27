with(self) {
    if ((mainDirection % 2) != 0) { //vertical
		inst = instance_place(x, y + sign(mainDirection), oInteractive);
    }

   else { //horizontal
		inst = instance_place(x + sign(mainDirection), y, oInteractive);
    }
	
	if (inst != noone)
		inst.ev0 = 1;
	//may need to trigger more than one custom event
}
