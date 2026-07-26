if (image_index >= image_number - 1) {
    with (obj_controle_fases) {
        estado = "perdeu";
        global.nivel = "1-1";
        global.tempo = 60;
        show_debug_message("PERDEU");
        audio_stop_sound(snd_musica_gameplay);
        room_restart();
    }
    instance_destroy();
}