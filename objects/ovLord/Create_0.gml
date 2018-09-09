
//Basically its role is to load every global stuff
//So it has to be placed in the first room


ini_open("saveTest.ini");
//ti = file_exists(working_directory + "saveTest.ini");


//Binds
global.kInteract = ord(ini_read_string("Binds", "interact", "J"));
global.kUp = ord(ini_read_string("Binds", "up", "W"));
global.kDown = ord(ini_read_string("Binds", "down", "S"));
global.kLeft = ord(ini_read_string("Binds", "left", "A"));
global.kRight = ord(ini_read_string("Binds", "right", "D"));



//Room
window_set_size(480*2, 270*2);

//how to store correctly the last room ? it ain't name and we don't have the index
//room_goto(ini_read_real("Basics", "lastRoom", rRoom0));

//room_set_viewport(rRoom0, 0, true, 0, 0, 480, 270);
//ti = room_get_viewport(rRoom0, 0);


room_goto_next();


ini_close();
