draw_self();

draw_set_font(global.font_main);

var segundos = floor(global.tempo);
var milesimos = floor((global.tempo - segundos) * 100);

var texto_tempo =
    string_format(segundos, 2, 0) + ":" +
    string_format(milesimos, 2, 0);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y, texto_tempo);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
