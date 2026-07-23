width = 212;
height = 182;
musica = audio_play_sound(Snd_sound, 50, true);
op_border = 24;
op_space = 48;

pos = 0;
hpos = 0;

show_credits = false;
#macro MAIN            0
#macro SOUND           1
// Lembrar de configurar depois
#macro CONTROLS        5

global.dsm_settings = ds_map_create();
#macro set		global.dsm_settings


ds_map_add(set, "full_scrn", [0, ["off", "on"]]); //usar essa função pra quando for programar opções de limite e escolha
ds_map_add(set, "sound", [5, [0, 10]]);


// Menu de pausa
option[MAIN][0] = "Start";
option[MAIN][1] = "Sound";
option[MAIN][2] = "Credits";
option[MAIN][3] = "Quit";

// Configuração de som
option[SOUND][0] = ["Master Volume " , "sound"];
option[SOUND][1] = "Back";


op_lenght = 0;
menu_level = 0;
_str = 0