draw_set_font(global.font_main);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (tipo_fim == "vitoria") {
    draw_set_color(c_lime);
    draw_set_alpha(alpha_texto);

    draw_text_transformed(room_width/2, room_height/2 - 40, "YOU WIN!", escala*1.2, escala*1.2, 0);

    draw_set_color(c_red);
    draw_text_transformed(room_width/2, room_height/2 + 20, "Congratulations for defusing the bomb!", escala, escala, 0);

    draw_set_color(c_white);
    draw_text_transformed(room_width/2, room_height/2 + 60, "Now get back to work...", escala*0.9, escala*0.9, 0);

    for (var i = 0; i < 15; i++) {
        var rx = irandom(room_width);
        var ry = irandom(room_height);
        draw_set_color(make_color_hsv(irandom(360), 255, 255));
        draw_circle(rx, ry, irandom_range(1,3), false);
    }
}
