// if(!global.pause) exit;

input_up_p = keyboard_check_pressed(global.kUp);
input_down_p = keyboard_check_pressed(global.kDown);
input_enter_p = keyboard_check_pressed(global.kInteract);

var ds_ = menu_pages[page], ds_height = ds_grid_height(ds_);

if (inputting)
{
    switch (ds_[# 1, menu_option[page]])
    {
        case menu_element_type.shift:
            var hinput = keyboard_check_pressed(global.kRight) - keyboard_check_pressed(global.kLeft);
            if (hinput != 0)
            {
                ds_[# 3, menu_option[page]] += hinput;
                ds_[# 3, menu_option[page]] = clamp(ds_[# 3, menu_option[page]], 0, array_length_1d(ds_[# 4, menu_option[page]]) - 1);
            }
            break;
        case menu_element_type.slider:
            var hinput = keyboard_check(global.kRight) - keyboard_check(global.kLeft);
            if (hinput != 0)
            {
                ds_[# 3, menu_option[page]] += hinput * 0.01;
                ds_[# 3, menu_option[page]] = clamp(ds_[# 3, menu_option[page]], 0, 1);
				script_execute(ds_[# 2, menu_option[page]], ds_[# 3, menu_option[page]]);
            }
            break;
        case menu_element_type.toggle:
            var hinput = keyboard_check_pressed(global.kRight) - keyboard_check(global.kLeft);
            if (hinput != 0)
            {
                ds_[# 3, menu_option[page]] += hinput;
                ds_[# 3, menu_option[page]] = clamp(ds_[# 3, menu_option[page]], 0, 1);
            }
            break;
        case menu_element_type.input:
            var kk = keyboard_lastkey;
            if (kk != global.kInteract)
            {
                if (kk != ds_[# 3, menu_option[page]])
                    ds_[# 3, menu_option[page]] = kk;
                variable_global_set(ds_[# 2, menu_option[page]], kk);
            }
            break;
    }
}
else
{
    var ochange = input_down_p - input_up_p;
    if (ochange != 0)
    {
        menu_option[page] += ochange;
        if (menu_option[page] > ds_height - 1)
        {
            menu_option[page] = 0;
        }
        if (menu_option[page] < 0)
        {
            menu_option[page] = ds_height - 1;
        }
    }
}

if (input_enter_p)
{
    switch (ds_[# 1, menu_option[page]])
    {
        case menu_element_type.page_transfer:
            page = ds_[# 2, menu_option[page]];
            break;
        case menu_element_type.script_runner:
            script_execute(ds_[# 2, menu_option[page]]);
            break;
        case menu_element_type.shift:
        case menu_element_type.slider:
        case menu_element_type.toggle:
            if (inputting)
            {
                script_execute(ds_[# 2, menu_option[page]], ds_[# 3, menu_option[page]]);
            }
        case menu_element_type.input:
            inputting = !inputting;
            break;
    }
}

