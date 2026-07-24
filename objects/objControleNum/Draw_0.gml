draw_self();

draw_set_color(c_white);

var texto = "";

for (var i = 0; i < string_length(entrada); i++) {
    texto += "*";
}


// senha digitada (mais acima e esquerda)
draw_text(x-36, y-24, texto);



draw_set_color(c_yellow);
draw_text(x-30, y+20, "Senha: " + senha);


if (string_length(entrada) == 4) {
    draw_set_color(c_lime);
    draw_text(x-30, y+40, "Digitado: " + entrada);
}
