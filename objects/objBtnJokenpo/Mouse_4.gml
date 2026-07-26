if (mouse_check_button_pressed(mb_left)) {
    image_index = 1;
    with (dono) {
        if (!resolvido) {
            if (other.jogada == escolha_maquina) {
                global.tempo += 5;
                resolvido = true;
                mensagem = "M Chose:\n" + escolha_maquina;
                audio_play_sound(sndConfirma,1,false);
            } else {
                global.tempo -= 5;
                mensagem = "M Chose:\n" + escolha_maquina;
                audio_play_sound(sndErrado,1,false);

                escolha_maquina = opcoes[irandom(array_length(opcoes)-1)];
                mensagem = "Choice\nmade...";
            }
        }
    }
}
