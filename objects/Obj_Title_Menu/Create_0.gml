width = 212;
height = 182;


op_border = 24;
op_space = 48;

pos = 0;
hpos = 0;

show_credits = false;

#macro MAIN 0
#macro SOUND 1
#macro CONTROLS 5

if (!variable_global_exists("dsm_settings"))
{
    global.dsm_settings = ds_map_create();

    global.dsm_settings[? "full_scrn"] = [0,["off","on"]];
    global.dsm_settings[? "sound"] = [5,[0,10]];
}


option = [];

option[MAIN] = [];
option[SOUND] = [];

option[MAIN][0] = "Start";
option[MAIN][1] = "Sound";
option[MAIN][2] = "Credits";
option[MAIN][3] = "Quit";

option[SOUND][0] = ["Master Volume ","sound"];
option[SOUND][1] = "Back";


op_lenght = 0;
menu_level = 0;
_str = "";
