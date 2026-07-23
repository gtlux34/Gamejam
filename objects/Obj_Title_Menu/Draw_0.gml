draw_set_font(global.font_main);

if (show_credits)
{
    draw_set_font(global.font_main);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    var cx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2;
    var cy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2;

    draw_set_color(c_white);
    draw_set_alpha(1);

    draw_text(
        cx,
        cy - 20,
        "CREDITS\n\n" +
        "DEV\nIgor\n\n" +
        "Programmer\nIgor\n\n" +
        "Artist\nIgor\n\n" +
		"Special thanks\nJoel\nMayMusical\n"+
        "Made with GameMaker"
    );

    // Pisca devagarinho rapaz
    var a = 0.4 + 0.6 * ((sin(current_time / 500) + 1) / 2);

    draw_set_color(c_yellow);
    draw_set_alpha(a);

    draw_text(cx, cy + 230, "Press E to return");

    draw_set_alpha(1);
    draw_set_color(c_white);

    exit;
}

var _new_w = 0
for (var i = 0; i < op_lenght; i++)
{
	var _op_w = string_width(option[menu_level, i]);
	_new_w = max(_new_w,_op_w);
}
width = _new_w + op_border * 2
height = op_border * 2 + string_height(option[0, 0]) + (op_lenght - 1) * op_space;


x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - width/2.01;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 - height/2 + 120;

var title_scale = 1;

draw_sprite_ext(
    sprTitleCard,
    0,
    camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2,
    y - 150,
    title_scale,
    title_scale,
    0,
    c_white,
    1
);

draw_sprite_ext(sprite_index,image_index,x,y,width/sprite_width,height/sprite_height,0,c_white,1);


draw_set_valign(fa_top);
draw_set_halign(fa_left);
for (var i = 0; i < op_lenght; i++)
{
	var _c = c_white;
	if pos == i 
	{
	_c = c_lime
	}
	// esse menu é selecionável ou é só texto?
		if is_array(option[menu_level][i])
		{
			// Armazenar o array do menu	
			var _menu_arr = option[menu_level][i];
			
			// Determinar o map array
			var _map_arr = set[? _menu_arr[1]];
		
			// Determinar o array de limite/escolha
			var _limits_arr = _map_arr[1];
			
			// Inteiro ou texto?
			if is_real(_limits_arr[0])
			{
				// Mostrar o inteiro
				var _str = _menu_arr[0] + string(_map_arr[0]);	
			}
			else
			{
				var _str = _menu_arr[0] + _limits_arr[_map_arr[0]];
			}
		}		
		else
		{
				var _str = option[menu_level][i];

		}
		draw_text_color(x + op_border, y + op_border + op_space * i, _str, _c, _c, _c, _c, 1);
	}
	
	

