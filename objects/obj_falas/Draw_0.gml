draw_self();

if (visible && image_index >= 5)
{
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_black);

    draw_text_ext_transformed(
        x - 70,      // posição X do texto
        y -40,      // posição Y do texto
        texto_atual,
        23,          // espaçamento entre as linhas
        140,         // largura máxima do texto
        0.8,           // escala X (sempre 1)
        0.8,           // escala Y (sempre 1)
        0            // rotação
    );

    draw_set_color(c_white);
}