estado = "jogando";

fade = 1;
fade_vel = 0.01;

// flag para controlar explosão
explosao_playing = false;

function ganhar()
{
    if (estado != "jogando")
        return;

    estado = "venceu";

    show_debug_message("GANHOU!");

    var mundo = real(string_copy(global.nivel, 1, 1));
    var fase = real(string_copy(global.nivel, 3, 1));

    if (mundo == 4 && fase == 4)
    {
        audio_stop_sound(snd_musica_gameplay);
        room_goto(roms_creditos_novos);
        return;
    }

    fase++;

    if (fase > 4)
    {
        fase = 1;
        mundo++;
    }

    global.nivel = string(mundo) + "-" + string(fase);

    switch (mundo)
    {
        case 1: global.tempo = 60; break;
        case 2: global.tempo = 50; break;
        case 3: global.tempo = 40; break;
        default: global.tempo = 30; break;
    }

    audio_stop_sound(snd_musica_gameplay);
    room_restart();
}

function perder()
{
    if (estado != "jogando")
        return;

    // muda para estado explodindo
    estado = "explodindo";
    explosao_playing = false;
}
