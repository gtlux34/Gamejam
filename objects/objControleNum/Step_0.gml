if (!travado && string_length(entrada) == 4) {
    if (entrada == senha) {
        // acertou
        travado = true;
        global.tempo += 5;
        audio_play_sound(sndConfirma, 1, false);
    } else {
        // errou
        entrada = "";
        global.tempo -= 5;
        audio_play_sound(sndErrado, 1, false);
    }
}