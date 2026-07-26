if (mouse_check_button_pressed(mb_left)) {
	image_index = 1
    with (dono) {
        if (!resolvido) {

            var alvo = instance_nearest(x, y, objAcerta);
            if (abs(alvo.x - alvo.pos_inicial) < 8) {
                global.tempo += 10;
                resolvido = true;
                audio_play_sound(sndConfirma,1,false);
            } else {
                global.tempo -= 10;
                audio_play_sound(sndErrado,1,false);
            }
        }
    }
}
