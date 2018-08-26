//Why it doesn't catch the inst when mainDirection < 0 ?
//the bonus -1 should be working ?
with(self) {
    if (mainDirection % 2) { //vertical
        bonusY = -1;
        if (sign(mainDirection) > 0)
            bonusY = sprite_height;
        for (i = 0; i < sprite_width; i++) {
            inst = instance_position(x + i, y + bonusY, oInteractive);
            if (inst != noone)
                inst.ev0 = 1;
        }
    }

    if (!(mainDirection % 2)) { //horizontal
        bonusX = -1;
        if (sign(mainDirection) > 0)
            bonusX = sprite_width;
        for (i = 0; i < sprite_height; i++) {
            inst = instance_position(x + bonusX, y + i, oInteractive);
            if (inst != noone)
                inst.ev0 = 1;
        }
    }
}