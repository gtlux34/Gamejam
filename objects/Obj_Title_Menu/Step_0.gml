if (show_credits)
{
    if (keyboard_check_pressed(ord("E")) ||
        keyboard_check_pressed(vk_enter) ||
        keyboard_check_pressed(vk_space) ||
        keyboard_check_pressed(vk_escape))
    {
        show_credits = false;
    }

    exit;
}


var up_key = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
var down_key = keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down);

var left_key = keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left);
var right_key = keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right);


var accept_key =
keyboard_check_pressed(ord("E")) ||
keyboard_check_pressed(vk_enter) ||
keyboard_check_pressed(vk_space);


op_lenght = array_length(option[menu_level]);


pos += down_key - up_key;
hpos = right_key - left_key;


if (pos >= op_lenght) pos = 0;
if (pos < 0) pos = op_lenght - 1;


if (accept_key || (is_array(option[menu_level][pos]) && hpos != 0))
{
    switch(menu_level)
    {
        case MAIN:

            switch(pos)
            {
                case 0:
                    audio_stop_sound(Snd_sound);
                    room_goto_next();
                break;


                case 1:
                    menu_level = SOUND;
                break;


                case 2:
                    show_credits = true;
                break;


                case 3:
                    game_end();
                break;
            }

        break;


        case SOUND:

            switch(pos)
            {
                case 0:
                    change_menu(hpos,"sound");
                    audio_master_gain(global.dsm_settings[? "sound"][0] / 10);
                break;


                case 1:
                    menu_level = MAIN;
                break;
            }

        break;
    }


    pos = 0;
}



function change_menu(value,key)
{
    var data = global.dsm_settings[? key];

    var limits = data[1];

    var limit_min = limits[0];
    var limit_max = limits[1];

    data[0] = clamp(data[0] + value,limit_min,limit_max);
}
