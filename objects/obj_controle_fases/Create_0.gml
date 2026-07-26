estado = "jogando";

// fade temporário
fade = 1;
fade_vel = 0.01;

function ganhar()
{
    if (estado != "jogando")
        return;

    estado = "venceu";

    show_debug_message("GANHOU!");

    var mundo = real(string_copy(global.nivel, 1, 1));
    var fase = real(string_copy(global.nivel, 3, 1));

    fase++;

    global.nivel = string(mundo) + "-" + string(fase);
    global.tempo = 60;

    room_restart();
}

function perder()
{
    if (estado != "jogando")
        return;

    estado = "perdeu";

    global.nivel = "1-1";
    global.tempo = 60;

    show_debug_message("PERDEU");

    room_restart();
}