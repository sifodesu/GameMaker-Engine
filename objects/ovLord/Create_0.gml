//Basically its role is to load every global stuff
//So it has to be placed in the first room


ini_open("saveTest.ini"); //-> local

global.kInteract = ord(ini_read_string("Binds", "interact", "J"));
global.kUp = ord(ini_read_string("Binds", "up", "W"));
global.kDown = ord(ini_read_string("Binds", "down", "S"));
global.kLeft = ord(ini_read_string("Binds", "left", "A"));
global.kRight = ord(ini_read_string("Binds", "right", "D"));


//Room
window_set_size(480*2, 270*2);
lastRoom = ini_read_real("Basics", "lastRoom", 1);

ini_close();

room_goto(lastRoom);


