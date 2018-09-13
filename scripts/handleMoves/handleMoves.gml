// 
with (self)
{
    out = 0;
    while (!out && ds_list_size(movesY))
    {
        switch (ds_list_find_value(movesY, ds_list_size(movesY) - 1))
        {
            case -1:
                if (keyboard_check(global.kUp))
                {
                    speedY = -xCSPEED;
                    out = 1;
                }
                else
                    ds_list_delete(movesY, ds_list_size(movesY) - 1); // movesY.pop_back();
                break;
            case 1:
                if (keyboard_check(global.kDown))
                {
                    speedY = xCSPEED;
                    out = 1;
                }
                else
                    ds_list_delete(movesY, ds_list_size(movesY) - 1); // movesY.pop_back();
                break;
        }
    }

    out = 0;
    while (!out && ds_list_size(movesX))
    {
        switch (ds_list_find_value(movesX, ds_list_size(movesX) - 1))
        {
            case 2:
                if (keyboard_check(global.kRight))
                {
                    speedX = xCSPEED;
                    out = 1;
                }
                else
                    ds_list_delete(movesX, ds_list_size(movesX) - 1); // movesX.pop_back();
                break;
            case -2:
                if (keyboard_check(global.kLeft))
                {
                    speedX = -xCSPEED;
                    out = 1;
                }
                else
                    ds_list_delete(movesX, ds_list_size(movesX) - 1); // movesX.pop_back();
                break;
        }
    }
    
    out = 0;
    while (!out && ds_list_size(cdirection))
    {
        switch (ds_list_find_value(cdirection, ds_list_size(cdirection) - 1))
        {
            case -1:
                if (keyboard_check(global.kUp))
                {
                    mainDirection = -1;
                    out = 1;
                }
                else
                    ds_list_delete(cdirection, ds_list_size(cdirection) - 1);
                break;
            case 1:
                if (keyboard_check(global.kDown))
                {
                    mainDirection = 1;
                    out = 1;
                }
                else
                    ds_list_delete(cdirection, ds_list_size(cdirection) - 1);
                break;
            case 2:
                if (keyboard_check(global.kRight))
                {
                    mainDirection = 2;
                    out = 1;
                }
                else
                    ds_list_delete(cdirection, ds_list_size(cdirection) - 1);
                break;
            case -2:
                if (keyboard_check(global.kLeft))
                {
                    mainDirection = -2;
                    out = 1;
                }
                else
                    ds_list_delete(cdirection, ds_list_size(cdirection) - 1);
                break;
        }
    }
    
    if (!ds_list_size(movesX))
        speedX = 0;
    
    
    if (!ds_list_size(movesY))
        speedY = 0;
    
    
    
    
    // if (speedX > 0 && place_meeting(x+1, y, object0))
    //	speedX = 0;
    // if (speedX < 0 && place_meeting(x-1, y, object0))
    //	speedX = 0;
    // if (speedY > 0 && place_meeting(x, y+1, object0))
    //	speedY = 0;
    // if (speedY < 0 && place_meeting(x, y-1, object0))
    //	speedY = 0;
}
