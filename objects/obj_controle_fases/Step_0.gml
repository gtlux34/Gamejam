
if (fade > 0) {
    fade -= fade_vel;
    if (fade < 0) fade = 0;
}

if (global.tempo <= 0 && estado == "jogando") {
    perder();
    exit;
}

var total_modulos = instance_number(objControleFio)
                  + instance_number(objControleNum)
                  + instance_number(objControleQuestoes)
                  + instance_number(objControleSom)
                  + instance_number(objControleUnder)
                  + instance_number(objControleJoken);

var completos = 0;
var perdeu_flag = false;

with (objControleFio) {
    if (erro) perdeu_flag = true;
    if (resolvido) completos++;
}

with (objControleNum) {
    if (resolvido) completos++;
}

with (objControleQuestoes) {
    if (resolvido) completos++;
}

with (objControleSom) {
    if (resolvido) completos++;
}

with (objControleUnder) {
    if (resolvido) completos++;
}

with (objControleJoken) {
    if (resolvido) completos++;
}

if (perdeu_flag && estado == "jogando") {
    perder();
    exit;
}

if (completos == total_modulos && total_modulos > 0 && estado == "jogando") {
    ganhar();
    exit;
}

if (estado == "explodindo") {
    if (!explosao_playing) {
        var boom = instance_create_layer(room_width/2, room_height/2, "so_aTampa", objExplosao);
        boom.sprite_index = sprBoom;
        boom.image_speed = 0.5;
        audio_play_sound(sndBoom, 1, false);
        explosao_playing = true;
    }
}
