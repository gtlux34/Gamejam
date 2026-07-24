if (ativo) {
    draw_sprite(sprLivreta, pagina, x, y-180);

    if (pagina == 2) {
        draw_set_color(c_black);
        draw_set_font(global.font_btn);

        var yy = y-255;
        with (objControleNum) {
            var s = real(senha);
            var hint = "";
            switch (s) {
                case 1789: hint = "French Revolution"; break;
                case 1492: hint = "Discovery of America"; break;
                case 1989: hint = "Fall of the Berlin Wall"; break;
                case 1969: hint = "Man on the Moon"; break;
                case 1822: hint = "Independence of Brazil"; break;
                case 1945: hint = "End of World War II"; break;
                default: hint = "Unknown event"; break;
            }
            draw_text(other.x-30, yy, "Hint: " + hint);
            yy += 20;
        }
    }
}
if (!ativo && hint_active && show_hint) {
    draw_set_font(global.font_quiz);
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);

    draw_text(room_width/2, room_height-20, "Press E to open manual");
}