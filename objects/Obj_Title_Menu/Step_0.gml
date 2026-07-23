// Créditos mano Igor Video Jogos
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

// Inputs (com input novo pra caso algum imbecil queira usar as setinhas ou espaço
var up_key = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
var down_key = keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down);
var left_key = keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left);
var right_key = keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right);

var accept_key =
    keyboard_check_pressed(ord("E")) ||
    keyboard_check_pressed(vk_enter) ||
    keyboard_check_pressed(vk_space);

// Número de opções
op_lenght = array_length(option[menu_level]);

// Navegação
pos += down_key - up_key;
hpos = right_key - left_key;

if (pos >= op_lenght) pos = 0;
if (pos < 0) pos = op_lenght - 1;

// Executar opções
if (accept_key || (is_array(option[menu_level][pos]) && hpos != 0))
{
    var _sml = menu_level;

    switch (menu_level)
    {
        case MAIN:
            switch (pos)
            {
                case 0:
				audio_stop_sound(Snd_sound)
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
            switch (pos)
            {
                case 0:
                    change_menu(hpos, "sound");
                    audio_master_gain(global.dsm_settings[? "sound"][0] / 10);
                break;

                case 1:
                    menu_level = MAIN;
                break;
            }
        break;
    }

    if (_sml != menu_level)
        pos = 0;

    op_lenght = array_length(option[menu_level]);
}

function change_menu(pos, _key)
{
    var _map_arr = set[? _key];
    var _limits_arr = _map_arr[1];

    if (is_real(_limits_arr[0]))
    {
        var _min = _limits_arr[0];
        var _max = _limits_arr[1];
    }
    else
    {
        var _min = 0;
        var _max = array_length(_limits_arr) - 1;
    }

    _map_arr[@ 0] = clamp(_map_arr[0] + pos, _min, _max);
}