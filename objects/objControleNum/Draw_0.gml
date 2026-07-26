draw_self();

draw_set_color(c_white);

var texto = "";

for (var i = 0; i < string_length(entrada); i++) {
    texto += "*";
}


draw_text(x-36, y-24, texto);


if (string_length(entrada) == 4) {
    draw_set_color(c_lime);
    draw_text(x-30, y+40, "Digitado: " + entrada);
}
