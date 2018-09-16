if (argument0 == noone) return;

inst = instance_find(argument0, 0);

if (inst == noone) return;

self.x = inst.x;
self.y = inst.y;
