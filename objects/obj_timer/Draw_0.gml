draw_self();

draw_set_font(global.font_main);
draw_set_color(cor_texto);


var minutos = floor(global.tempo / 60);
var segundos = floor(global.tempo mod 60);
var milesimos = floor((global.tempo - floor(global.tempo)) * 100);


var txt_min = string(minutos);
var txt_seg = string(segundos);
var txt_mil = string(milesimos);


if (minutos < 10) txt_min = "0" + txt_min;
if (segundos < 10) txt_seg = "0" + txt_seg;
if (milesimos < 10) txt_mil = "0" + txt_mil;



draw_set_halign(fa_center);
draw_set_valign(fa_middle);



var tremor_x = 0;
var tremor_y = 0;


if (tremer > 0)
{
    tremor_x = random_range(-5, 5);
    tremor_y = random_range(-5, 5);
}



draw_text(x - 40 + tremor_x, y + tremor_y, txt_min);
draw_text(x - 20 + tremor_x, y + tremor_y, ":");
draw_text(x + tremor_x, y + tremor_y, txt_seg);
draw_text(x + 20 + tremor_x, y + tremor_y, ":");
draw_text(x + 40 + tremor_x, y + tremor_y, txt_mil);




draw_set_color(c_white);
draw_text(x, y + 33 + tremor_y, global.nivel);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
