draw_self();

tempo_exibicao += 1;
if (tempo_exibicao >= 180) {
    tempo_exibicao = 0;
    etapa_texto++;
    if (etapa_texto > 4) etapa_texto = 0;
}

draw_set_color(c_white);
draw_set_font(global.font_quiz);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var texto_pergunta = string_wrap(pergunta, 14);
for (var i = 0; i < array_length(texto_pergunta); i++) {
    draw_text(x-72, y-27 + (i * 13), texto_pergunta[i]);
}

if (etapa_texto == 1) {
	draw_set_color(c_white);
    draw_text(x-70, y+10, "A - " + respostas[0]);
}
if (etapa_texto == 2) {
	draw_set_color(c_white);
    draw_text(x-70, y+10, "B - " + respostas[1]);
}
if (etapa_texto == 3) {
	draw_set_color(c_white);
    draw_text(x-70, y+10, "C - " + respostas[2]);
}
if (etapa_texto == 4) {
	draw_set_color(c_white);
    draw_text(x-70, y+10, "D - " + respostas[3]);
}

if (resolvido && resposta == correta) {
    draw_set_color(c_lime);
    draw_text(x-66, y+40, "CORRECT");
    draw_set_color(c_white);
}
