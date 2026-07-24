draw_set_font(global.font_main);


var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

var menu_scale = 0.65;


if (menu_level < 0 || menu_level >= array_length(option))
    exit;


op_lenght = array_length(option[menu_level]);



if(show_credits)
{
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);


    draw_text_transformed(
        gui_w/2,
        gui_h/2,
        "CREDITS\n\nDEV\nIgor\n\nProgrammer\nIgor\n\nArtist\nIgor\n\nSpecial thanks\nJoel\nMayMusical\n\nMade with GameMaker",
        menu_scale,
        menu_scale,
        0
    );


    draw_text_transformed(
        gui_w/2,
        gui_h/2 + (230 * menu_scale),
        "Press E to return",
        menu_scale,
        menu_scale,
        0
    );


    exit;
}



var max_w = 0;


for(var i = 0; i < op_lenght; i++)
{
    var text = option[menu_level][i];


    if(is_array(text))
        text = text[0];


    max_w = max(max_w, string_width(text));
}



width = (max_w + op_border * 2) * menu_scale;

height = (op_border * 2 + string_height("A") + (op_lenght - 1) * op_space) * menu_scale;



x = gui_w/2 - width/2;

y = gui_h/2 - height/2 + (120 * menu_scale);



draw_sprite_ext(
    sprTitleCard,
    0,
    gui_w/2,
    y - (150 * menu_scale),
    menu_scale,
    menu_scale,
    0,
    c_white,
    1
);



draw_sprite_ext(
    sprite_index,
    image_index,
    x,
    y,
    width / sprite_width,
    height / sprite_height,
    0,
    c_white,
    1
);



draw_set_halign(fa_left);
draw_set_valign(fa_top);



for(var i = 0; i < op_lenght; i++)
{
    var color = c_white;


    if(pos == i)
        color = c_lime;


    var text = option[menu_level][i];


    if(is_array(text))
    {
        var data = global.dsm_settings[? text[1]];

        text = text[0] + string(data[0]);
    }



    draw_text_transformed_color(
        x + (op_border * menu_scale),
        y + (op_border * menu_scale) + ((op_space * menu_scale) * i),
        text,
        menu_scale,
        menu_scale,
        0,
        color,
        color,
        color,
        color,
        1
    );
}
