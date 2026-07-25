if (mouse_check_button_pressed(mb_left)) {
    with (dono) {
        if (esperando_resposta && !resolvido) {
            if (other.animal == animais[som_atual]) {
                global.tempo += 10;
                resolvido = true;
                esperando_resposta = false;
                audio_play_sound(sndConfirma, 1, false);
            } else {
                global.tempo -= 10;
                audio_play_sound(sndErrado, 1, false);
            }
        }
    }
}