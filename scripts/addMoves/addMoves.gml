with (self)
{
    if (keyboard_check_pressed(global.kUp))
    {
        if (!ds_list_size(movesY))
            ds_list_add(movesY, -1);
        else if (ds_list_find_value(movesY, ds_list_size(movesY) - 1) != -1)
            ds_list_add(movesY, -1);
        if (!ds_list_size(cdirection))
            ds_list_add(cdirection, -1);
        else if (ds_list_find_value(cdirection, ds_list_size(cdirection) - 1) != -1)
            ds_list_add(cdirection, -1);
    }
    
    if (keyboard_check_pressed(global.kDown))
    {
        if (!ds_list_size(movesY))
            ds_list_add(movesY, 1);
        else if (ds_list_find_value(movesY, ds_list_size(movesY) - 1) != 1)
            ds_list_add(movesY, 1);
        if (!ds_list_size(cdirection))
            ds_list_add(cdirection, 1);
        else if (ds_list_find_value(cdirection, ds_list_size(cdirection) - 1) != 1)
            ds_list_add(cdirection, 1);
    }
    
    if (keyboard_check_pressed(global.kRight))
    {
        if (!ds_list_size(movesX))
            ds_list_add(movesX, 2);
        else if (ds_list_find_value(movesX, ds_list_size(movesX) - 1) != 2)
            ds_list_add(movesX, 2);
        if (!ds_list_size(cdirection))
            ds_list_add(cdirection, 2);
        else if (ds_list_find_value(cdirection, ds_list_size(cdirection) - 1) != 2)
            ds_list_add(cdirection, 2);
    }
    
    if (keyboard_check_pressed(global.kLeft))
    {
        if (!ds_list_size(movesX))
            ds_list_add(movesX, -2);
        else if (ds_list_find_value(movesX, ds_list_size(movesX) - 1) != -2)
            ds_list_add(movesX, -2);
        if (!ds_list_size(cdirection))
            ds_list_add(cdirection, -2);
        else if (ds_list_find_value(cdirection, ds_list_size(cdirection) - 1) != -2)
            ds_list_add(cdirection, -2);
    }
}
