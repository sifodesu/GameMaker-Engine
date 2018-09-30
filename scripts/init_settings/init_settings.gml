set_globals(); // Set global variables

ini_open("saveTest.ini"); //-> local

global.kInteract = ord(ini_read_string("Binds", "interact", "J"));
global.kUp = ord(ini_read_string("Binds", "up", "W"));
global.kDown = ord(ini_read_string("Binds", "down", "S"));
global.kLeft = ord(ini_read_string("Binds", "left", "A"));
global.kRight = ord(ini_read_string("Binds", "right", "D"));


//Room
window_set_size(global.camera_width * global.camera_scale, global.camera_height * global.camera_scale);
window_set_position(0, 40);

//global.lastRoom = ini_read_real("Basics", "lastRoom", roomA);

ini_close();

room_goto(mainMenuRoom);