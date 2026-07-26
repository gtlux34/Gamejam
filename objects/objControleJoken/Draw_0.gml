draw_self();

if (mensagem != "") {
    draw_set_color(c_white);
    draw_set_font(global.font_quiz);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);

    draw_text(x - 60, y - 30, mensagem);
}
