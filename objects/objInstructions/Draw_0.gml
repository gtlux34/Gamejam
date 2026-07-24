if (ativo) {
    draw_sprite(sprLivreta, pagina, x, y-180);

    if (pagina == 2) {
        draw_set_color(c_black);
        draw_set_font(global.font_btn);

        if (variable_global_exists("senhas_extra")) {
            for (var i = 0; i < array_length(global.senhas_extra); i++) {
                var s = real(global.senhas_extra[i]);
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
                draw_text(x-30, (y-240) + i*20, "Hint: " + hint);
            }
        }
    }
}
