//syntax : teleport(room, letter of destination)
//you can teleport only from a letter to the same letter

inst = noone;

switch (argument0) {
	case "A":			//to "A"
	inst = instance_find(oDestinationA, 0);
	break;
	
	case "B":			//to "B"
	inst = instance_find(oDestinationB, 0);
	break;

}

if (inst == noone)
	return;
	
//instance_create_layer(inst.x, inst.y, global.mainLayer, oChara);
oChara.x = inst.x;
oChara.y = inst.y;