if (!chegou)
{
    x += vel;

    if (x >= destino_x)
    {
        x = destino_x;
        chegou = true;
    }
}

// Garante que a música esteja tocando
if (!audio_is_playing(musica))
{
    musica = audio_play_sound(snd_musica_gameplay, 1, true);
}

var porcentagem = (global.tempo / tempo_max) * 100;

if (porcentagem > 66)
{
    image_index = 0;
    audio_sound_pitch(musica, 1);
}
else if (porcentagem > 33)
{
    image_index = 1;
    audio_sound_pitch(musica, 1.25);
}
else
{
    image_index = 2;
    audio_sound_pitch(musica, 1.50);
}